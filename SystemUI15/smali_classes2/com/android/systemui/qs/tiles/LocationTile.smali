.class public final Lcom/android/systemui/qs/tiles/LocationTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mController:Lcom/android/systemui/statusbar/policy/LocationController;

.field public final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public mIsSatelliteModeOn:Z

.field public final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mListening:Z

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/LocationTile$1;

.field public final mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const p1, 0x7f08097c

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    new-instance p1, Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/LocationTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;I)V

    new-instance p3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const p4, 0x7f080ecd

    const p5, 0x7f080ecb

    invoke-direct {p3, p4, p5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance p3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const p4, 0x7f080ecc

    const p5, 0x7f080ebf

    invoke-direct {p3, p4, p5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mListening:Z

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsSatelliteModeOn:Z

    new-instance p2, Lcom/android/systemui/qs/tiles/LocationTile$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/LocationTile$1;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/LocationTile$1;

    iput-object p10, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object p11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p12, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p13, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p14, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    iput-object p15, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {p10, p2, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {p11, p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsSatelliteModeOn:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7a

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130f0c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v3, v0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v3, v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iget-boolean v3, v0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    xor-int/2addr v3, v1

    iget-object v4, v0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    const-string v5, "gps"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    xor-int/2addr v4, v1

    iget-object v6, v0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    const-string v7, "network"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    xor-int/2addr v6, v1

    iget-boolean v7, v0, Lcom/android/systemui/knox/EdmMonitor;->mGPSStateChangeAllowed:Z

    iget-object v0, v0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v4, :cond_4

    if-nez v0, :cond_3

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v1

    :goto_3
    if-eqz v0, :cond_5

    if-nez v7, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    if-eqz v4, :cond_6

    if-nez v6, :cond_8

    :cond_6
    if-nez v3, :cond_8

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    move v3, v2

    goto :goto_6

    :cond_8
    :goto_5
    move v3, v1

    :goto_6
    if-eqz v0, :cond_9

    move v3, v1

    :cond_9
    if-eqz v3, :cond_a

    move v2, v1

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Lcom/android/systemui/animation/Expandable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const-string v0, "handleClick "

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_DCM_BRANDING:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    if-eqz v0, :cond_e

    move-object v0, v2

    check-cast v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled$1()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f130e60

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130e5e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130e5d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;I)V

    const v0, 0x7f13018a

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;I)V

    const v0, 0x7f130530

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_8

    :cond_e
    xor-int/lit8 p0, p1, 0x1

    check-cast v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->setLocationEnabled(Z)Z

    :goto_8
    return-void
.end method

.method public final handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsSatelliteModeOn:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/LocationTile$1;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->addCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->removeCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V

    :goto_0
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled$1()Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const-string v0, "no_share_location"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-nez v2, :cond_0

    const-string v2, "no_config_location"

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_0
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsSatelliteModeOn:Z

    if-nez p0, :cond_4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    :cond_3
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x0

    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_2
    return-void
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method
