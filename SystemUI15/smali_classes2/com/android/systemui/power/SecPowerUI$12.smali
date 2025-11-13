.class public final Lcom/android/systemui/power/SecPowerUI$12;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerUI;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$12;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI$12;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v0, p1, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    iget v1, p1, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    iget v2, p1, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/power/SecPowerUI;->checkChargingNotification(III)V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI$12;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-virtual {p1}, Lcom/android/systemui/power/SecPowerUI;->checkBatteryProtectionNotification()V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$12;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/power/SecPowerUI;->mIsChangedBatteryProtectionOnCharging:Z

    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/power/SecPowerUI;->-$$Nest$mcheckTurnOnBatteryProtectionByLongTermCharge(Lcom/android/systemui/power/SecPowerUI;)V

    :cond_0
    return-void
.end method
