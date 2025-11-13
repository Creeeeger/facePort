.class public abstract Landroidx/compose/material3/MenuDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final ShadowElevation:F

.field public static final TonalElevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroidx/compose/material3/tokens/ElevationTokens;->Level0:F

    sput v0, Landroidx/compose/material3/MenuDefaults;->TonalElevation:F

    sget v0, Landroidx/compose/material3/tokens/MenuTokens;->ContainerElevation:F

    sput v0, Landroidx/compose/material3/MenuDefaults;->ShadowElevation:F

    sget v0, Landroidx/compose/material3/MenuKt;->DropdownMenuItemHorizontalPadding:F

    const/4 v1, 0x0

    int-to-float v1, v1

    new-instance v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v2, v0, v1, v0, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    sput-object v2, Landroidx/compose/material3/MenuDefaults;->DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    return-void
.end method
