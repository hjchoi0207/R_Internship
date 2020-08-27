# 신약효과와 위약효과 비교 - t검정

# 1. 정규분포 결과 : 두 케이스 모두 정규분포를 따르며 t.test()수행 가능
# 2. p-value = 0.6012 > 0.05 이므로 귀무가설이다.
# 3. 검정방법 : 두 케이스 비교이므로 t-검정
# 4. 결과해석 : 

newmedi <- c(15,10,13,7,9,8,21,9,14,8)
justmedi <- c(15,14,12,8,14,7,16,10,15,12)

shapiro.test(newmedi) # p-value = 0.09131
shapiro.test(justmedi) # p-value = 0.2986

t.test(newmedi,justmedi) # p-value = 0.6012 > 0.05 이므로 귀무가설이다.
# paired = T 를 언제 사용하지..?