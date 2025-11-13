.class public final Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/battery/unified/BatteryColors;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;

.field public static final activeFill:I

.field public static final bg:I

.field public static final errorFill:I

.field public static final fg:I

.field public static final fill:I

.field public static final fillOnly:I

.field public static final warnFill:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;

    invoke-direct {v0}, Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;-><init>()V

    sput-object v0, Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;->INSTANCE:Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e6147ae    # 0.22f

    invoke-static {v0, v0, v0, v1}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    const-string v0, "#9AA0A6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const-string v0, "#80868B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const-string v0, "#34A853"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const-string v0, "#FBBC04"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const-string v0, "#EA4335"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

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
    instance-of p0, p1, Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x2eab0210

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "LightThemeColors"

    return-object p0
.end method
