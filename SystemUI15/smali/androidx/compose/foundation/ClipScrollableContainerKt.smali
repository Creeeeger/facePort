.class public abstract Landroidx/compose/foundation/ClipScrollableContainerKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final HorizontalScrollableClipModifier:Landroidx/compose/ui/Modifier;

.field public static final MaxSupportedElevation:F

.field public static final VerticalScrollableClipModifier:Landroidx/compose/ui/Modifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x1e

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Landroidx/compose/foundation/ClipScrollableContainerKt;->MaxSupportedElevation:F

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    new-instance v1, Landroidx/compose/foundation/ClipScrollableContainerKt$HorizontalScrollableClipModifier$1;

    invoke-direct {v1}, Landroidx/compose/foundation/ClipScrollableContainerKt$HorizontalScrollableClipModifier$1;-><init>()V

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sput-object v1, Landroidx/compose/foundation/ClipScrollableContainerKt;->HorizontalScrollableClipModifier:Landroidx/compose/ui/Modifier;

    new-instance v1, Landroidx/compose/foundation/ClipScrollableContainerKt$VerticalScrollableClipModifier$1;

    invoke-direct {v1}, Landroidx/compose/foundation/ClipScrollableContainerKt$VerticalScrollableClipModifier$1;-><init>()V

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/ClipScrollableContainerKt;->VerticalScrollableClipModifier:Landroidx/compose/ui/Modifier;

    return-void
.end method
