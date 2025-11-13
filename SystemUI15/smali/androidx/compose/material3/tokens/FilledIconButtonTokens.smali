.class public final Landroidx/compose/material3/tokens/FilledIconButtonTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final ContainerHeight:F

.field public static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final ContainerWidth:F

.field public static final DisabledColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledContainerOpacity:F

.field public static final DisabledOpacity:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/FilledIconButtonTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/FilledIconButtonTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/FilledIconButtonTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledIconButtonTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    double-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->ContainerHeight:F

    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput v0, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->ContainerWidth:F

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v1, 0x3df5c28f    # 0.12f

    sput v1, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->DisabledContainerOpacity:F

    sput-object v0, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->DisabledColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v0, 0x3ec28f5c    # 0.38f

    sput v0, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->DisabledOpacity:F

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Background:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Background:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Background:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
