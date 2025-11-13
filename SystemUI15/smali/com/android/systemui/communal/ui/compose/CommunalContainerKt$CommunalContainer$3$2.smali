.class final Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
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


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/communal/ui/compose/CommunalContent;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/util/CommunalColors;",
            "Lcom/android/systemui/communal/ui/compose/CommunalContent;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3$2;->$colors:Lcom/android/systemui/communal/util/CommunalColors;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3$2;->$content:Lcom/android/systemui/communal/ui/compose/CommunalContent;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3$2;->$backgroundType$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v0, p1

    check-cast v0, Lcom/android/compose/animation/scene/SceneScope;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0xe

    if-nez p2, :cond_1

    move-object p2, v5

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    or-int/2addr p1, p2

    :cond_1
    and-int/lit8 p2, p1, 0x5b

    const/16 p3, 0x12

    if-ne p2, p3, :cond_3

    move-object p2, v5

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3$2;->$backgroundType$delegate:Landroidx/compose/runtime/State;

    sget-object p3, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->sceneTransitions:Lcom/android/compose/animation/scene/SceneTransitions;

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/communal/shared/model/CommunalBackgroundType;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3$2;->$colors:Lcom/android/systemui/communal/util/CommunalColors;

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$3$2;->$content:Lcom/android/systemui/communal/ui/compose/CommunalContent;

    and-int/lit8 p0, p1, 0xe

    or-int/lit16 v6, p0, 0x1000

    const/16 v7, 0x8

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->access$CommunalScene(Lcom/android/compose/animation/scene/SceneScope;Lcom/android/systemui/communal/shared/model/CommunalBackgroundType;Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/communal/ui/compose/CommunalContent;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
