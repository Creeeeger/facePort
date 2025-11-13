.class public final Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Functional_Orange_Dark:J

.field public static final Functional_Orange_Light:J

.field public static final GRAYSCALE_D1:J

.field public static final GRAYSCALE_D3:J

.field public static final GRAYSCALE_D5:J

.field public static final GRAYSCALE_D7:J

.field public static final GRAYSCALE_D9:J

.field public static final GRAYSCALE_L1:J

.field public static final GRAYSCALE_L3:J

.field public static final GRAYSCALE_L5:J

.field public static final GRAYSCALE_L7:J

.field public static final GRAYSCALE_L8:J

.field public static final GRAYSCALE_L9:J

.field public static final GRAY_TEXT_D1:J

.field public static final GRAY_TEXT_D2:J

.field public static final GRAY_TEXT_D6:J

.field public static final GRAY_TEXT_L1:J

.field public static final GRAY_TEXT_L2:J

.field public static final GRAY_TEXT_L4:J

.field public static final GRAY_TEXT_L5:J

.field public static final INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

.field public static final Primary_Blue:J

.field public static final Primary_Blue_Point_Dark:J

.field public static final Primary_Blue_Point_Light:J

.field public static final Primary_Blue_Text_Dark:J

.field public static final Primary_Blue_Text_Light:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    const-wide v0, 0xff387affL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue:J

    const-wide v0, 0xff376fdeL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Point_Light:J

    const-wide v2, 0xff578fffL

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Point_Dark:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Text_Light:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Text_Dark:J

    const-wide v0, 0xfffafafaL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v0, 0xff252525L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v0, 0xffd93e36L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v2, 0xfffc6c65L

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v0, 0xff11a85fL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v2, 0xff58db9cL

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v0, 0xffe65b17L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Functional_Orange_Light:J

    const-wide v2, 0xfffc864cL

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Functional_Orange_Dark:J

    const-wide v0, 0xff010102L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_D1:J

    const-wide v2, 0xff101013L

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v2, 0xff17171aL

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_D3:J

    const-wide v2, 0xff2d2d30L

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v2, 0xff3a3a3dL

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_D5:J

    const-wide v2, 0xff47474aL

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v2, 0xff5a5a5dL

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_D7:J

    const-wide v2, 0xff69696cL

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v2, 0xff77777aL

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_D9:J

    const-wide v2, 0xff8d8d90L

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v4, 0xfffcfcffL

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L1:J

    const-wide v4, 0xfff6f6f8L

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v4, 0xfff1f1f3L

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L3:J

    const-wide v4, 0xffeeeef0L

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v4, 0xffe9e9ecL

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v6

    sput-wide v6, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L5:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v4, 0xffdedee1L

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L7:J

    const-wide v4, 0xffc9c9ccL

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L8:J

    const-wide v4, 0xffa6a6a9L

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L9:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_L1:J

    const-wide v0, 0xff252528L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_L2:J

    const-wide v0, 0xff4d4d52L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v0, 0xff636368L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_L4:J

    const-wide v0, 0xff848487L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_L5:J

    const-wide v0, 0xff929295L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v0, 0xfffafaffL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_D1:J

    const-wide v0, 0xffeaeaebL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_D2:J

    const-wide v0, 0xffccccceL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v0, 0xffb7b7bbL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v0, 0xffa3a3a7L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    const-wide v0, 0xff99999eL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_D6:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
