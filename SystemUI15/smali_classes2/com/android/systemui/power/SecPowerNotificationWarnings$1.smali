.class public final Lcom/android/systemui/power/SecPowerNotificationWarnings$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$1;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput-object p3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v0, "low_power"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$1;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget v2, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    :goto_0
    iget-boolean p1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    if-eqz p1, :cond_1

    iget p1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    if-eq v2, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.sm.action.ACTION_ACTIVE_TILE_SERVICE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/power/PowerUiConstants;->DC_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_type"

    const-string v1, "power_mode"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$1;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "PowerUI.Notification"

    const-string v0, "Error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
