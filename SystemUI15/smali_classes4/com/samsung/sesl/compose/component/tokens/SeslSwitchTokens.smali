.class public final Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens$Companion;

.field public static final darkSwitchTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

.field public static final lightSwitchTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;


# instance fields
.field public final thumbOffColor:J

.field public final thumbOnColor:J

.field public final trackOffColor:J

.field public final trackOnColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->Companion:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens$Companion;

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v12, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v5, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_D6:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v14, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L1:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    move-object v2, v0

    move-wide v3, v12

    move-wide v7, v14

    move-wide v9, v14

    invoke-direct/range {v2 .. v11}, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->lightSwitchTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v5, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_L4:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    move-object v2, v0

    move-wide v3, v12

    move-wide v7, v14

    move-wide v9, v14

    invoke-direct/range {v2 .. v11}, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->darkSwitchTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    return-void
.end method

.method private constructor <init>(JJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOnColor:J

    iput-wide p3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOffColor:J

    iput-wide p5, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOnColor:J

    iput-wide p7, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOffColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;-><init>(JJJJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    iget-wide v3, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOnColor:J

    iget-wide v5, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOnColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOffColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOffColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOnColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOnColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOffColor:J

    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOffColor:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    sget v0, Lkotlin/ULong;->$r8$clinit:I

    iget-wide v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOnColor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOffColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOnColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOffColor:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOnColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOffColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOnColor:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOffColor:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    const-string v3, "SeslSwitchTokens(trackOnColor="

    const-string v4, ", trackOffColor="

    const-string v5, ", thumbOnColor="

    invoke-static {v3, v0, v4, v1, v5}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbOffColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
