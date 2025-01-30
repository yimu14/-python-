<template>
  <div class="error-page">
    <div class="error-content">
      <img class="backgroud" src="@/assets/img/404.png" alt>
      <div class="text main-text">出错了...页面失踪了</div>
      <div>
        <el-button class="text" @click="back()" type="text" icon="el-icon-back">返回</el-button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    back() {
      window.history.length > 1 ? this.$router.go(-1) : this.$router.push("/");
    }
  }
};
</script>

<style lang="scss" scoped>
.error-page {
  background: #f0f2f5;
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;

  .error-content {
    text-align: center;
    
    .error-code {
      font-size: 120px;
      color: #1890ff;
      font-weight: bold;
      line-height: 1;
      margin-bottom: 24px;
    }

    .error-desc {
      font-size: 24px;
      color: rgba(0,0,0,0.85);
      margin-bottom: 16px;
    }

    .error-action {
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
      }
    }
  }
}
</style>

