.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $closingWallpaperLeash:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic $leashList:Ljava/util/ArrayList;

.field public final synthetic $needDelayedFinishCallback:Z

.field public final synthetic $transaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/view/SurfaceControl$Transaction;ZLjava/util/ArrayList;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Z",
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Landroid/view/IRemoteAnimationFinishedCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$transaction:Landroid/view/SurfaceControl$Transaction;

    iput-boolean p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$needDelayedFinishCallback:Z

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$leashList:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$closingWallpaperLeash:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "updateAppLeashAndKeyguardVisibility"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setForceInvisible(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$leashList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$closingWallpaperLeash:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceControl;

    if-eqz v2, :cond_1

    const-string/jumbo v3, "updateAppLeashAndKeyguardVisibility: closingWallpaperLeash invisible"

    invoke-static {v0, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$needDelayedFinishCallback:Z

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4$2;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4$2;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/IRemoteAnimationFinishedCallback;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v5, v1, p0}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
