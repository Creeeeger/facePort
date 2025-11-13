.class public final Landroidx/compose/material3/tokens/SliderTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ActiveHandleLeadingSpace:F

.field public static final ActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledActiveTrackOpacity:F

.field public static final DisabledHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledHandleOpacity:F

.field public static final DisabledInactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledInactiveTrackOpacity:F

.field public static final HandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final HandleHeight:F

.field public static final HandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final HandleWidth:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

.field public static final InactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final InactiveTrackHeight:F

.field public static final StopIndicatorSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/compose/material3/tokens/SliderTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/SliderTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    const-wide/high16 v0, 0x4046000000000000L    # 44.0

    double-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const-wide/high16 v1, 0x4018000000000000L    # 6.0

    double-to-float v1, v1

    sput v1, Landroidx/compose/material3/tokens/SliderTokens;->ActiveHandleLeadingSpace:F

    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    double-to-float v2, v2

    sget-object v3, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/SliderTokens;->ActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    double-to-float v4, v4

    sget-object v5, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->DisabledActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v6, 0x3ec28f5c    # 0.38f

    sput v6, Landroidx/compose/material3/tokens/SliderTokens;->DisabledActiveTrackOpacity:F

    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->DisabledHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput v6, Landroidx/compose/material3/tokens/SliderTokens;->DisabledHandleOpacity:F

    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->DisabledInactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v5, 0x3df5c28f    # 0.12f

    sput v5, Landroidx/compose/material3/tokens/SliderTokens;->DisabledInactiveTrackOpacity:F

    sget-object v5, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SecondaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/SliderTokens;->HandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput v0, Landroidx/compose/material3/tokens/SliderTokens;->HandleHeight:F

    sput-object v1, Landroidx/compose/material3/tokens/SliderTokens;->HandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput v2, Landroidx/compose/material3/tokens/SliderTokens;->HandleWidth:F

    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->InactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput v4, Landroidx/compose/material3/tokens/SliderTokens;->InactiveTrackHeight:F

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Background:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput v2, Landroidx/compose/material3/tokens/SliderTokens;->StopIndicatorSize:F

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Background:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/TypographyKeyTokens;->BodyLarge:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
