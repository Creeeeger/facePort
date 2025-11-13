.class public abstract Landroidx/compose/foundation/ClipScrollableContainerKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final HorizontalScrollableClipModifier:Landroidx/compose/ui/Modifier;

.field public static final MaxSupportedElevation:F

.field public static final VerticalScrollableClipModifier:Landroidx/compose/ui/Modifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1e

    int-to-float v0, v0

    sput v0, Landroidx/compose/foundation/ClipScrollableContainerKt;->MaxSupportedElevation:F

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    new-instance v1, Landroidx/compose/foundation/ClipScrollableContainerKt$VerticalScrollableClipModifier$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/compose/foundation/ClipScrollableContainerKt$VerticalScrollableClipModifier$1;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sput-object v1, Landroidx/compose/foundation/ClipScrollableContainerKt;->HorizontalScrollableClipModifier:Landroidx/compose/ui/Modifier;

    new-instance v1, Landroidx/compose/foundation/ClipScrollableContainerKt$VerticalScrollableClipModifier$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/compose/foundation/ClipScrollableContainerKt$VerticalScrollableClipModifier$1;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/ClipScrollableContainerKt;->VerticalScrollableClipModifier:Landroidx/compose/ui/Modifier;

    return-void
.end method
