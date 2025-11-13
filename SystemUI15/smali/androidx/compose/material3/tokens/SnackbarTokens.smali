.class public final Landroidx/compose/material3/tokens/SnackbarTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ActionLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final ActionLabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field public static final ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final ContainerElevation:F

.field public static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

.field public static final IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final SingleLineContainerHeight:F

.field public static final SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final SupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field public static final TwoLinesContainerHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/SnackbarTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->InversePrimary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->ActionLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/TypographyKeyTokens;->LabelLarge:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->ActionLabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->InverseSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/tokens/ElevationTokens;->Level3:F

    sput v0, Landroidx/compose/material3/tokens/SnackbarTokens;->ContainerElevation:F

    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerExtraSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->InverseOnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/TypographyKeyTokens;->BodyMedium:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->SupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    const-wide/high16 v0, 0x4048000000000000L    # 48.0

    double-to-float v0, v0

    sput v0, Landroidx/compose/material3/tokens/SnackbarTokens;->SingleLineContainerHeight:F

    const-wide/high16 v0, 0x4051000000000000L    # 68.0

    double-to-float v0, v0

    sput v0, Landroidx/compose/material3/tokens/SnackbarTokens;->TwoLinesContainerHeight:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
