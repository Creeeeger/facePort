.class public final synthetic Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/plugins/clocks/ClockController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/clocks/ClockAnimations;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockAnimations;->enter()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitchController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mIsActiveDreamLockscreenHosted:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitchController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->displayClock(IZ)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitchController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mWeatherView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v2, "lockscreen_weather_enabled"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3, v1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->$r8$lambda$yqU1eRz3Djl_rk0159bqRf2vojc(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitchController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDoubleLineClockObserver:Lcom/android/keyguard/KeyguardClockSwitchController$1;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {v1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mShowWeatherObserver:Lcom/android/keyguard/KeyguardClockSwitchController$2;

    invoke-interface {v1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitchController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClock()Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_3

    :cond_2
    iget v3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCurrentClockSize:I

    if-nez v3, :cond_3

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getConfig()Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->getHasCustomWeatherDataDisplay()Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_4

    iget v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardDateWeatherViewInvisibility:I

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitchController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDoubleLineClockObserver:Lcom/android/keyguard/KeyguardClockSwitchController$1;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v2, "lockscreen_use_double_line_clock"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mShowWeatherObserver:Lcom/android/keyguard/KeyguardClockSwitchController$2;

    const-string v0, "lockscreen_weather_enabled"

    invoke-interface {v1, v0, v3, p0, v4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
