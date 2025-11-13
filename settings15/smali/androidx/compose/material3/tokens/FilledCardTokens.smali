.class public abstract Landroidx/compose/material3/tokens/FilledCardTokens;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ContainerElevation:F

.field public static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledContainerElevation:F

.field public static final DisabledContainerOpacity:F

.field public static final DraggedContainerElevation:F

.field public static final FocusContainerElevation:F

.field public static final HoverContainerElevation:F

.field public static final PressedContainerElevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroidx/compose/material3/tokens/ElevationTokens;->Level0:F

    sput v0, Landroidx/compose/material3/tokens/FilledCardTokens;->ContainerElevation:F

    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerMedium:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/FilledCardTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/FilledCardTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput v0, Landroidx/compose/material3/tokens/FilledCardTokens;->DisabledContainerElevation:F

    const v1, 0x3ec28f5c    # 0.38f

    sput v1, Landroidx/compose/material3/tokens/FilledCardTokens;->DisabledContainerOpacity:F

    sget v1, Landroidx/compose/material3/tokens/ElevationTokens;->Level3:F

    sput v1, Landroidx/compose/material3/tokens/FilledCardTokens;->DraggedContainerElevation:F

    sput v0, Landroidx/compose/material3/tokens/FilledCardTokens;->FocusContainerElevation:F

    sget v1, Landroidx/compose/material3/tokens/ElevationTokens;->Level1:F

    sput v1, Landroidx/compose/material3/tokens/FilledCardTokens;->HoverContainerElevation:F

    sput v0, Landroidx/compose/material3/tokens/FilledCardTokens;->PressedContainerElevation:F

    return-void
.end method
