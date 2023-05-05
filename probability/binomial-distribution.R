# Hàmnhịphân được phát biểu bằng định lí như sau:Nếu một thử nghiệm được tiến hành n lần,mỗi lần cho ra kết quả hoặc là thành cônghoặc là thất bại, và gồm xác suất thànhcông được biết trước là p, thì xác suất có k lần thử nghiệm thành công là:
dbinom(2, 3, 0.6)

# Cumulative Binomial probability distribution
# Xác suất thuốc chống loãng xương có hiệu nghiệm là khoảng 70% (tức là p = 0.70). Nếu chúng ta điều trị 10 bệnh nhân, xác suất có tối thiểu 8 bệnh nhân với kết quả tích cực là bao nhiêu? Nói cách khác, nếu gọi X là số bệnh nhân được điều trị thành công,chúngtacầntìmP(X≥8)=?
1 - pbinom(7, 10, 0.7)

# Hàm nhị phân
# Biết rằng trong một quần thể dân số có khoảng 20% người mắc bệnh cao huyết áp; nếu chúng ta tiến hành chọn mẫu 1000 lần, mỗi lần chọn 20 người trong quần thể đó một cách ngẫu nhiên, sự phân phối số bệnh nhân cao huyết áp sẽ như thế nào?

b <- rbinom(1000, 20, 0.2)
hist(b, main="Number of hypertensive patients")