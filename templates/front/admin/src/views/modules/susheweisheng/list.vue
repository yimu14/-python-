<template>
	<div class="main-content">
		<!-- 列表页 -->
		<template v-if="showFlag">
			<el-form class="center-form-pv" :style='{"margin":"0 0 30px"}' :inline="true" :model="searchForm">
				<el-row :style='{"padding":"10px","borderRadius":"3px","background":"#fff","display":"block"}' >
					<div :style='{"margin":"0 10px 0 0","display":"inline-block"}' class="select" label="宿舍号" prop="sushehao">
						<label :style='{"margin":"0 10px 0 0","color":"#666","display":"inline-block","lineHeight":"40px","fontSize":"14px","fontWeight":"500","height":"40px"}' class="item-label">宿舍号</label>
						<el-select  @change="sushehaoChange" clearable v-model="searchForm.sushehao" placeholder="请选择宿舍号">
							<el-option v-for="(item,index) in sushehaoOptions" v-bind:key="index" :label="item" :value="item"></el-option>
						</el-select>
					</div>
					<div :style='{"margin":"0 10px 0 0","display":"inline-block"}' class="select" label="卫生情况" prop="weishengqingkuang">
						<label :style='{"margin":"0 10px 0 0","color":"#666","display":"inline-block","lineHeight":"40px","fontSize":"14px","fontWeight":"500","height":"40px"}' class="item-label">卫生情况</label>
						<el-select  @change="weishengqingkuangChange" clearable v-model="searchForm.weishengqingkuang" placeholder="请选择卫生情况">
							<el-option v-for="(item,index) in weishengqingkuangOptions" v-bind:key="index" :label="item" :value="item"></el-option>
						</el-select>
					</div>
					<div :style='{"margin":"0 10px 0 0","display":"inline-block"}'>
						<label :style='{"margin":"0 10px 0 0","color":"#666","display":"inline-block","lineHeight":"40px","fontSize":"14px","fontWeight":"500","height":"40px"}' class="item-label">检查日期</label>
						<el-date-picker v-model="searchForm.jianchariqistart" type="date" value-format="yyyy-MM-dd" format="yyyy-MM-dd" placeholder="检查日期起始"></el-date-picker>
						至
						<el-date-picker v-model="searchForm.jianchariqiend" type="date" value-format="yyyy-MM-dd" format="yyyy-MM-dd" placeholder="检查日期结束"></el-date-picker>
					</div>
					<el-button :style='{"border":"1px solid #5494cb","cursor":"pointer","padding":"0 34px","outline":"none","margin":"0 0px 0 10px","color":"#fff","borderRadius":"4px","background":"-webkit-linear-gradient(top,#66a4d8,#337ab7)","width":"auto","fontSize":"14px","height":"40px"}' type="success" @click="search()">查询</el-button>
				</el-row>

				<el-row :style='{"margin":"20px 0 20px 0","display":"flex"}'>
					<el-button :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"0 10px 0 0","outline":"none","color":"#fff","borderRadius":"4px","background":"rgba(64, 158, 255, 1)","width":"auto","fontSize":"14px","height":"40px"}' v-if="isAuth('susheweisheng','新增')" type="success" @click="addOrUpdateHandler()">新增</el-button>
					<el-button :style='{"border":"0","cursor":"pointer","padding":"0 24px","margin":"0 10px 0 0","outline":"none","color":"#fff","borderRadius":"4px","background":"rgba(255, 0, 0, 1)","width":"auto","fontSize":"14px","height":"40px"}' v-if="isAuth('susheweisheng','删除')" :disabled="dataListSelections.length <= 0" type="danger" @click="deleteHandler()">删除</el-button>




				</el-row>
			</el-form>
			
			<!-- <div> -->
				<el-table class="tables"
					:stripe='false'
					:style='{"padding":"0","borderColor":"#eee","borderRadius":"5px","borderWidth":"1px 0 0 1px","background":"#fff","width":"100%","borderStyle":"solid"}' 
					v-if="isAuth('susheweisheng','查看')"
					:data="dataList"
					v-loading="dataListLoading"
				@selection-change="selectionChangeHandler">
					<el-table-column :resizable='true' type="selection" align="center" width="50"></el-table-column>
					<el-table-column :resizable='true' :sortable='false' label="索引" type="index" width="50" />
					<el-table-column :resizable='true' :sortable='false'  
						prop="sushehao"
					label="宿舍号">
						<template slot-scope="scope">
							{{scope.row.sushehao}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="susheleixing"
					label="宿舍类型">
						<template slot-scope="scope">
							{{scope.row.susheleixing}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false' prop="fengmian" width="200" label="封面">
						<template slot-scope="scope">
							<div v-if="scope.row.fengmian">
								<img v-if="scope.row.fengmian.substring(0,4)=='http'" :src="scope.row.fengmian.split(',')[0]" width="100" height="100">
								<img v-else :src="$base.url+scope.row.fengmian.split(',')[0]" width="100" height="100">
							</div>
							<div v-else>无图片</div>
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="weishengqingkuang"
					label="卫生情况">
						<template slot-scope="scope">
							{{scope.row.weishengqingkuang}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="weishengpingfen"
					label="卫生评分">
						<template slot-scope="scope">
							{{scope.row.weishengpingfen}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="jianchariqi"
					label="检查日期">
						<template slot-scope="scope">
							{{scope.row.jianchariqi}}
						</template>
					</el-table-column>
					<el-table-column :resizable='true' :sortable='false'  
						prop="jiancharen"
					label="检查人">
						<template slot-scope="scope">
							{{scope.row.jiancharen}}
						</template>
					</el-table-column>
					<el-table-column width="300" label="操作">
						<template slot-scope="scope">
							<el-button :style='{"border":"1px solid #3ca512","cursor":"pointer","padding":"0 10px 0 24px","margin":"3px 6px 3px 0","outline":"none","color":"#fff","borderRadius":"4px","background":"url(http://codegen.caihongy.cn/20221011/ca1c191554d24b108bc94f4a2046d636.png) #41b314 no-repeat 5px 8px","width":"auto","fontSize":"12px","height":"32px"}' v-if=" isAuth('susheweisheng','查看')" type="success" size="mini" @click="addOrUpdateHandler(scope.row.id,'info')">详情</el-button>
							<el-button :style='{"border":"1px solid #00a0f0","cursor":"pointer","padding":"0 10px 0 24px","margin":"3px 6px 3px 0","outline":"none","color":"#fff","borderRadius":"4px","background":"url(http://codegen.caihongy.cn/20221011/161eb7a46f5d4cd19d68a1386174d662.png) #00aaff no-repeat 5px 8px","width":"auto","fontSize":"12px","height":"32px"}' v-if=" isAuth('susheweisheng','修改')" type="primary" size="mini" @click="addOrUpdateHandler(scope.row.id)">修改</el-button>





							<el-button :style='{"border":"0","cursor":"pointer","padding":"0 10px 0 24px","margin":"3px 6px 3px 0","outline":"none","color":"#fff","borderRadius":"4px","background":"url(http://codegen.caihongy.cn/20221011/68bd264a8e4341c6aa5409f871d590d0.png) #d9534f no-repeat 5px 8px","width":"auto","fontSize":"14px","height":"32px"}' v-if="isAuth('susheweisheng','删除') " type="danger" size="mini" @click="deleteHandler(scope.row.id)">删除</el-button>
						</template>
					</el-table-column>
				</el-table>
				<el-pagination
					@size-change="sizeChangeHandle"
					@current-change="currentChangeHandle"
					:current-page="pageIndex"
					background
					:page-sizes="[10, 20, 30, 50]"
					:page-size="pageSize"
					:layout="layouts.join()"
					:total="totalPage"
					prev-text="<"
					next-text=">"
					:hide-on-single-page="true"
					:style='{"width":"100%","padding":"0","margin":"20px 0 0","whiteSpace":"nowrap","color":"#333","fontWeight":"500"}'
				></el-pagination>
			<!-- </div> -->
		</template>
		
		<!-- 添加/修改页面  将父组件的search方法传递给子组件-->
		<add-or-update v-if="addOrUpdateFlag" :parent="this" ref="addOrUpdate"></add-or-update>





	</div>
</template>

<script>
import axios from 'axios'
import AddOrUpdate from "./add-or-update";
export default {
  data() {
    return {
      sushehaoOptions: [],
      searchForm: {
        key: ""
      },
      form:{},
      dataList: [],
      pageIndex: 1,
      pageSize: 10,
      totalPage: 0,
      dataListLoading: false,
      dataListSelections: [],
      showFlag: true,
      sfshVisiable: false,
      shForm: {},
      chartVisiable: false,
      chartVisiable1: false,
      chartVisiable2: false,
      chartVisiable3: false,
      chartVisiable4: false,
      chartVisiable5: false,
      addOrUpdateFlag:false,
      layouts: ["total","prev","pager","next","sizes","jumper"],

    };
  },
  created() {
    this.init();
    this.getDataList();
    this.contentStyleChange()
  },
  mounted() {
  },
  filters: {
    htmlfilter: function (val) {
      return val.replace(/<[^>]*>/g).replace(/undefined/g,'');
    }
  },
  components: {
    AddOrUpdate,
  },
  methods: {

    contentStyleChange() {
      this.contentPageStyleChange()
    },
    // 分页
    contentPageStyleChange(){
      let arr = []

      // if(this.contents.pageTotal) arr.push('total')
      // if(this.contents.pageSizes) arr.push('sizes')
      // if(this.contents.pagePrevNext){
      //   arr.push('prev')
      //   if(this.contents.pagePager) arr.push('pager')
      //   arr.push('next')
      // }
      // if(this.contents.pageJumper) arr.push('jumper')
      // this.layouts = arr.join()
      // this.contents.pageEachNum = 10
    },








    init () {
          this.$http({
            url: `option/qinshixinxi/sushehao`,
            method: "get"
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.sushehaoOptions = data.data;
            } else {
              this.$message.error(data.msg);
            }
          });
          this.weishengqingkuangOptions = "已打扫,未打扫".split(',')
    },
    search() {
      this.pageIndex = 1;
      this.getDataList();
    },

    // 获取数据列表
    getDataList() {
      this.dataListLoading = true;
      let params = {
        page: this.pageIndex,
        limit: this.pageSize,
        sort: 'id',
        order: 'desc',
      }
           if(this.searchForm.sushehao!='' && this.searchForm.sushehao!=undefined){
            params['sushehao'] = this.searchForm.sushehao
          }
           if(this.searchForm.weishengqingkuang!='' && this.searchForm.weishengqingkuang!=undefined){
            params['weishengqingkuang'] = this.searchForm.weishengqingkuang
          }
           if(this.searchForm.jianchariqistart!='' && this.searchForm.jianchariqistart!=undefined ){
            params['jianchariqistart'] = this.searchForm.jianchariqistart
          }
          if(this.searchForm.jianchariqiend!='' && this.searchForm.jianchariqiend!=undefined){
            params['jianchariqiend'] = this.searchForm.jianchariqiend
          }
      this.$http({
        url: "susheweisheng/page",
        method: "get",
        params: params
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.dataList = data.data.list;
          this.totalPage = data.data.total;
        } else {
          this.dataList = [];
          this.totalPage = 0;
        }
        this.dataListLoading = false;
      });
    },
    // 每页数
    sizeChangeHandle(val) {
      this.pageSize = val;
      this.pageIndex = 1;
      this.getDataList();
    },
    // 当前页
    currentChangeHandle(val) {
      this.pageIndex = val;
      this.getDataList();
    },
    // 多选
    selectionChangeHandler(val) {
      this.dataListSelections = val;
    },
    // 添加/修改
    addOrUpdateHandler(id,type) {
      this.showFlag = false;
      this.addOrUpdateFlag = true;
      this.crossAddOrUpdateFlag = false;
      if(type!='info'){
        type = 'else';
      }
      this.$nextTick(() => {
        this.$refs.addOrUpdate.init(id,type);
      });
    },
    // 下载
    download(file){
      window.open(`${file}`)
    },
    // 删除
    deleteHandler(id) {
      var ids = id
        ? [Number(id)]
        : this.dataListSelections.map(item => {
            return Number(item.id);
          });
      this.$confirm(`确定进行[${id ? "删除" : "批量删除"}]操作?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(() => {
        this.$http({
          url: "susheweisheng/delete",
          method: "post",
          data: ids
        }).then(({ data }) => {
          if (data && data.code === 0) {
            this.$message({
              message: "操作成功",
              type: "success",
              duration: 1500,
              onClose: () => {
                this.search();
              }
            });
          } else {
            this.$message.error(data.msg);
          }
        });
      });
    },


  }

};
</script>
<style lang="scss" scoped>
.main-content {
  padding: 20px;
  background: #f0f2f5;
  min-height: calc(100vh - 120px);

  .center-form-pv {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 12px 0 rgba(0,0,0,0.1);
    
    .el-row {
      padding: 10px;
      background: #fff;
      border-radius: 4px;
      
      .item-label {
        margin: 0 10px 0 0;
        color: rgba(0,0,0,0.65);
        font-size: 14px;
      }
      
      .el-input {
        .el-input__inner {
          border: 1px solid #dcdfe6;
          border-radius: 4px;
          &:focus {
            border-color: #1890ff;
          }
        }
      }
      
      .el-button {
        margin: 0 10px;
        padding: 0 20px;
        
        &[type="success"] {
          background: linear-gradient(90deg, #1890ff, #096dd9);
          border: none;
        }
        
        &[type="danger"] {
          background: #f5222d;
          border: none;
        }
      }
    }
  }

  .tables {
    margin-top: 20px;
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 12px 0 rgba(0,0,0,0.1);
    
    .el-table {
      border: 1px solid #ebeef5;
      
      th {
        background-color: #fafafa;
        color: rgba(0,0,0,0.85);
      }
      
      td {
        color: rgba(0,0,0,0.65);
      }
    }
  }

  .el-pagination {
    margin-top: 20px;
    padding: 20px;
    text-align: right;
    
    /deep/ .el-pagination__total {
      color: rgba(0,0,0,0.65);
    }
    
    /deep/ .el-pagination__jump {
      color: rgba(0,0,0,0.65);
      
      .el-input__inner {
        border: 1px solid #dcdfe6;
        border-radius: 4px;
        &:focus {
          border-color: #1890ff;
        }
      }
    }
  }
}
</style>
