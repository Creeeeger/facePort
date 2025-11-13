.class public final Lcom/android/systemui/battery/BatteryMeterViewController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/battery/BatteryMeterViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$1100(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/battery/BatteryMeterView;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final onBatteryLevelChanged(IZZIIIZI)V
    .locals 11

    move/from16 v7, p7

    move-object v0, p0

    iget-object v9, v0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-static {v9}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$500(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    iget-boolean v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mIsDirectPowerMode:Z

    if-eq v1, v7, :cond_0

    iput-boolean v7, v0, Lcom/android/systemui/battery/BatteryMeterView;->mIsDirectPowerMode:Z

    invoke-virtual {v0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    :cond_0
    new-instance v10, Lcom/android/systemui/battery/SamsungBatteryState;

    move-object v0, v10

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/battery/SamsungBatteryState;-><init>(IZZIIIZI)V

    invoke-static {v9}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$600(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mInvalidateRunnable:Lcom/android/systemui/battery/BatteryMeterView$1;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/systemui/battery/BatteryMeterView;->mUpdateBatteryStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mUpdateBatteryStateHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/battery/BatteryMeterView;->mInvalidateRunnable:Lcom/android/systemui/battery/BatteryMeterView$1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v1, Lcom/android/systemui/battery/BatteryMeterView$1;

    invoke-direct {v1, v0, v10}, Lcom/android/systemui/battery/BatteryMeterView$1;-><init>(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/battery/SamsungBatteryState;)V

    iput-object v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mInvalidateRunnable:Lcom/android/systemui/battery/BatteryMeterView$1;

    iget-object v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-virtual {v1}, Lcom/android/systemui/battery/SamsungBatteryState;->shouldShowChargingIcon()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v10}, Lcom/android/systemui/battery/SamsungBatteryState;->shouldShowChargingIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-wide v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->DEBOUNCE_DELAY_CONST:J

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    iget-object v3, v0, Lcom/android/systemui/battery/BatteryMeterView;->mUpdateBatteryStateHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/battery/BatteryMeterView;->mInvalidateRunnable:Lcom/android/systemui/battery/BatteryMeterView$1;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onBatteryUnknownStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-static {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$800(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onIsBatteryDefenderChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-static {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$900(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsBatteryDefender:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsBatteryDefender:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateContentDescription()V

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->scaleBatteryMeterViewsLegacy()V

    :goto_1
    return-void
.end method

.method public final onIsIncompatibleChargingChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/flags/Flags;->INCOMPATIBLE_CHARGING_BATTERY_ICON:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$1000(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsIncompatibleCharging:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsIncompatibleCharging:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->isCharging()Z

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-static {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$700(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mPowerSaveEnabled:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mPowerSaveEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    iput-boolean p1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->powerSaveEnabled:Z

    invoke-virtual {v0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->resizeDrawable()V

    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

    sget v2, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->MSG_POST_INVALIDATE:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->scaleBatteryMeterViewsLegacy()V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-virtual {v0}, Lcom/android/systemui/battery/SamsungBatteryState;->shouldShowChargingIcon()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/battery/SamsungBatteryState;->shouldShowChargingIcon()Z

    move-result v0

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mPowerSaveEnabled:Z

    if-eq v0, p1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_3
    :goto_0
    return-void
.end method
