.class public final Lcom/android/compose/animation/scene/OneOffTransition;
.super Lcom/android/compose/animation/scene/TransitionState$Transition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public animatable:Landroidx/compose/animation/core/Animatable;

.field public final currentScene:Lcom/android/compose/animation/scene/SceneKey;

.field public final isInitiatedByUserInput:Z

.field public final isUserInputOngoing:Z

.field public job:Lkotlinx/coroutines/Job;

.field public final key:Lcom/android/compose/animation/scene/TransitionKey;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/TransitionKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;ZZ)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/compose/animation/scene/TransitionState$Transition;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)V

    iput-object p1, p0, Lcom/android/compose/animation/scene/OneOffTransition;->key:Lcom/android/compose/animation/scene/TransitionKey;

    iput-object p4, p0, Lcom/android/compose/animation/scene/OneOffTransition;->currentScene:Lcom/android/compose/animation/scene/SceneKey;

    iput-boolean p5, p0, Lcom/android/compose/animation/scene/OneOffTransition;->isInitiatedByUserInput:Z

    iput-boolean p6, p0, Lcom/android/compose/animation/scene/OneOffTransition;->isUserInputOngoing:Z

    return-void
.end method


# virtual methods
.method public final finish()Lkotlinx/coroutines/Job;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/OneOffTransition;->job:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/OneOffTransition;->currentScene:Lcom/android/compose/animation/scene/SceneKey;

    return-object p0
.end method

.method public final getKey()Lcom/android/compose/animation/scene/TransitionKey;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/OneOffTransition;->key:Lcom/android/compose/animation/scene/TransitionKey;

    return-object p0
.end method

.method public final getProgress()F
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/OneOffTransition;->animatable:Landroidx/compose/animation/core/Animatable;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getProgressVelocity()F
    .locals 1

    iget-object p0, p0, Lcom/android/compose/animation/scene/OneOffTransition;->animatable:Landroidx/compose/animation/core/Animatable;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    check-cast v0, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v0, v0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    iget-object p0, p0, Landroidx/compose/animation/core/AnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final isInitiatedByUserInput()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/compose/animation/scene/OneOffTransition;->isInitiatedByUserInput:Z

    return p0
.end method

.method public final isUserInputOngoing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/compose/animation/scene/OneOffTransition;->isUserInputOngoing:Z

    return p0
.end method
