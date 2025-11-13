.class public final Lcom/android/systemui/power/SecPowerUI$11;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerUI;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$11;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI$11;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/power/SecPowerUI;->mIsChangedBatteryProtectionOnCharging:Z

    iget v1, p1, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    iget-object v2, p1, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/power/BatteryProtectionUtil;->getProtectBatteryValue(Landroid/content/Context;)I

    move-result v2

    iput v2, p1, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION_NOTIFICATION:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI$11;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object p1, p1, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI$11;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v2, p1, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/power/SecPowerUI;->checkBatteryProtectionNotification()V

    :cond_1
    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    if-ne v1, p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerUI$11;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v3, v2, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    if-eq v3, p1, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/power/SecPowerUI;->setSleepChargingOff()V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI$11;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/systemui/power/SecPowerUI;->mIsAfterAdaptiveProtection:Z

    :cond_2
    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI$11;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/SecPowerUI;->-$$Nest$mcheckTurnOnBatteryProtectionByLongTermCharge(Lcom/android/systemui/power/SecPowerUI;)V

    goto :goto_1

    :cond_3
    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI$11;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/SecPowerUI;->-$$Nest$mcheckTurnOnProtectBatteryByLongTa(Lcom/android/systemui/power/SecPowerUI;)V

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$11;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget p1, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    if-ne v1, v0, :cond_5

    if-eq p1, v0, :cond_5

    goto :goto_2

    :cond_5
    if-eq v1, v0, :cond_6

    if-ne p1, v0, :cond_6

    :goto_2
    iget p1, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    iget v1, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/power/SecPowerUI;->checkChargingNotification(III)V

    :cond_6
    return-void
.end method
