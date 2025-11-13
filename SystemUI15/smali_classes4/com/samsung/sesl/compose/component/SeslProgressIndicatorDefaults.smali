.class public final Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CircularProgressSmall:F

.field public static final INSTANCE:Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;

.field public static final indeterminateCircularPointColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v0, 0x18

    int-to-float v0, v0

    sput v0, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;->CircularProgressSmall:F

    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v0, 0xff23c492L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;->indeterminateCircularPointColor:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
