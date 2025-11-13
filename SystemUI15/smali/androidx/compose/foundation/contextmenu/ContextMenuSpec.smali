.class public final Landroidx/compose/foundation/contextmenu/ContextMenuSpec;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ContainerWidthMax:F

.field public static final ContainerWidthMin:F

.field public static final CornerRadius:F

.field public static final FontSize:J

.field public static final FontWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final HorizontalPadding:F

.field public static final INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuSpec;

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

    new-instance v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;

    invoke-direct {v0}, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;-><init>()V

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuSpec;

    const/16 v0, 0x70

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

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

    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LabelVerticalTextAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/style/TextAlign;->Start:I

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

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
