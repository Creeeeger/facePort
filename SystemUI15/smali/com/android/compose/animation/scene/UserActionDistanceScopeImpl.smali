.class public final Lcom/android/compose/animation/scene/UserActionDistanceScopeImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/UserActionDistanceScope;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/compose/animation/scene/ElementStateScopeImpl;

.field public final layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/UserActionDistanceScopeImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p0, p1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->elementStateScope:Lcom/android/compose/animation/scene/ElementStateScopeImpl;

    return-void
.end method


# virtual methods
.method public final getDensity()F
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/UserActionDistanceScopeImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    return p0
.end method

.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/UserActionDistanceScopeImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p0

    return p0
.end method
