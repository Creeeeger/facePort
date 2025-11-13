.class public final Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isExpandedChangedListener:Lkotlin/reflect/KFunction;

.field public final keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

.field public lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final surfaceTransactionApplier$delegate:Lkotlin/Lazy;

.field public final viewRootImpl$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Ldagger/Lazy;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardViewController;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Ldagger/Lazy;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$isExpandedChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$isExpandedChangedListener$1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isExpandedChangedListener:Lkotlin/reflect/KFunction;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$viewRootImpl$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$viewRootImpl$2;-><init>(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->viewRootImpl$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$surfaceTransactionApplier$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$surfaceTransactionApplier$2;-><init>(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->surfaceTransactionApplier$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static isValid(Landroid/view/SurfaceControl;F)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "KeyguardSurface"

    if-nez p0, :cond_0

    const-string p0, "invalid surface"

    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wrong amount "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public static synthetic setKeyguardSurfaceAppearAmount$default(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->setKeyguardSurfaceAppearAmount(FLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method


# virtual methods
.method public final getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->viewRootImpl$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method public final internalRestoreKeyguardSurfaceIfVisible(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "internalRestoreKeyguardSurfaceIfVisible "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSurface"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr v0, p1

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->restoreKeyguardSurface()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isExpandedChangedListener:Lkotlin/reflect/KFunction;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isExpandedChangedListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final restoreKeyguardSurface()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isValid(Landroid/view/SurfaceControl;F)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v0, v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-direct {v2, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->surfaceTransactionApplier$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array v5, v0, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object v2, v5, v4

    invoke-virtual {v3, v5}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    move v4, v0

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restoreKeyguardSurface surfaceParam="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " restored="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    const-string v3, " "

    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-static {v0, v3, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v2, "KeyguardSurface"

    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    return-void
.end method

.method public final restoreKeyguardSurfaceByTransaction()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restoreKeyguardSurfaceByTransaction viewRootImpl.view.visibility="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", keyguardVisibilityMonitor.isVisible()="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardSurface"

    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const-string/jumbo p0, "restoreKeyguardSurfaceByTransaction restore KeyguardSurface alpha"

    invoke-static {v2, p0}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method

.method public final restoreKeyguardSurfaceIfVisible()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restoreKeyguardSurfaceIfVisible viewRootImpl.view.visibility="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", keyguardVisibilityMonitor.isVisible()="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardSurface"

    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->internalRestoreKeyguardSurfaceIfVisible(Z)V

    return-void
.end method

.method public final setKeyguardSurfaceAppearAmount(FLandroid/view/SurfaceControl$Transaction;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, p1}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isValid(Landroid/view/SurfaceControl;F)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setKeyguardSurfaceAppearAmount amount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " hasTransaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSurface"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, v4, Landroid/view/SurfaceControl;->mNativeObject:J

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2, v4, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-wide v8, v2, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setKeyguardSurfaceAppearAmount in transaction?.setAlpha previousSurface : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", id : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", currentSurface : "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;FLandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;J)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImplKt$sam$java_lang_Runnable$0;

    invoke-direct {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImplKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public final setKeyguardSurfaceVisible(Landroid/view/SurfaceControl$Transaction;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isValid(Landroid/view/SurfaceControl;F)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    const/4 v2, 0x4

    const-string v4, "KeyguardSurface"

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_5

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setKeyguardSurfaceVisible visible=false, hasTransaction="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, v3, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-wide v8, v2, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setKeyguardSurfaceVisible in transaction?.setVisibility previousSurface : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentSurface : "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    new-instance v8, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;

    move-object v1, v8

    move-object v2, p0

    move v4, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;J)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v8}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceVisible$1;->invoke()Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImplKt$sam$java_lang_Runnable$0;

    invoke-direct {p1, v8}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImplKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_3
    return-void

    :cond_5
    const-string/jumbo p0, "setKeyguardSurfaceVisible view is not visible"

    invoke-static {v4, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
