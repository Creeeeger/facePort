.class final Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1$2;
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
.field final synthetic $state:Lcom/android/compose/animation/scene/TransitionState;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/TransitionState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1$2;->$state:Lcom/android/compose/animation/scene/TransitionState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/ObservableTransitionStateKt$observableTransitionState$1$2;->$state:Lcom/android/compose/animation/scene/TransitionState;

    check-cast p0, Lcom/android/compose/animation/scene/TransitionState$Transition;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
