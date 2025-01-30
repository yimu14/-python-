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
        
        &:focus {
          border-color: #1890ff;
        }
      }
      
      .el-textarea__inner {
        padding: 12px 15px;
        border: 1px solid #dcdfe6;
        border-radius: 4px;
        
        &:focus {
          border-color: #1890ff;
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