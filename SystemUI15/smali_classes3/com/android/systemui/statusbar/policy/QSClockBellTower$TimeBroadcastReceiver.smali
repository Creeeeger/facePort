.class public final Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mTimeZoneString:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->mTimeZoneString:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 p1, 0x2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    const-string v1, "QSClockBellTower"

    if-nez v0, :cond_0

    const-string p0, "onReceive() mHandler is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onReceive("

    const-string v3, ") mTimeZoneString:"

    invoke-static {v2, v0, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->mTimeZoneString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    goto :goto_0

    :sswitch_1
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string/jumbo p1, "time-zone"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Quickpanel Indicator Clock TimeZone("

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->mTimeZoneString:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >> "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->mTimeZoneString:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->updateAlternateCalendar(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mUpdateNotifyNewClockTime:Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x122164c -> :sswitch_2
        0x9780086 -> :sswitch_1
        0x1df32313 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateTimeZone(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    const-string/jumbo v2, "updateTimeZone() newTimezone: "

    const-string v3, ", defaultTimezone: "

    invoke-static {v2, p1, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QSClockBellTower"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockQuickStarHelper:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    iput-object v3, v4, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringFormat:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatWithSeconds:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_2
    const-string/jumbo v0, "putLastTimeZoneChangeLog("

    const-string v1, ")"

    invoke-static {v0, p1, v1, v2}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last TimeZoneChange"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")  (currentTime:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    const-string v0, ", Calendar.getTime():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Calendar.getTimeZone():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    const-string v0, " LAST TIME BELL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method
