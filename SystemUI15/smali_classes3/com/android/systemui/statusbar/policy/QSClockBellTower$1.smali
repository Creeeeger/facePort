.class public final Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Everyone heard the bell. run(currentTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", getTime():"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", getTimeZone():"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QSClockBellTower"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
