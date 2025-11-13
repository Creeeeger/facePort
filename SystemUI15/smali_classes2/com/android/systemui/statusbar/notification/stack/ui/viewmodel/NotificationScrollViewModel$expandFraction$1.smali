.class final Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6;"
    }
.end annotation


# instance fields
.field synthetic F$0:F

.field synthetic F$1:F

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Lcom/android/systemui/shade/shared/model/ShadeMode;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    check-cast p4, Lcom/android/compose/animation/scene/ObservableTransitionState;

    check-cast p5, Lcom/android/compose/animation/scene/SceneKey;

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;

    invoke-direct {v0, p0, p6}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;Lkotlin/coroutines/Continuation;)V

    iput p1, v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->F$0:F

    iput-object p2, v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->L$0:Ljava/lang/Object;

    iput p3, v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->F$1:F

    iput-object p4, v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->L$1:Ljava/lang/Object;

    iput-object p5, v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->L$2:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->label:I

    if-nez v0, :cond_8

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->F$0:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/shade/shared/model/ShadeMode;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->F$1:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/compose/animation/scene/ObservableTransitionState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/android/compose/animation/scene/SceneKey;

    instance-of v4, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    check-cast v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;

    iget-object p0, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Idle;->currentScene:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->Lockscreen:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_0
    :goto_0
    move p1, v5

    goto/16 :goto_1

    :cond_1
    instance-of v4, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;

    sget-object v6, Lcom/android/systemui/scene/shared/model/SceneFamilies;->NotifShade:Lcom/android/compose/animation/scene/SceneKey;

    check-cast v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    iget-object v7, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    invoke-virtual {v4, v7, v6}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->isSceneInFamily(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;

    iget-object v7, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    invoke-virtual {v4, v7, v3}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->isSceneInFamily(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;

    iget-object v7, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    invoke-virtual {v4, v7, v6}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->isSceneInFamily(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    iget-object v4, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v7, Lcom/android/systemui/scene/shared/model/Scenes;->Lockscreen:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;

    iget-object v8, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    invoke-virtual {v4, v8, v6}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->isSceneInFamily(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;

    iget-object v8, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    invoke-virtual {v4, v8, v6}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->isSceneInFamily(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/android/systemui/shade/shared/model/ShadeMode$Split;->INSTANCE:Lcom/android/systemui/shade/shared/model/ShadeMode$Split;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;

    sget-object v4, Lcom/android/systemui/scene/shared/model/SceneFamilies;->Home:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v6, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    invoke-virtual {v0, v6, v4}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->isSceneInFamily(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;

    iget-object v0, v2, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->isSceneInFamily(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result p0

    if-eqz p0, :cond_6

    const p0, 0x3e99999a    # 0.3f

    div-float/2addr v1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr v1, p0

    const/4 p0, 0x0

    invoke-static {v1, p0, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/Float;

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
