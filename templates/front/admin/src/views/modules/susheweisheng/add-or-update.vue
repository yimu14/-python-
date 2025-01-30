<template>
	<div class="addEdit-block" style="width: 100%;">
		<el-form
			:style='{"border":"1px solid #ddd","padding":"30px","boxShadow":"0 0px 0px #ddd","borderRadius":"5px","background":"#ffffff"}'
			class="add-update-preview"
			ref="ruleForm"
			:model="ruleForm"
			:rules="rules"
			label-width="80px"
		>
			<template >
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="select" v-if="type!='info'" label="宿舍号" prop="sushehao">
					<el-select :disabled="ro.sushehao" @change="sushehaoChange" v-model="ruleForm.sushehao" placeholder="请选择宿舍号">
						<el-option
							v-for="(item,index) in sushehaoOptions"
							v-bind:key="index"
							:label="item"
							:value="item">
						</el-option>
					</el-select>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-else-if="ruleForm.sushehao" label="宿舍号" prop="sushehao">
					<el-input v-model="ruleForm.sushehao" placeholder="宿舍号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="宿舍类型" prop="susheleixing">
					<el-input v-model="ruleForm.susheleixing" placeholder="宿舍类型" clearable  :readonly="ro.susheleixing"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' v-else class="input" label="宿舍类型" prop="susheleixing">
					<el-input v-model="ruleForm.susheleixing" placeholder="宿舍类型" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="upload" v-if="type!='info' && !ro.fengmian" label="封面" prop="fengmian">
					<file-upload
						tip="点击上传封面"
						action="file/upload"
						:limit="3"
						:multiple="true"
						:fileUrls="ruleForm.fengmian?ruleForm.fengmian:''"
						@change="fengmianUploadChange"
					></file-upload>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="upload" v-else-if="ruleForm.fengmian" label="封面" prop="fengmian">
					<img v-if="ruleForm.fengmian.substring(0,4)=='http'" class="upload-img" style="margin-right:20px;" v-bind:key="index" :src="ruleForm.fengmian.split(',')[0]" width="100" height="100">
					<img v-else class="upload-img" style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.fengmian.split(',')" :src="$base.url+item" width="100" height="100">
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="select" v-if="type!='info'"  label="卫生情况" prop="weishengqingkuang">
					<el-select :disabled="ro.weishengqingkuang" v-model="ruleForm.weishengqingkuang" placeholder="请选择卫生情况" >
						<el-option
							v-for="(item,index) in weishengqingkuangOptions"
							v-bind:key="index"
							:label="item"
							:value="item">
						</el-option>
					</el-select>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' v-else class="input" label="卫生情况" prop="weishengqingkuang">
					<el-input v-model="ruleForm.weishengqingkuang"
						placeholder="卫生情况" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="卫生评分" prop="weishengpingfen">
					<el-input v-model="ruleForm.weishengpingfen" placeholder="卫生评分" clearable  :readonly="ro.weishengpingfen"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' v-else class="input" label="卫生评分" prop="weishengpingfen">
					<el-input v-model="ruleForm.weishengpingfen" placeholder="卫生评分" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="date" v-if="type!='info'" label="检查日期" prop="jianchariqi">
					<el-date-picker
						format="yyyy 年 MM 月 dd 日"
						value-format="yyyy-MM-dd"
						v-model="ruleForm.jianchariqi" 
						type="date"
						:readonly="ro.jianchariqi"
						placeholder="检查日期"
					></el-date-picker> 
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-else-if="ruleForm.jianchariqi" label="检查日期" prop="jianchariqi">
					<el-input v-model="ruleForm.jianchariqi" placeholder="检查日期" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="检查人" prop="jiancharen">
					<el-input v-model="ruleForm.jiancharen" placeholder="检查人" clearable  :readonly="ro.jiancharen"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' v-else class="input" label="检查人" prop="jiancharen">
					<el-input v-model="ruleForm.jiancharen" placeholder="检查人" readonly></el-input>
				</el-form-item>
			</template>
			<el-form-item :style='{"padding":"0","margin":"0"}' class="btn">
				<el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"4px","background":"#337ab7","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}'  v-if="type!='info'" type="primary" class="btn-success" @click="onSubmit">提交</el-button>
				<el-button :style='{"border":"1px solid #1b5a90","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"#1b5a90","borderRadius":"4px","background":"rgba(255, 255, 255, 1)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' v-if="type!='info'" class="btn-close" @click="back()">取消</el-button>
				<el-button :style='{"border":"1px solid #1b5a90","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"#1b5a90","borderRadius":"4px","background":"rgba(255, 255, 255, 1)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' v-if="type=='info'" class="btn-close" @click="back()">返回</el-button>
			</el-form-item>
		</el-form>
    

  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isPhone, isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
	data() {
		let self = this
		var validateIdCard = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!checkIdCard(value)) {
				callback(new Error("请输入正确的身份证号码"));
			} else {
				callback();
			}
		};
		var validateUrl = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isURL(value)) {
				callback(new Error("请输入正确的URL地址"));
			} else {
				callback();
			}
		};
		var validateMobile = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isMobile(value)) {
				callback(new Error("请输入正确的手机号码"));
			} else {
				callback();
			}
		};
		var validatePhone = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isPhone(value)) {
				callback(new Error("请输入正确的电话号码"));
			} else {
				callback();
			}
		};
		var validateEmail = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isEmail(value)) {
				callback(new Error("请输入正确的邮箱地址"));
			} else {
				callback();
			}
		};
		var validateNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isNumber(value)) {
				callback(new Error("请输入数字"));
			} else {
				callback();
			}
		};
		var validateIntNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isIntNumer(value)) {
				callback(new Error("请输入整数"));
			} else {
				callback();
			}
		};
		return {
			id: '',
			type: '',
			
			
			ro:{
				sushehao : false,
				susheleixing : false,
				fengmian : false,
				weishengqingkuang : false,
				weishengpingfen : false,
				jianchariqi : false,
				jiancharen : false,
			},
			
			
			ruleForm: {
				sushehao: '',
				susheleixing: '',
				fengmian: '',
				weishengqingkuang: '',
				weishengpingfen: '',
				jianchariqi: '',
				jiancharen: '',
			},
		
			sushehaoOptions: [],
			weishengqingkuangOptions: [],
			
			rules: {
				sushehao: [
					{ required: true, message: '宿舍号不能为空', trigger: 'blur' },
				],
				susheleixing: [
				],
				fengmian: [
				],
				weishengqingkuang: [
					{ required: true, message: '卫生情况不能为空', trigger: 'blur' },
				],
				weishengpingfen: [
					{ required: true, message: '卫生评分不能为空', trigger: 'blur' },
					{ validator: validateNumber, trigger: 'blur' },
				],
				jianchariqi: [
				],
				jiancharen: [
					{ required: true, message: '检查人不能为空', trigger: 'blur' },
				],
			}
		};
	},
	props: ["parent"],
	computed: {



	},
	created() {
		this.ruleForm.jianchariqi = this.getCurDate()
	},
	methods: {
		
		// 下载
		download(file){
			window.open(`${file}`)
		},
		// 初始化
		init(id,type) {
			if (id) {
				this.id = id;
				this.type = type;
			}
			if(this.type=='info'||this.type=='else'){
				this.info(id);
			}else if(this.type=='logistics'){
				this.logistics=false;
				this.info(id);
			}else if(this.type=='cross'){
				var obj = this.$storage.getObj('crossObj');
				for (var o in obj){
						if(o=='sushehao'){
							this.ruleForm.sushehao = obj[o];
							this.ro.sushehao = true;
							continue;
						}
						if(o=='susheleixing'){
							this.ruleForm.susheleixing = obj[o];
							this.ro.susheleixing = true;
							continue;
						}
						if(o=='fengmian'){
							this.ruleForm.fengmian = obj[o];
							this.ro.fengmian = true;
							continue;
						}
						if(o=='weishengqingkuang'){
							this.ruleForm.weishengqingkuang = obj[o];
							this.ro.weishengqingkuang = true;
							continue;
						}
						if(o=='weishengpingfen'){
							this.ruleForm.weishengpingfen = obj[o];
							this.ro.weishengpingfen = true;
							continue;
						}
						if(o=='jianchariqi'){
							this.ruleForm.jianchariqi = obj[o];
							this.ro.jianchariqi = true;
							continue;
						}
						if(o=='jiancharen'){
							this.ruleForm.jiancharen = obj[o];
							this.ro.jiancharen = true;
							continue;
						}
				}
				







			}
			
			
			// 获取用户信息
			this.$http({
				url: `${this.$storage.get('sessionTable')}/session`,
				method: "get"
			}).then(({ data }) => {
				if (data && data.code === 0) {
					
					var json = data.data;
				} else {
					this.$message.error(data.msg);
				}
			});
			
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
			// 下二随
			sushehaoChange () {
				this.$http({
					url: `follow/qinshixinxi/sushehao?columnValue=`+ this.ruleForm.sushehao,
					method: "get"
				}).then(({ data }) => {
					if (data && data.code === 0) {
						if(data.data.susheleixing){
							this.ruleForm.susheleixing = data.data.susheleixing
						}
					} else {
						this.$message.error(data.msg);
					}
				});
			},
    // 多级联动参数

    info(id) {
      this.$http({
        url: `susheweisheng/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
        this.ruleForm = data.data;
        //解决前台上传图片后台不显示的问题
        let reg=new RegExp('../../../upload','g')//g代表全部
        } else {
          this.$message.error(data.msg);
        }
      });
    },


    // 提交
    onSubmit() {






	if(this.ruleForm.fengmian!=null) {
		this.ruleForm.fengmian = this.ruleForm.fengmian.replace(new RegExp(this.$base.url,"g"),"");
	}









var objcross = this.$storage.getObj('crossObj');

      //更新跨表属性
       var crossuserid;
       var crossrefid;
       var crossoptnum;
       if(this.type=='cross'){
                var statusColumnName = this.$storage.get('statusColumnName');
                var statusColumnValue = this.$storage.get('statusColumnValue');
                if(statusColumnName!='') {
                        var obj = this.$storage.getObj('crossObj');
                       if(statusColumnName && !statusColumnName.startsWith("[")) {
                               for (var o in obj){
                                 if(o==statusColumnName){
                                   obj[o] = statusColumnValue;
                                 }
                               }
                               var table = this.$storage.get('crossTable');
                             this.$http({
                                 url: `${table}/update`,
                                 method: "post",
                                 data: obj
                               }).then(({ data }) => {});
                       } else {
                               crossuserid=this.$storage.get('userid');
                               crossrefid=obj['id'];
                               crossoptnum=this.$storage.get('statusColumnName');
                               crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                        }
                }
        }
       this.$refs["ruleForm"].validate(valid => {
         if (valid) {
		 if(crossrefid && crossuserid) {
			 this.ruleForm.crossuserid = crossuserid;
			 this.ruleForm.crossrefid = crossrefid;
			let params = { 
				page: 1, 
				limit: 10, 
				crossuserid:this.ruleForm.crossuserid,
				crossrefid:this.ruleForm.crossrefid,
			} 
			this.$http({ 
				url: "susheweisheng/page", 
				method: "get", 
				params: params 
			}).then(({ 
				data 
			}) => { 
				if (data && data.code === 0) { 
				       if(data.data.total>=crossoptnum) {
					     this.$message.error(this.$storage.get('tips'));
					       return false;
				       } else {
					 this.$http({
					   url: `susheweisheng/${!this.ruleForm.id ? "save" : "update"}`,
					   method: "post",
					   data: this.ruleForm
					 }).then(({ data }) => {
					   if (data && data.code === 0) {
					     this.$message({
					       message: "操作成功",
					       type: "success",
					       duration: 1500,
					       onClose: () => {
						 this.parent.showFlag = true;
						 this.parent.addOrUpdateFlag = false;
						 this.parent.susheweishengCrossAddOrUpdateFlag = false;
						 this.parent.search();
						 this.parent.contentStyleChange();
					       }
					     });
					   } else {
					     this.$message.error(data.msg);
					   }
					 });

				       }
				} else { 
				} 
			});
		 } else {
			 this.$http({
			   url: `susheweisheng/${!this.ruleForm.id ? "save" : "update"}`,
			   method: "post",
			   data: this.ruleForm
			 }).then(({ data }) => {
			   if (data && data.code === 0) {
			     this.$message({
			       message: "操作成功",
			       type: "success",
			       duration: 1500,
			       onClose: () => {
				 this.parent.showFlag = true;
				 this.parent.addOrUpdateFlag = false;
				 this.parent.susheweishengCrossAddOrUpdateFlag = false;
				 this.parent.search();
				 this.parent.contentStyleChange();
			       }
			     });
			   } else {
			     this.$message.error(data.msg);
			   }
			 });
		 }
         }
       });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.susheweishengCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
    },
    fengmianUploadChange(fileUrls) {
	    this.ruleForm.fengmian = fileUrls;
    },
  }
};
</script>
<style lang="scss" scoped>
	.amap-wrapper {
		width: 100%;
		height: 500px;
	}
	
	.search-box {
		position: absolute;
	}
	
	.el-date-editor.el-input {
		width: auto;
	}
	
	.addEdit-block {
		padding: 20px;
		background: #f0f2f5;
		min-height: calc(100vh - 120px);

		.add-update-preview {
			background: #fff;
			padding: 30px;
			border-radius: 8px;
			box-shadow: 0 2px 12px 0 rgba(0,0,0,0.1);
			border: none;

			.el-form-item {
				margin-bottom: 22px;
				
				.el-input__inner {
					height: 40px;
					line-height: 40px;
					border: 1px solid #dcdfe6;
					border-radius: 4px;
					padding: 0 15px;
					color: rgba(0,0,0,0.65);
					
					&:focus {
						border-color: #1890ff;
					}
				}
				
				.el-textarea__inner {
					padding: 12px 15px;
					border: 1px solid #dcdfe6;
					border-radius: 4px;
					color: rgba(0,0,0,0.65);
					min-height: 120px;
					
					&:focus {
						border-color: #1890ff;
					}
				}

				.el-upload {
					border: 1px dashed #d9d9d9;
					border-radius: 6px;
					cursor: pointer;
					position: relative;
					overflow: hidden;
					
					&:hover {
						border-color: #1890ff;
					}
					
					.el-icon-plus {
						font-size: 28px;
						color: #8c939d;
						width: 178px;
						height: 178px;
						line-height: 178px;
						text-align: center;
					}
				}
			}

			.btn {
				text-align: center;
				margin-top: 40px;
				
				.el-button {
					padding: 0 35px;
					height: 40px;
					line-height: 40px;
					font-size: 14px;
					
					&[type="primary"] {
						background: linear-gradient(90deg, #1890ff, #096dd9);
						border: none;
						
						&:hover {
							opacity: 0.9;
						}
					}
					
					&.btn-close {
						margin-left: 20px;
						border: 1px solid #dcdfe6;
						color: #606266;
						background: #fff;
						
						&:hover {
							color: #1890ff;
							border-color: #1890ff;
						}
					}
				}
			}
		}
	}
</style>
