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
} 