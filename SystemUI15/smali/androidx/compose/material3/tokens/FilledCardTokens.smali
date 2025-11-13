.class public final Landroidx/compose/material3/tokens/FilledCardTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final ContainerElevation:F

.field public static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledContainerElevation:F

.field public static final DisabledContainerOpacity:F

.field public static final DraggedContainerElevation:F

.field public static final FocusContainerElevation:F

.field public static final HoverContainerElevation:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

.field public static final PressedContainerElevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/material3/tokens/FilledCardTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/FilledCardTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/FilledCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceContainerHighest:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/FilledCardTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/tokens/ElevationTokens;->Level0:F

    sput v1, Landroidx/compose/material3/tokens/FilledCardTokens;->ContainerElevation:F

    sget-object v2, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerMedium:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/FilledCardTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sget-object v2, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/FilledCardTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput v1, Landroidx/compose/material3/tokens/FilledCardTokens;->DisabledContainerElevation:F

    const v2, 0x3ec28f5c    # 0.38f

    sput v2, Landroidx/compose/material3/tokens/FilledCardTokens;->DisabledContainerOpacity:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/material3/tokens/ElevationTokens;->Level3:F

    sput v2, Landroidx/compose/material3/tokens/FilledCardTokens;->DraggedContainerElevation:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput v1, Landroidx/compose/material3/tokens/FilledCardTokens;->FocusContainerElevation:F

    sget-object v2, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Background:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/material3/tokens/ElevationTokens;->Level1:F

    sput v2, Landroidx/compose/material3/tokens/FilledCardTokens;->HoverContainerElevation:F

    sget-object v2, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Background:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput v1, Landroidx/compose/material3/tokens/FilledCardTokens;->PressedContainerElevation:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
