.class public final Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;

.field public static final RIPPLE_COLOR:J

.field public static final ROUNDED_CORNER_COLOR:J

.field public static final WINDOW_BACKGROUND:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_D3:J

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;->WINDOW_BACKGROUND:J

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->White:J

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;->RIPPLE_COLOR:J

    sget-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_D1:J

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;->ROUNDED_CORNER_COLOR:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x19684571

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dark"

    return-object p0
.end method
