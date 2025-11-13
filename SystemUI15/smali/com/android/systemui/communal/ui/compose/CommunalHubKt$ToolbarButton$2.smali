.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$2;
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

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/android/compose/theme/AndroidColorScheme;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Lcom/android/compose/theme/AndroidColorScheme;",
            "Lkotlin/jvm/functions/Function3;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$2;->$onClick:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$2;->$colors:Lcom/android/compose/theme/AndroidColorScheme;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$2;->$content:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v10, p2

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$2;->$onClick:Lkotlin/jvm/functions/Function0;

    sget-object v2, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    iget-object v3, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$2;->$colors:Lcom/android/compose/theme/AndroidColorScheme;

    iget-wide v3, v3, Lcom/android/compose/theme/AndroidColorScheme;->primary:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v10}, Landroidx/compose/material3/ButtonDefaults;->outlinedButtonColors-ro_MJ88(JLandroidx/compose/runtime/Composer;)Landroidx/compose/material3/ButtonColors;

    move-result-object v4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    double-to-float v2, v2

    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    iget-object v3, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$2;->$colors:Lcom/android/compose/theme/AndroidColorScheme;

    iget-wide v5, v3, Lcom/android/compose/theme/AndroidColorScheme;->primary:J

    invoke-static {v2, v5, v6}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v6

    sget-object v2, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/communal/ui/compose/Dimensions;->ButtonPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    new-instance v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$2$1;

    iget-object v0, v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$2;->$content:Lkotlin/jvm/functions/Function3;

    invoke-direct {v2, v0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$2$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    const v0, -0x351669ae    # -7654185.0f

    invoke-static {v0, v10, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const/high16 v11, 0x30c00000

    const/16 v12, 0x12e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-object v3, v5

    move-object v5, v8

    move-object v8, v13

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt;->OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
