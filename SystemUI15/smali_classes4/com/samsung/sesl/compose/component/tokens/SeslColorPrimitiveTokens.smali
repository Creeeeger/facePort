.class public final Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/sesl/compose/component/tokens/SeslColorSchemeKeyTokens;


# instance fields
.field public final color:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens;->color:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens;

    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens;->color:J

    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens;->color:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    sget v0, Lkotlin/ULong;->$r8$clinit:I

    iget-wide v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens;->color:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens;->color:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SeslColorPrimitiveTokens(color="

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
