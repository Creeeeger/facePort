.class public final Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final editor:Landroid/content/SharedPreferences$Editor;

.field public onpfe:J

.field public onpfh:J

.field public onpfl:J

.field public onpfq:J

.field public onpfs:J

.field public onpfsol:J

.field public onpfsoq:J

.field public oqpf1dek:J

.field public oqpf1des:J

.field public oqpf1dsk:J

.field public oqpf1dss:J

.field public oqpf2d:J

.field public oqpf2d2f:J

.field public oqpfhsk:J

.field public oqpfhss:J

.field public oqpfsk:J

.field public oqpfss:J

.field public oqpfwdk:J

.field public oqpfwds:J

.field public final repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "QsStatusEventLog_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    invoke-direct {v0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object v1, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFromStatusBarInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFromStatusBarInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFromWipeDownInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFromWipeDownInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v5, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFromHorizontalSwipingInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFromHorizontalSwipingInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    filled-new-array/range {v1 .. v6}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$13$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    iget-object v1, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFrom1DepthStatusBarInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFrom1DepthStatusBarInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFrom1DepthEtcInShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFrom1DepthEtcInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v5, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFrom2Depth:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openQuickPanelFrom2Depth2Finger:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    filled-new-array/range {v1 .. v6}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    iget-object v1, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromStatusbar:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromStatusbarOnLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromStatusbarOnQS:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v5, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromQS:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromHun:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v7, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->openNotificationPanelFromEtc:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    filled-new-array/range {v1 .. v7}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor$_init_$lambda$42$$inlined$combine$2;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final access$updateCurrentScreen(Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final countOpenNotificationPanelFromEtc()V
    .locals 4

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromEtc:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public final countOpenNotificationPanelFromLockscreen()V
    .locals 4

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromLockscreen:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public final countOpenNotificationPanelFromStatusbarOnLockscreen()V
    .locals 4

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromStatusbarOnLockscreen:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    return-void
.end method
