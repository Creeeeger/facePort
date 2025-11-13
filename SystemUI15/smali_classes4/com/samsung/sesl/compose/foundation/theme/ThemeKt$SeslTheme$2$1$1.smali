.class final Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1$1;->$content:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 86

    move-object/from16 v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move-object v0, v4

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    sget-object v1, Lcom/samsung/sesl/compose/foundation/theme/SeslTheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslTheme;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/samsung/sesl/compose/foundation/theme/SeslTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    move-result-object v1

    iget-wide v1, v1, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->primary:J

    invoke-static {v4}, Lcom/samsung/sesl/compose/foundation/theme/SeslTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    move-result-object v3

    iget-wide v5, v3, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->subText:J

    invoke-static {v4}, Lcom/samsung/sesl/compose/foundation/theme/SeslTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    move-result-object v3

    iget-wide v7, v3, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->background:J

    const/16 v3, -0x2022

    and-int/lit8 v11, v3, 0x1

    if-eqz v11, :cond_2

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->primary:J

    :cond_2
    move-wide v12, v1

    iget-wide v14, v0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    iget-wide v9, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    move-object/from16 v85, v4

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    const/16 v11, -0x2022

    and-int/lit8 v16, v11, 0x20

    if-eqz v16, :cond_3

    iget-wide v5, v0, Landroidx/compose/material3/ColorScheme;->secondary:J

    :cond_3
    move-wide/from16 v22, v5

    iget-wide v5, v0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    move-wide/from16 v16, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    move-wide/from16 v26, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    move-wide/from16 v28, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    move-wide/from16 v30, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    move-wide/from16 v32, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    move-wide/from16 v34, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    move-wide/from16 v36, v7

    const/16 v11, -0x2022

    and-int/lit16 v7, v11, 0x2000

    if-eqz v7, :cond_4

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->background:J

    move-wide/from16 v38, v7

    goto :goto_1

    :cond_4
    move-wide/from16 v38, v16

    :goto_1
    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    const v16, 0x8000

    and-int v11, v11, v16

    move-wide/from16 v40, v7

    if-eqz v11, :cond_5

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->surface:J

    move-wide/from16 v42, v7

    goto :goto_2

    :cond_5
    const-wide/16 v42, 0x0

    :goto_2
    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    move-wide/from16 v44, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    move-wide/from16 v46, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    move-wide/from16 v48, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    move-wide/from16 v50, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    move-wide/from16 v52, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    move-wide/from16 v54, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->error:J

    move-wide/from16 v56, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->onError:J

    move-wide/from16 v58, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    move-wide/from16 v60, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    move-wide/from16 v62, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->outline:J

    move-wide/from16 v64, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    move-wide/from16 v66, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->scrim:J

    move-wide/from16 v68, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    move-wide/from16 v70, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    move-wide/from16 v72, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    move-wide/from16 v74, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    move-wide/from16 v76, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    move-wide/from16 v78, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    move-wide/from16 v80, v7

    iget-wide v7, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/material3/ColorScheme;

    move-object v11, v0

    const/16 v84, 0x0

    move-wide/from16 v16, v1

    move-wide/from16 v18, v9

    move-wide/from16 v20, v3

    move-wide/from16 v24, v5

    move-wide/from16 v82, v7

    invoke-direct/range {v11 .. v84}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p0

    iget-object v3, v1, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1$1;->$content:Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v4, v85

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
