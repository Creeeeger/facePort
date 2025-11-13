.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1;
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
.field final synthetic $onRemoveClicked:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $removeButtonAlpha$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $setRemoveButtonCoordinates:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1;->$removeButtonAlpha$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1;->$setRemoveButtonCoordinates:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1;->$onRemoveClicked:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v1}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->access$filledButtonColors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ButtonColors;

    move-result-object v7

    sget-object v2, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/systemui/communal/ui/compose/Dimensions;->ButtonPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v13, v1

    check-cast v13, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x13c09f28

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1;->$removeButtonAlpha$delegate:Landroidx/compose/runtime/State;

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1;->$removeButtonAlpha$delegate:Landroidx/compose/runtime/State;

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v1, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v1, :cond_1

    :cond_0
    new-instance v4, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1$1$1;

    invoke-direct {v4, v3}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1$1$1;-><init>(Landroidx/compose/runtime/State;)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2, v4}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, -0x13c09edc

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v3, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1;->$setRemoveButtonCoordinates:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1;->$setRemoveButtonCoordinates:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v3, :cond_3

    :cond_2
    new-instance v6, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1$2$1;

    invoke-direct {v6, v4}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1$2$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2, v6}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v3, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1;->$onRemoveClicked:Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->INSTANCE:Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/high16 v14, 0x30c00000

    const/16 v15, 0x16c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v15}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
