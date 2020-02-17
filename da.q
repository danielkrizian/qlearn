rowCount: 100*1000
t: ([] bucket: rowCount?`2; qty: rowCount?100; risk: rowCount?10; weight: rowCount?2.)
select NR: count i,
       TOTAL_QTY: sum qty,
       AVG_QTY: avg qty,
       TOTAL_RISK: sum risk,
       AVG_QTY: avg risk,
       W_AVG_QTY: weight wavg qty,
       W_AVG_RISK: weight wavg risk
  by bucket from t
