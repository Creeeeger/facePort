.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1;
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
.field final synthetic $colors:Lcom/android/compose/theme/AndroidColorScheme;

.field final synthetic $model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;


# direct methods
.method public constructor <init>(Lcom/android/compose/theme/AndroidColorScheme;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1;->$colors:Lcom/android/compose/theme/AndroidColorScheme;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1;->$model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/16 v1, 0x10

    int-to-float v1, v1

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 v2, 0x30

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v4, Landroidx/compose/material3/IconButtonColors;

    iget-object v2, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1;->$colors:Lcom/android/compose/theme/AndroidColorScheme;

    iget-wide v9, v2, Lcom/android/compose/theme/AndroidColorScheme;->primary:J

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v15, Landroidx/compose/ui/graphics/Color;->Transparent:J

    const/16 v17, 0x0

    iget-wide v11, v2, Lcom/android/compose/theme/AndroidColorScheme;->onPrimary:J

    move-object v8, v4

    move-wide v13, v15

    invoke-direct/range {v8 .. v17}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1$1;

    iget-object v5, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iget-object v0, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1;->$model:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    invoke-direct {v2, v5, v6, v0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;)V

    sget-object v0, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->INSTANCE:Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->lambda-9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v8, 0x180030

    const/16 v9, 0x24

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v0, v2

    move v2, v5

    move-object v5, v10

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/IconButtonKt;->FilledIconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
