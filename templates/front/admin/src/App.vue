<template>
  <div id="app" class="">
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: "app",
};
</script>

<style lang="scss">
*{
  padding: 0;
  margin:0;
  box-sizing: border-box;
}
html,body{
  width: 100%;
  height: 100%;
}
#app{
  height:100%;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: rgba(0,0,0,0.65);
  background: #f0f2f5;
  min-height: 100vh;
}
body {
  padding: 0;
  margin: 0;
  
}

.el-button {
  &--primary {
    background: linear-gradient(90deg, #1890ff, #096dd9);
    border: none;
    
    &:hover, &:focus {
      background: linear-gradient(90deg, #40a9ff, #1890ff);
      border: none;
    }
  }
  
  &--success {
    background: linear-gradient(90deg, #52c41a, #389e0d);
    border: none;
    
    &:hover, &:focus {
      background: linear-gradient(90deg, #73d13d, #52c41a);
      border: none;
    }
  }
  
  &--danger {
    background: linear-gradient(90deg, #f5222d, #cf1322);
    border: none;
    
    &:hover, &:focus {
      background: linear-gradient(90deg, #ff4d4f, #f5222d);
      border: none;
    }
  }
}

.el-table {
  th {
    background: #fafafa;
    color: rgba(0,0,0,0.85);
    font-weight: 500;
  }
  
  td {
    color: rgba(0,0,0,0.65);
  }
}

.el-form {
  .el-form-item {
    .el-form-item__label {
      color: rgba(0,0,0,0.85);
      font-weight: normal;
    }
    
    .el-input__inner {
      border: 1px solid #dcdfe6;
      
      &:hover {
        border-color: #40a9ff;
      }
      
      &:focus {
        border-color: #1890ff;
        box-shadow: 0 0 0 2px rgba(24,144,255,0.2);
      }
    }
  }
}

.el-pagination {
  .el-pagination__total,
  .el-pagination__jump {
    color: rgba(0,0,0,0.65);
  }
  
  .btn-prev,
  .btn-next,
  .el-pager li {
    background: transparent;
    border: 1px solid #d9d9d9;
    
    &:hover {
      color: #1890ff;
      border-color: #1890ff;
    }
    
    &.active {
      background: #1890ff;
      border-color: #1890ff;
      color: #fff;
    }
  }
}

.el-dialog {
  border-radius: 8px;
  
  .el-dialog__header {
    padding: 16px 24px;
    border-bottom: 1px solid #f0f0f0;
    
    .el-dialog__title {
      color: rgba(0,0,0,0.85);
      font-weight: 500;
    }
  }
  
  .el-dialog__body {
    padding: 24px;
  }
  
  .el-dialog__footer {
    padding: 10px 24px;
    border-top: 1px solid #f0f0f0;
  }
}
</style>
