.class public abstract Landroidx/compose/foundation/contextmenu/ContextMenuSpec;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ContainerWidthMax:F

.field public static final ContainerWidthMin:F

.field public static final CornerRadius:F

.field public static final FontSize:J

.field public static final FontWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final HorizontalPadding:F

.field public static final IconSize:F

.field public static final LabelHorizontalTextAlignment:I

.field public static final LabelVerticalTextAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public static final LetterSpacing:J

.field public static final LineHeight:J

.field public static final ListItemHeight:F

.field public static final MenuContainerElevation:F

.field public static final VerticalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x70

    int-to-float v0, v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ContainerWidthMin:F

    const/16 v0, 0x118

    int-to-float v0, v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ContainerWidthMax:F

    const/16 v0, 0x30

    int-to-float v0, v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ListItemHeight:F

    const/4 v0, 0x3

    int-to-float v0, v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->MenuContainerElevation:F

    const/4 v0, 0x4

    int-to-float v0, v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->CornerRadius:F

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LabelVerticalTextAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v0, 0x5

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LabelHorizontalTextAlignment:I

    const/16 v0, 0xc

    int-to-float v0, v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->HorizontalPadding:F

    const/16 v0, 0x8

    int-to-float v0, v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->VerticalPadding:F

    const/16 v0, 0x18

    int-to-float v0, v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->IconSize:F

    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->FontSize:J

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->FontWeight:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x14

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LineHeight:J

    const-wide v0, 0x100000000L

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LetterSpacing:J

    return-void
.end method
