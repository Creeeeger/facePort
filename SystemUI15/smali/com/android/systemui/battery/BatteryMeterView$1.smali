.class public final Lcom/android/systemui/battery/BatteryMeterView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/battery/BatteryMeterView;

.field public final synthetic val$batteryState:Lcom/android/systemui/battery/SamsungBatteryState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/battery/SamsungBatteryState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterView$1;->this$0:Lcom/android/systemui/battery/BatteryMeterView;

    iput-object p2, p0, Lcom/android/systemui/battery/BatteryMeterView$1;->val$batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView$1;->this$0:Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView$1;->val$batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget v1, v1, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    iput v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    invoke-virtual {v0}, Lcom/android/systemui/battery/BatteryMeterView;->updatePercentText()V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView$1;->this$0:Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v0, v0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView$1;->val$batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->onBatteryLevelChanged(Lcom/android/systemui/battery/SamsungBatteryState;)V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView$1;->this$0:Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView$1;->val$batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget-boolean v2, v0, Lcom/android/systemui/battery/BatteryMeterView;->mPowerSaveEnabled:Z

    iget-object v3, v0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-virtual {v3}, Lcom/android/systemui/battery/SamsungBatteryState;->shouldShowChargingIcon()Z

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/battery/SamsungBatteryState;->shouldShowChargingIcon()Z

    move-result v1

    if-ne v3, v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mPowerSaveEnabled:Z

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView$1;->this$0:Lcom/android/systemui/battery/BatteryMeterView;

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView$1;->val$batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iput-object p0, v0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-virtual {v0}, Lcom/android/systemui/battery/BatteryMeterView;->scaleBatteryMeterViewsLegacy()V

    return-void
.end method
