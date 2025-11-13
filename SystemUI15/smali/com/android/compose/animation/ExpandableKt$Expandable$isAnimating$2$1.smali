.class final Lcom/android/compose/animation/ExpandableKt$Expandable$isAnimating$2$1;
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
.field final synthetic $controller:Lcom/android/compose/animation/ExpandableControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/ExpandableControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$isAnimating$2$1;->$controller:Lcom/android/compose/animation/ExpandableControllerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$isAnimating$2$1;->$controller:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object v0, v0, Lcom/android/compose/animation/ExpandableControllerImpl;->animatorState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$isAnimating$2$1;->$controller:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->overlay:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
