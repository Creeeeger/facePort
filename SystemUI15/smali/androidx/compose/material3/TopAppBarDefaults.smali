.class public final Landroidx/compose/material3/TopAppBarDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

.field public static final TopAppBarExpandedHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/TopAppBarDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/TopAppBarDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/TopAppBarDefaults;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

    sget-object v0, Landroidx/compose/material3/tokens/TopAppBarSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/TopAppBarSmallTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/tokens/TopAppBarSmallTokens;->ContainerHeight:F

    sput v1, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->INSTANCE:Landroidx/compose/material3/tokens/TopAppBarMediumTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/material3/tokens/TopAppBarLargeTokens;->INSTANCE:Landroidx/compose/material3/tokens/TopAppBarLargeTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultCenterAlignedTopAppBarColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/TopAppBarColors;
    .locals 13

    iget-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultCenterAlignedTopAppBarColorsCached:Landroidx/compose/material3/TopAppBarColors;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/material3/TopAppBarColors;

    sget-object v1, Landroidx/compose/material3/tokens/TopAppBarSmallCenteredTokens;->INSTANCE:Landroidx/compose/material3/tokens/TopAppBarSmallCenteredTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/material3/tokens/TopAppBarSmallCenteredTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    sget-object v1, Landroidx/compose/material3/tokens/TopAppBarSmallCenteredTokens;->OnScrollContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v4

    sget-object v1, Landroidx/compose/material3/tokens/TopAppBarSmallCenteredTokens;->LeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v6

    sget-object v1, Landroidx/compose/material3/tokens/TopAppBarSmallCenteredTokens;->HeadlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    sget-object v1, Landroidx/compose/material3/tokens/TopAppBarSmallCenteredTokens;->TrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroidx/compose/material3/TopAppBarColors;-><init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultCenterAlignedTopAppBarColorsCached:Landroidx/compose/material3/TopAppBarColors;

    :cond_0
    return-object v0
.end method

.method public static pinnedScrollBehavior(Landroidx/compose/material3/TopAppBarState;Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/PinnedScrollBehavior;
    .locals 1

    sget-object p1, Landroidx/compose/material3/TopAppBarDefaults$pinnedScrollBehavior$1;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults$pinnedScrollBehavior$1;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Landroidx/compose/material3/PinnedScrollBehavior;

    invoke-direct {v0, p0, p1}, Landroidx/compose/material3/PinnedScrollBehavior;-><init>(Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
