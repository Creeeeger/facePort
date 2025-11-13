.class public final Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $composeViewInOverlay$inlined:Landroidx/compose/ui/platform/ComposeView;

.field public final synthetic $onOverlayComposeViewChanged$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $overlay$inlined:Landroid/view/ViewGroupOverlay;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/ComposeView;Landroid/view/ViewGroupOverlay;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1$invoke$$inlined$onDispose$1;->$composeViewInOverlay$inlined:Landroidx/compose/ui/platform/ComposeView;

    iput-object p2, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1$invoke$$inlined$onDispose$1;->$overlay$inlined:Landroid/view/ViewGroupOverlay;

    iput-object p3, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1$invoke$$inlined$onDispose$1;->$onOverlayComposeViewChanged$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1$invoke$$inlined$onDispose$1;->$composeViewInOverlay$inlined:Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    iget-object v1, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1$invoke$$inlined$onDispose$1;->$overlay$inlined:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$1$invoke$$inlined$onDispose$1;->$onOverlayComposeViewChanged$inlined:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
