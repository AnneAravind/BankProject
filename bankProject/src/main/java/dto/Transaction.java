package dto;

import java.time.LocalDateTime;
public class Transaction {
	private int id;
    private long senderAccoNo;
    private long receiverAccoNo;
    private double amount;
    private String senderType;  // Use "DEBIT" or "CREDIT"
    private String receverType;  // Use "DEBIT" or "CREDIT"
    private LocalDateTime transactionDate;
    
    
	public Transaction(int id, long senderAccoNo, long receiverAccoNo, double amount, String senderType,
			String receverType, LocalDateTime transactionDate) {
		super();
		this.id = id;
		this.senderAccoNo = senderAccoNo;
		this.receiverAccoNo = receiverAccoNo;
		this.amount = amount;
		this.senderType = senderType;
		this.receverType = receverType;
		this.transactionDate = transactionDate;
	}
	
	public Transaction() {
		super();
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public long getSenderAccoNo() {
		return senderAccoNo;
	}
	public void setSenderAccoNo(long senderAccoNo) {
		this.senderAccoNo = senderAccoNo;
	}
	public long getReceiverAccoNo() {
		return receiverAccoNo;
	}
	public void setReceiverAccoNo(long receiverAccoNo) {
		this.receiverAccoNo = receiverAccoNo;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getSenderType() {
		return senderType;
	}
	public void setSenderType(String senderType) {
		this.senderType = senderType;
	}
	public String getReceverType() {
		return receverType;
	}
	public void setReceverType(String receverType) {
		this.receverType = receverType;
	}
	public LocalDateTime getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(LocalDateTime transactionDate) {
		this.transactionDate = transactionDate;
	}

	@Override
	public String toString() {
		return "Transaction [id=" + id + ", senderAccoNo=" + senderAccoNo + ", receiverAccoNo=" + receiverAccoNo
				+ ", amount=" + amount + ", senderType=" + senderType + ", receverType=" + receverType
				+ ", transactionDate=" + transactionDate + "]";
	}
	
	
    
    

    
	

}
