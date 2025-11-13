.class public final Lcom/android/systemui/statusbar/policy/NetspeedViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static sActiveInterface:Ljava/lang/String;

.field public static sNetspeedSwitch:Z

.field public static sVpnConnected:Z


# instance fields
.field public mAttached:Z

.field public final mContext:Landroid/content/Context;

.field public final mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

.field public mNetworkStats:Z

.field public mNetworkStatsHandler:Landroid/os/Handler;

.field public final mNetworkStatsReceiver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;

.field public mRegisterReceiver:Z

.field public mScreenOn:Z

.field public final mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;

.field public final mUpdateRunnable:Lcom/android/systemui/statusbar/policy/NetspeedViewController$$ExternalSyntheticLambda0;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$2;


# direct methods
.method public static -$$Nest$monNetspeedSwitchChange(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowNetworkSpeedInStatusBar()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNetspeedSwitchChange - sNetspeedSwitch = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mRegisterReceiver = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    const-string v2, "NetspeedViewController"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsReceiver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;

    const-class v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    if-nez v0, :cond_0

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsReceiver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStats:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mScreenOn:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$2;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mWakefulnessObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$2;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUpdateRunnable:Lcom/android/systemui/statusbar/policy/NetspeedViewController$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    new-instance p4, Lcom/android/systemui/statusbar/policy/NetspeedViewController$3;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$3;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    sget-boolean p4, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    :cond_1
    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0714a7

    goto :goto_0

    :cond_0
    const v1, 0x7f0714a6

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->reset()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mAttached:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mAttached:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mScreenOn:Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowNetworkSpeedInStatusBar()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    if-eqz v1, :cond_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsReceiver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v3, Landroid/os/HandlerExecutor;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    new-array v0, v0, [Landroid/net/Uri;

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;->mSettingsValue:Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mWakefulnessObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->onDensityOrFontScaleChanged()V

    :cond_1
    return-void
.end method

.method public final onViewDetached()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mAttached:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsReceiver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;

    invoke-virtual {v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mWakefulnessObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$2;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v2, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Ljava/util/Observer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->deleteObserver(Ljava/util/Observer;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mAttached:Z

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setNetworkSpeed()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sNetspeedSwitch = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNetworkStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStats:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mScreenOn:Z

    const-string v2, "NetspeedViewController"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStats:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->addObserver(Ljava/util/Observer;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->deleteObserver(Ljava/util/Observer;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
