.class public final Landroidx/compose/material3/CardDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/CardDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/CardDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/CardDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cardColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;
    .locals 21

    move-wide/from16 v0, p0

    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_0

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-object/from16 v2, p4

    move-wide/from16 v3, p2

    :goto_0
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v5, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    const v7, 0x3ec28f5c    # 0.38f

    invoke-static {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v7

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p4 .. p4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material3/CardDefaults;->getDefaultCardColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;

    move-result-object v2

    const-wide/16 v9, 0x10

    cmp-long v11, v0, v9

    if-eqz v11, :cond_1

    :goto_1
    move-wide v12, v0

    goto :goto_2

    :cond_1
    iget-wide v0, v2, Landroidx/compose/material3/CardColors;->containerColor:J

    goto :goto_1

    :goto_2
    cmp-long v0, v3, v9

    if-eqz v0, :cond_2

    :goto_3
    move-wide v14, v3

    goto :goto_4

    :cond_2
    iget-wide v3, v2, Landroidx/compose/material3/CardColors;->contentColor:J

    goto :goto_3

    :goto_4
    cmp-long v0, v5, v9

    if-eqz v0, :cond_3

    :goto_5
    move-wide/from16 v16, v5

    goto :goto_6

    :cond_3
    iget-wide v5, v2, Landroidx/compose/material3/CardColors;->disabledContainerColor:J

    goto :goto_5

    :goto_6
    cmp-long v0, v7, v9

    if-eqz v0, :cond_4

    :goto_7
    move-wide/from16 v18, v7

    goto :goto_8

    :cond_4
    iget-wide v7, v2, Landroidx/compose/material3/CardColors;->disabledContentColor:J

    goto :goto_7

    :goto_8
    new-instance v0, Landroidx/compose/material3/CardColors;

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Landroidx/compose/material3/CardColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static getDefaultCardColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;
    .locals 11

    iget-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultCardColorsCached:Landroidx/compose/material3/CardColors;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/material3/CardColors;

    sget-object v1, Landroidx/compose/material3/tokens/FilledCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/material3/tokens/FilledCardTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material3/tokens/FilledCardTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v6

    sget v8, Landroidx/compose/material3/tokens/FilledCardTokens;->DisabledContainerOpacity:F

    invoke-static {v8, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v6

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v6

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v8

    const v1, 0x3ec28f5c    # 0.38f

    invoke-static {v1, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroidx/compose/material3/CardColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultCardColorsCached:Landroidx/compose/material3/CardColors;

    :cond_0
    return-object v0
.end method
