.class public final Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _openNotificationPanelFromEtc:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openNotificationPanelFromHun:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openNotificationPanelFromLockscreen:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openNotificationPanelFromQS:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openNotificationPanelFromStatusbar:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openNotificationPanelFromStatusbarOnLockscreen:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openNotificationPanelFromStatusbarOnQS:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openQuickPanelFrom1DepthEtcInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openQuickPanelFrom1DepthEtcInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openQuickPanelFrom1DepthStatusBarInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openQuickPanelFrom1DepthStatusBarInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openQuickPanelFrom2Depth:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openQuickPanelFrom2Depth2Finger:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openQuickPanelFromHorizontalSwipingInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openQuickPanelFromHorizontalSwipingInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openQuickPanelFromStatusBarInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openQuickPanelFromStatusBarInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openQuickPanelFromWipeDownInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _openQuickPanelFromWipeDownInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final openNotificationPanelFromEtc:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openNotificationPanelFromHun:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openNotificationPanelFromLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openNotificationPanelFromQS:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openNotificationPanelFromStatusbar:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openNotificationPanelFromStatusbarOnLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openNotificationPanelFromStatusbarOnQS:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openQuickPanelFrom1DepthEtcInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openQuickPanelFrom1DepthEtcInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openQuickPanelFrom1DepthStatusBarInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openQuickPanelFrom1DepthStatusBarInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openQuickPanelFrom2Depth:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openQuickPanelFrom2Depth2Finger:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openQuickPanelFromHorizontalSwipingInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openQuickPanelFromHorizontalSwipingInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openQuickPanelFromStatusBarInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openQuickPanelFromStatusBarInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openQuickPanelFromWipeDownInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final openQuickPanelFromWipeDownInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p1, "open_quick_panel_from_status_bar_in_shade"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFromStatusBarInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFromStatusBarInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_quick_panel_from_status_bar_in_keyguard"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFromStatusBarInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFromStatusBarInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_quick_panel_from_wipe_down_in_shade"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFromWipeDownInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFromWipeDownInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_quick_panel_from_wipe_down_in_keyguard"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFromWipeDownInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFromWipeDownInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_quick_panel_from_horizontal_swiping_in_shade"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFromHorizontalSwipingInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFromHorizontalSwipingInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_quick_panel_from_horizontal_swiping_in_keyguard"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFromHorizontalSwipingInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFromHorizontalSwipingInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_notification_panel_from_statusbar"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromStatusbar:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromStatusbar:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_notification_panel_from_statusbar_on_lock"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromStatusbarOnLockscreen:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromStatusbarOnLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_notification_panel_from_lockscreen"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromLockscreen:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_notification_panel_from_statusbar_on_qs"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromStatusbarOnQS:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromStatusbarOnQS:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_notification_panel_from_qs"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromQS:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromQS:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_notification_panel_from_hun"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromHun:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromHun:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_notification_panel_from_etc"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromEtc:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromEtc:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_quick_panel_from_1depth_status_bar_in shade"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom1DepthStatusBarInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFrom1DepthStatusBarInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_quick_panel_from_1depth_status_bar_in_keyguard"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom1DepthStatusBarInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFrom1DepthStatusBarInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_quick_panel_from_1depth_etc_in shade"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom1DepthEtcInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFrom1DepthEtcInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_quick_panel_from_1depth_etc_in_keyguard"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom1DepthEtcInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFrom1DepthEtcInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_quick_panel_from_2depth"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom2Depth:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFrom2Depth:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "open_quick_panel_from_2depth_2finger"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom2Depth2Finger:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFrom2Depth2Finger:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final toMutableStateFlow(Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlowImpl;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p0

    return-object p0
.end method
