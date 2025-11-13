.class public final Lcom/android/systemui/shade/SecPanelTouchBlockHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final centralSurfaces$delegate:Lkotlin/Lazy;

.field public final keyguardStateController$delegate:Lkotlin/Lazy;

.field public final knoxStateMonitor$delegate:Lkotlin/Lazy;

.field public final statusBarStateController$delegate:Lkotlin/Lazy;

.field public final userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final userTrackerCallback:Lcom/android/systemui/shade/SecPanelTouchBlockHelper$userTrackerCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$centralSurfaces$2;->INSTANCE:Lcom/android/systemui/shade/SecPanelTouchBlockHelper$centralSurfaces$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->centralSurfaces$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$keyguardStateController$2;->INSTANCE:Lcom/android/systemui/shade/SecPanelTouchBlockHelper$keyguardStateController$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->keyguardStateController$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$knoxStateMonitor$2;->INSTANCE:Lcom/android/systemui/shade/SecPanelTouchBlockHelper$knoxStateMonitor$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->knoxStateMonitor$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$statusBarManager$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$statusBarManager$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$statusBarStateController$2;->INSTANCE:Lcom/android/systemui/shade/SecPanelTouchBlockHelper$statusBarStateController$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->statusBarStateController$delegate:Lkotlin/Lazy;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$userTrackerCallback$1;-><init>(Lcom/android/systemui/shade/SecPanelTouchBlockHelper;)V

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->userTrackerCallback:Lcom/android/systemui/shade/SecPanelTouchBlockHelper$userTrackerCallback$1;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p0, "SecPanelTouchBlockHelper"

    const-string p1, "addCallback"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final isBlockedByKeyguardAnimating()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->keyguardStateController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    const-string v0, "SecPanelTouchBlockHelper"

    const-string v1, "isBlockedByKeyguardAnimating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method public final isBlockedByKnoxPanelExpandDisabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->knoxStateMonitor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    if-nez v1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mStatusBarExpandAllowed:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const-string p0, "SecPanelTouchBlockHelper"

    const-string v1, "isBlockedByKnoxPanelExpandDisabled"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public final isKeyguardPanelDisabled()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->statusBarStateController$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const/4 v1, 0x0

    const-string v2, "SecPanelTouchBlockHelper"

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->isBlockedByKeyguardAnimating()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->isBlockedByKnoxPanelExpandDisabled()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->knoxStateMonitor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isStatusBarHidden()Z

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v4, "isBlockedByKnoxStatusBarHidden"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    const-string v4, "isBlockedByUserChangeInProgress"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->centralSurfaces$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisabled1:I

    const/high16 v4, 0x10000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    const-string v4, "isBlockedByDisableExpandOnKeyguard"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->keyguardStateController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz p0, :cond_6

    const-string v0, "isBlockedByKeyguardOccluded"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz p0, :cond_8

    :cond_7
    move v1, v3

    :cond_8
    if-eqz v1, :cond_9

    const-string p0, "isKeyguardPanelDisabled"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v1
.end method
