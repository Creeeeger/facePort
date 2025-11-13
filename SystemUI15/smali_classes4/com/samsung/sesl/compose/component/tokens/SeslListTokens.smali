.class public final Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/sesl/compose/component/tokens/SeslListTokens$Companion;

.field public static final darkListTokens:Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

.field public static final lightListTokens:Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;


# instance fields
.field public final scrollbarThumbActivateColor:J

.field public final scrollbarThumbInactiveColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->Companion:Lcom/samsung/sesl/compose/component/tokens/SeslListTokens$Companion;

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v8, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue:J

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v1, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v3

    sget-wide v5, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L7:J

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->lightListTokens:Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    invoke-static {v1, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v11

    sget-wide v13, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_D7:J

    const/4 v15, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->darkListTokens:Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbActivateColor:J

    iput-wide p3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbInactiveColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    iget-wide v3, p1, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbActivateColor:J

    iget-wide v5, p0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbActivateColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbInactiveColor:J

    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbInactiveColor:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    sget v0, Lkotlin/ULong;->$r8$clinit:I

    iget-wide v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbActivateColor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbInactiveColor:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbActivateColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbInactiveColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SeslListTokens(scrollbarThumbActivateColor="

    const-string v2, ", scrollbarThumbInactiveColor="

    const-string v3, ")"

    invoke-static {v1, v0, v2, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
