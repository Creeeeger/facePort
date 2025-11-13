.class final Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3;
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
.field final synthetic $backgroundType$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $colors:Lcom/android/systemui/communal/util/CommunalColors;

.field final synthetic $content:Lcom/android/systemui/communal/ui/compose/CommunalContent;

.field final synthetic $showGestureIndicator$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/communal/ui/compose/CommunalContent;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            "Lcom/android/systemui/communal/util/CommunalColors;",
            "Lcom/android/systemui/communal/ui/compose/CommunalContent;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3;->$showGestureIndicator$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3;->$colors:Lcom/android/systemui/communal/util/CommunalColors;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3;->$content:Lcom/android/systemui/communal/ui/compose/CommunalContent;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3;->$backgroundType$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$updateScenes$1;

    sget-object v0, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Blank:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v7, Lcom/android/compose/animation/scene/Swipe;

    sget-object v2, Lcom/android/compose/animation/scene/SwipeDirection;->Left:Lcom/android/compose/animation/scene/SwipeDirection;

    sget-object v4, Lcom/android/compose/animation/scene/Edge;->Right:Lcom/android/compose/animation/scene/Edge;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    invoke-interface {v7, v1}, Lcom/android/compose/animation/scene/UserAction;->to(Lcom/android/compose/animation/scene/SceneKey;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3$1;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3;->$showGestureIndicator$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v3, v4}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3$1;-><init>(Landroidx/compose/runtime/State;)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, 0x72d90f04

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {p1, v0, v2, v4}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$updateScenes$1;->scene(Lcom/android/compose/animation/scene/SceneKey;Ljava/util/Map;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v2, Lcom/android/compose/animation/scene/Swipe;

    sget-object v8, Lcom/android/compose/animation/scene/SwipeDirection;->Right:Lcom/android/compose/animation/scene/SwipeDirection;

    sget-object v10, Lcom/android/compose/animation/scene/Edge;->Left:Lcom/android/compose/animation/scene/Edge;

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v0}, Lcom/android/compose/animation/scene/UserAction;->to(Lcom/android/compose/animation/scene/SceneKey;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3$2;

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3;->$colors:Lcom/android/systemui/communal/util/CommunalColors;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3;->$content:Lcom/android/systemui/communal/ui/compose/CommunalContent;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3;->$backgroundType$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v2, v3, v4, p0}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3$2;-><init>(Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/communal/ui/compose/CommunalContent;Landroidx/compose/runtime/State;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x21fe3e13

    invoke-direct {p0, v3, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {p1, v1, v0, p0}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$updateScenes$1;->scene(Lcom/android/compose/animation/scene/SceneKey;Ljava/util/Map;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
