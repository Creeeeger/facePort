.class public final Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;

.field public static final RIPPLE_COLOR:J

.field public static final ROUNDED_CORNER_COLOR:J

.field public static final WINDOW_BACKGROUND:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L1:J

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;->WINDOW_BACKGROUND:J

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;->RIPPLE_COLOR:J

    sget-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L3:J

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;->ROUNDED_CORNER_COLOR:J

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
    instance-of p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x132c32e3

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Light"

    return-object p0
.end method
