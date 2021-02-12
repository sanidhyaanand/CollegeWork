par(mfrow = c(2,1))
plot(y, type = "h", xaxt="n", xlab = "", ylab="")
axis(1,at=seq(1,17, by= 1),labels=FALSE)
text(seq(1,17, by= 1), par("usr")[3]-0.2,
     labels = label_list, srt = 60, offset = 0.3,
     pos = 1,xpd=TRUE)
title(main = "Population quantity by Ages", ylab = "Numbers (in tens of crores)", xlab = "Age Ranges", line = 3.0)
pie(y, radius = 1.0)

