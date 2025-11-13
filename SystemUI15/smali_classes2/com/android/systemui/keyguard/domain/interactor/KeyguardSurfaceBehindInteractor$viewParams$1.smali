.class final Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $inWindowLauncherUnlockAnimationInteractor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy;"
        }
    .end annotation
.end field

.field final synthetic $swipeToDismissInteractor:Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I


# direct methods
.method public constructor <init>(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->$inWindowLauncherUnlockAnimationInteractor:Ldagger/Lazy;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->$swipeToDismissInteractor:Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    check-cast p2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->$inWindowLauncherUnlockAnimationInteractor:Ldagger/Lazy;

    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->$swipeToDismissInteractor:Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;

    invoke-direct {v0, v1, v2, p0, p4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;-><init>(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->L$1:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->label:I

    if-nez v1, :cond_6

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iget-boolean v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->Z$0:Z

    iget-object v1, v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const/4 v5, 0x0

    if-ne v1, v4, :cond_3

    if-eq v2, v4, :cond_3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/KeyguardSurfaceBehindModel;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0x1e

    const/4 v13, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/keyguard/shared/model/KeyguardSurfaceBehindModel;-><init>(FFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->$inWindowLauncherUnlockAnimationInteractor:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;->isLauncherUnderneath()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/KeyguardSurfaceBehindModel;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0x1e

    const/4 v13, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/keyguard/shared/model/KeyguardSurfaceBehindModel;-><init>(FFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_1
    const/16 v1, 0xfa

    iget-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/systemui/util/kotlin/UtilsKt;->toPx(ILandroid/content/Context;)I

    move-result v1

    int-to-float v10, v1

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor$viewParams$1;->$swipeToDismissInteractor:Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;->dismissFling:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/data/repository/FlingInfo;

    if-eqz v0, :cond_2

    iget v5, v0, Lcom/android/systemui/shade/data/repository/FlingInfo;->velocity:F

    :cond_2
    move v11, v5

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/KeyguardSurfaceBehindModel;

    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/keyguard/shared/model/KeyguardSurfaceBehindModel;-><init>(FFFFF)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/android/systemui/keyguard/shared/model/KeyguardSurfaceBehindModel;

    sget-object v1, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->Companion:Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->Companion:Lcom/android/systemui/keyguard/shared/model/KeyguardState$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    if-eq v2, v4, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v1, v2

    if-eqz v1, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_5
    move v13, v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x1e

    const/16 v19, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lcom/android/systemui/keyguard/shared/model/KeyguardSurfaceBehindModel;-><init>(FFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
