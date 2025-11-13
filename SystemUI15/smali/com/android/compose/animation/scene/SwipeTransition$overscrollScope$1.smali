.class public final Lcom/android/compose/animation/scene/SwipeTransition$overscrollScope$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# instance fields
.field public final synthetic this$0:Lcom/android/compose/animation/scene/SwipeTransition;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SwipeTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$overscrollScope$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDensity()F
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition$overscrollScope$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    return p0
.end method

.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition$overscrollScope$1;->this$0:Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeTransition;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p0

    return p0
.end method
