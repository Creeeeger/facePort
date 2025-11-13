.class public final Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$UpdateHelperByContent;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$UpdateHelperByContent;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "receive that alternate_calendar content has been changed ! "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$UpdateHelperByContent;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " will be updated"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSClockBellTower"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$UpdateHelperByContent;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    const-string p1, "."

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mUpdateNotifyNewClockTime:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
