.class public final Lcom/android/systemui/power/SecPowerUI$3;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$3;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const-string p2, "mPhoneStateListener onCallStateChanged(): state= "

    const-string v0, " mIsShutdownTaskDelayed = "

    invoke-static {p1, p2, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI$3;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-boolean v0, v0, Lcom/android/systemui/power/SecPowerUI;->mIsShutdownTaskDelayed:Z

    const-string v1, "PowerUI"

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/power/SecPowerUI$3;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iput p1, p2, Lcom/android/systemui/power/SecPowerUI;->mCallState:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean v1, p2, Lcom/android/systemui/power/SecPowerUI;->mIsShutdownTaskDelayed:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p2, Lcom/android/systemui/power/SecPowerUI;->mIsShutdownTaskDelayed:Z

    iget v1, p2, Lcom/android/systemui/power/SecPowerUI;->mBatteryOverheatLevel:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object p2, p2, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "runOverheatShutdownTask - Delay time = 10000"

    const-string v2, "PowerUI.Notification"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object p2, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$9;

    const/16 v2, 0x2710

    int-to-long v2, v2

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p2, p0, Lcom/android/systemui/power/SecPowerUI$3;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object p2, p2, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showWillOverheatShutdownWarning()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$3;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    check-cast p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsInCall:Z

    return-void
.end method
