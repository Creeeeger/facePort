.class public final Landroidx/compose/material3/IconButtonDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/IconButtonDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/IconButtonDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/IconButtonDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/IconButtonDefaults;->INSTANCE:Landroidx/compose/material3/IconButtonDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultIconButtonColors-4WTKRHQ$material3_release(Landroidx/compose/material3/ColorScheme;J)Landroidx/compose/material3/IconButtonColors;
    .locals 11

    iget-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/material3/IconButtonColors;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->Transparent:J

    const v1, 0x3ec28f5c    # 0.38f

    invoke-static {v1, p1, p2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v1, v0

    move-wide v2, v6

    move-wide v4, p1

    invoke-direct/range {v1 .. v10}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    :cond_0
    return-object v0
.end method

.method public static getDefaultFilledIconButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/IconButtonColors;
    .locals 11

    iget-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/material3/IconButtonColors;

    sget-object v1, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledIconButtonTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v4

    sget-object v1, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v6

    sget v1, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->DisabledContainerOpacity:F

    invoke-static {v1, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v6

    sget-object v1, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->DisabledColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    sget v1, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->DisabledOpacity:F

    invoke-static {v1, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultFilledIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    :cond_0
    return-object v0
.end method

.method public static iconButtonColors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/IconButtonColors;
    .locals 11

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x5a939695

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    iget-wide v4, v0, Landroidx/compose/ui/graphics/Color;->value:J

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroidx/compose/material3/IconButtonDefaults;->defaultIconButtonColors-4WTKRHQ$material3_release(Landroidx/compose/material3/ColorScheme;J)Landroidx/compose/material3/IconButtonColors;

    move-result-object v1

    iget-wide v2, v1, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1

    :cond_0
    const v0, 0x3ec28f5c    # 0.38f

    invoke-static {v0, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v8

    iget-wide v2, v1, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    iget-wide v6, v1, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material3/IconButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/IconButtonColors;

    move-result-object v0

    invoke-virtual {p0, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method

.method public static iconButtonColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/IconButtonColors;
    .locals 9

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    :cond_0
    move-wide v1, p0

    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-object p1, p4

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    iget-wide p2, p0, Landroidx/compose/ui/graphics/Color;->value:J

    :cond_1
    move-wide v3, p2

    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v5, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    const p0, 0x3ec28f5c    # 0.38f

    invoke-static {p0, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v7

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object p0

    sget-object p1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p4, p1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/Color;

    iget-wide p1, p1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/IconButtonDefaults;->defaultIconButtonColors-4WTKRHQ$material3_release(Landroidx/compose/material3/ColorScheme;J)Landroidx/compose/material3/IconButtonColors;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/material3/IconButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/IconButtonColors;

    move-result-object p0

    return-object p0
.end method
