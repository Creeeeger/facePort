.class final Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $amount:F

.field final synthetic $surface:Landroid/view/SurfaceControl;

.field final synthetic $transaction:Landroid/view/SurfaceControl$Transaction;

.field final synthetic $validNativeObject:J

.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;FLandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->$amount:F

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->$surface:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->$transaction:Landroid/view/SurfaceControl$Transaction;

    iput-wide p5, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->$validNativeObject:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->$surface:Landroid/view/SurfaceControl;

    invoke-direct {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->$amount:F

    invoke-virtual {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->$surface:Landroid/view/SurfaceControl;

    iget-wide v5, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->$validNativeObject:J

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v3, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->surfaceTransactionApplier$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v2, v7}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v3, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iget-wide v6, v3, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setKeyguardSurfaceAppearAmount in runOnMainThread previousSurface : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", id : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentSurface : "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardSurface"

    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->lastKeyguardSurfaceParams:Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->$amount:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl$setKeyguardSurfaceAppearAmount$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isExpandedChangedListener:Lkotlin/reflect/KFunction;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isExpandedChangedListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
