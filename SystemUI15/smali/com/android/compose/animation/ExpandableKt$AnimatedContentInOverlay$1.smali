.class final Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $animatorState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $composeViewInOverlay:Landroidx/compose/ui/platform/ComposeView;

.field final synthetic $onOverlayComposeViewChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $overlay:Landroid/view/ViewGroupOverlay;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroupOverlay;Landroidx/compose/ui/platform/ComposeView;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroupOverlay;",
            "Landroidx/compose/ui/platform/ComposeView;",
            "Landroidx/compose/runtime/State;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$overlay:Landroid/view/ViewGroupOverlay;

    iput-object p2, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$composeViewInOverlay:Landroidx/compose/ui/platform/ComposeView;

    iput-object p3, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$animatorState:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$onOverlayComposeViewChanged:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$overlay:Landroid/view/ViewGroupOverlay;

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$composeViewInOverlay:Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$animatorState:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/animation/TransitionAnimator$State;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$composeViewInOverlay:Landroidx/compose/ui/platform/ComposeView;

    invoke-static {v0, p1}, Lcom/android/compose/animation/ExpandableKt;->measureAndLayoutComposeViewInOverlay(Landroid/view/View;Lcom/android/systemui/animation/TransitionAnimator$State;)V

    iget-object p1, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$onOverlayComposeViewChanged:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$composeViewInOverlay:Landroidx/compose/ui/platform/ComposeView;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$composeViewInOverlay:Landroidx/compose/ui/platform/ComposeView;

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$overlay:Landroid/view/ViewGroupOverlay;

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1;->$onOverlayComposeViewChanged:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1$invoke$$inlined$onDispose$1;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/ui/platform/ComposeView;Landroid/view/ViewGroupOverlay;Lkotlin/jvm/functions/Function1;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AnimatedContentInOverlay shouldn\'t be composed with null animatorState."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
