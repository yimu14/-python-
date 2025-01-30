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
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="select" v-if="type!='info'" label="学号" prop="xuehao">
					<el-select :disabled="ro.xuehao" @change="xuehaoChange" v-model="ruleForm.xuehao" placeholder="请选择学号">
						<el-option
							v-for="(item,index) in xuehaoOptions"
							v-bind:key="index"
							:label="item"
							:value="item">
						</el-option>
					</el-select>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-else-if="ruleForm.xuehao" label="学号" prop="xuehao">
					<el-input v-model="ruleForm.xuehao" placeholder="学号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="姓名" prop="xingming">
					<el-input v-model="ruleForm.xingming" placeholder="姓名" clearable  :readonly="ro.xingming"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' v-else class="input" label="姓名" prop="xingming">
					<el-input v-model="ruleForm.xingming" placeholder="姓名" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="院系" prop="yuanxi">
					<el-input v-model="ruleForm.yuanxi" placeholder="院系" clearable  :readonly="ro.yuanxi"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' v-else class="input" label="院系" prop="yuanxi">
					<el-input v-model="ruleForm.yuanxi" placeholder="院系" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="班级" prop="banji">
					<el-input v-model="ruleForm.banji" placeholder="班级" clearable  :readonly="ro.banji"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' v-else class="input" label="班级" prop="banji">
					<el-input v-model="ruleForm.banji" placeholder="班级" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="宿舍号" prop="sushehao">
					<el-input v-model="ruleForm.sushehao" placeholder="宿舍号" clearable  :readonly="ro.sushehao"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' v-else class="input" label="宿舍号" prop="sushehao">
					<el-input v-model="ruleForm.sushehao" placeholder="宿舍号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="床位号" prop="chuangweihao">
					<el-input v-model="ruleForm.chuangweihao" placeholder="床位号" clearable  :readonly="ro.chuangweihao"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' v-else class="input" label="床位号" prop="chuangweihao">
					<el-input v-model="ruleForm.chuangweihao" placeholder="床位号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="date" v-if="type!='info'" label="晚归时间" prop="wanguishijian">
					<el-date-picker
						value-format="yyyy-MM-dd HH:mm:ss"
						v-model="ruleForm.wanguishijian" 
						type="datetime"
						:readonly="ro.wanguishijian"
						placeholder="晚归时间"
					></el-date-picker>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-else-if="ruleForm.wanguishijian" label="晚归时间" prop="wanguishijian">
					<el-input v-model="ruleForm.wanguishijian" placeholder="晚归时间" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="登记人" prop="dengjiren">
					<el-input v-model="ruleForm.dengjiren" placeholder="登记人" clearable  :readonly="ro.dengjiren"></el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' v-else class="input" label="登记人" prop="dengjiren">
					<el-input v-model="ruleForm.dengjiren" placeholder="登记人" readonly></el-input>
				</el-form-item>
			</template>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="textarea" v-if="type!='info'" label="晚归原因" prop="wanguiyuanyin">
					<el-input
					  style="min-width: 200px; max-width: 600px;"
					  type="textarea"
					  :rows="8"
					  placeholder="晚归原因"
					  v-model="ruleForm.wanguiyuanyin" >
					</el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' v-else-if="ruleForm.wanguiyuanyin" label="晚归原因" prop="wanguiyuanyin">
					<span :style='{"fontSize":"14px","lineHeight":"40px","color":"#333","fontWeight":"500","display":"inline-block"}'>{{ruleForm.wanguiyuanyin}}</span>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' class="textarea" v-if="type!='info'" label="处理措施" prop="chulicuoshi">
					<el-input
					  style="min-width: 200px; max-width: 600px;"
					  type="textarea"
					  :rows="8"
					  placeholder="处理措施"
					  v-model="ruleForm.chulicuoshi" >
					</el-input>
				</el-form-item>
				<el-form-item :style='{"margin":"0 0 20px 0"}' v-else-if="ruleForm.chulicuoshi" label="处理措施" prop="chulicuoshi">
					<span :style='{"fontSize":"14px","lineHeight":"40px","color":"#333","fontWeight":"500","display":"inline-block"}'>{{ruleForm.chulicuoshi}}</span>
				</el-form-item>
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
				xuehao : false,
				xingming : false,
				yuanxi : false,
				banji : false,
				sushehao : false,
				chuangweihao : false,
				wanguiyuanyin : false,
				wanguishijian : false,
				chulicuoshi : false,
				dengjiren : false,
			},
			
			
			ruleForm: {
				xuehao: '',
				xingming: '',
				yuanxi: '',
				banji: '',
				sushehao: '',
				chuangweihao: '',
				wanguiyuanyin: '',
				wanguishijian: '',
				chulicuoshi: '',
				dengjiren: '',
			},
		
			xuehaoOptions: [],
			
			rules: {
				xuehao: [
				],
				xingming: [
				],
				yuanxi: [
				],
				banji: [
				],
				sushehao: [
				],
				chuangweihao: [
				],
				wanguiyuanyin: [
				],
				wanguishijian: [
				],
				chulicuoshi: [
				],
				dengjiren: [
					{ required: true, message: '登记人不能为空', trigger: 'blur' },
				],
			}
		};
	},
	props: ["parent"],
	computed: {



	},
	created() {
		this.ruleForm.wanguishijian = this.getCurDateTime()
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
						if(o=='xuehao'){
							this.ruleForm.xuehao = obj[o];
							this.ro.xuehao = true;
							continue;
						}
						if(o=='xingming'){
							this.ruleForm.xingming = obj[o];
							this.ro.xingming = true;
							continue;
						}
						if(o=='yuanxi'){
							this.ruleForm.yuanxi = obj[o];
							this.ro.yuanxi = true;
							continue;
						}
						if(o=='banji'){
							this.ruleForm.banji = obj[o];
							this.ro.banji = true;
							continue;
						}
						if(o=='sushehao'){
							this.ruleForm.sushehao = obj[o];
							this.ro.sushehao = true;
							continue;
						}
						if(o=='chuangweihao'){
							this.ruleForm.chuangweihao = obj[o];
							this.ro.chuangweihao = true;
							continue;
						}
						if(o=='wanguiyuanyin'){
							this.ruleForm.wanguiyuanyin = obj[o];
							this.ro.wanguiyuanyin = true;
							continue;
						}
						if(o=='wanguishijian'){
							this.ruleForm.wanguishijian = obj[o];
							this.ro.wanguishijian = true;
							continue;
						}
						if(o=='chulicuoshi'){
							this.ruleForm.chulicuoshi = obj[o];
							this.ro.chulicuoshi = true;
							continue;
						}
						if(o=='dengjiren'){
							this.ruleForm.dengjiren = obj[o];
							this.ro.dengjiren = true;
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
				url: `option/ruzhudengji/xuehao`,
				method: "get"
            }).then(({ data }) => {
				if (data && data.code === 0) {
					this.xuehaoOptions = data.data;
				} else {
					this.$message.error(data.msg);
				}
            });
			
		},
			// 下二随
			xuehaoChange () {
				this.$http({
					url: `follow/ruzhudengji/xuehao?columnValue=`+ this.ruleForm.xuehao,
					method: "get"
				}).then(({ data }) => {
					if (data && data.code === 0) {
						if(data.data.xingming){
							this.ruleForm.xingming = data.data.xingming
						}
						if(data.data.yuanxi){
							this.ruleForm.yuanxi = data.data.yuanxi
						}
						if(data.data.banji){
							this.ruleForm.banji = data.data.banji
						}
						if(data.data.sushehao){
							this.ruleForm.sushehao = data.data.sushehao
						}
						if(data.data.chuangweihao){
							this.ruleForm.chuangweihao = data.data.chuangweihao
						}
					} else {
						this.$message.error(data.msg);
					}
				});
			},
    // 多级联动参数

    info(id) {
      this.$http({
        url: `wanguidengji/info/${id}`,
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
				url: "wanguidengji/page", 
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
					   url: `wanguidengji/${!this.ruleForm.id ? "save" : "update"}`,
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
						 this.parent.wanguidengjiCrossAddOrUpdateFlag = false;
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
			   url: `wanguidengji/${!this.ruleForm.id ? "save" : "update"}`,
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
				 this.parent.wanguidengjiCrossAddOrUpdateFlag = false;
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
      this.parent.wanguidengjiCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
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
