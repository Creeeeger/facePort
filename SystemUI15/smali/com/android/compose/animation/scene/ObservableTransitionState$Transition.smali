.class public final Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/ObservableTransitionState;


# instance fields
.field public final currentScene:Lkotlinx/coroutines/flow/Flow;

.field public final fromScene:Lcom/android/compose/animation/scene/SceneKey;

.field public final isInitiatedByUserInput:Z

.field public final isUserInputOngoing:Lkotlinx/coroutines/flow/Flow;

.field public final progress:Lkotlinx/coroutines/flow/Flow;

.field public final toScene:Lcom/android/compose/animation/scene/SceneKey;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;ZLkotlinx/coroutines/flow/Flow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/SceneKey;",
            "Lcom/android/compose/animation/scene/SceneKey;",
            "Lkotlinx/coroutines/flow/Flow;",
            "Lkotlinx/coroutines/flow/Flow;",
            "Z",
            "Lkotlinx/coroutines/flow/Flow;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p2, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p3, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->currentScene:Lkotlinx/coroutines/flow/Flow;

    iput-object p4, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->progress:Lkotlinx/coroutines/flow/Flow;

    iput-boolean p5, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->isInitiatedByUserInput:Z

    iput-object p6, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->isUserInputOngoing:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transition\n                |(from="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n                | to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n                | isInitiatedByUserInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->isInitiatedByUserInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n                | isUserInputOngoing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->isUserInputOngoing:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n                |)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
