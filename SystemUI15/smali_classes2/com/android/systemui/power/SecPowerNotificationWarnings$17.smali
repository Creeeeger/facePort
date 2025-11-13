.class public final Lcom/android/systemui/power/SecPowerNotificationWarnings$17;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-boolean p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    if-nez p1, :cond_1

    const-string p1, "PowerUI.Notification"

    const-string v0, "mWaterProtectionAlertDialog onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object v0, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    return-void
.end method
