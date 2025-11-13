.class final Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3;
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


# static fields
.field public static final INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3;

    invoke-direct {v0}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3;->INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/compose/animation/scene/TransitionBuilderImpl;

    const/4 p0, 0x0

    const/4 v0, 0x6

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    iput-object p0, p1, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->spec:Landroidx/compose/animation/core/AnimationSpec;

    sget-object p0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Communal$Elements;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->Grid:Lcom/android/compose/animation/scene/ElementKey;

    sget-object v0, Lcom/android/compose/animation/scene/Edge;->Right:Lcom/android/compose/animation/scene/Edge;

    invoke-static {p1, p0, v0}, Lcom/android/compose/animation/scene/BaseTransitionBuilder;->translate$default(Lcom/android/compose/animation/scene/BaseTransitionBuilder;Lcom/android/compose/animation/scene/ElementMatcher;Lcom/android/compose/animation/scene/Edge;)V

    const/16 p0, 0xa7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3$1;->INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3$1;

    invoke-static {p1, v0, v1}, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->timestampRange$default(Lcom/android/compose/animation/scene/TransitionBuilderImpl;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0x14e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3$2;->INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3$2;

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/compose/animation/scene/TransitionBuilderImpl;->timestampRange(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
