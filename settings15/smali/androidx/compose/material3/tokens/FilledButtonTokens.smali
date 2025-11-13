.class public abstract Landroidx/compose/material3/tokens/FilledButtonTokens;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ContainerElevation:F

.field public static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledContainerElevation:F

.field public static final DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final FocusContainerElevation:F

.field public static final HoverContainerElevation:F

.field public static final LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final PressedContainerElevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroidx/compose/material3/tokens/ElevationTokens;->Level0:F

    sput v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerElevation:F

    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledContainerElevation:F

    sput-object v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->FocusContainerElevation:F

    sget v1, Landroidx/compose/material3/tokens/ElevationTokens;->Level1:F

    sput v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->HoverContainerElevation:F

    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnPrimary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->PressedContainerElevation:F

    return-void
.end method
