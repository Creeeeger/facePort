.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;
.super Ljava/lang/Object;
.source "EasingSineFunc.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing;


# static fields
.field private static blacklist mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;-><init>()V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;

    :cond_0
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;

    return-object v0
.end method


# virtual methods
.method public blacklist ease(FFFFLcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;)F
    .locals 2

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc$1;->$SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing:[I

    invoke-virtual {p5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    mul-float v0, p3, p1

    div-float/2addr v0, p4

    add-float/2addr v0, p2

    return v0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->easeOutIn(FFFF)F

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->easeInOut(FFFF)F

    move-result v0

    return v0

    :pswitch_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->easeOut(FFFF)F

    move-result v0

    return v0

    :pswitch_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingSineFunc;->easeIn(FFFF)F

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist easeIn(FFFF)F
    .locals 5

    neg-float v0, p3

    div-float v1, p1, p4

    float-to-double v1, v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    add-float/2addr v0, p2

    return v0
.end method

.method public blacklist easeInOut(FFFF)F
    .locals 5

    neg-float v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    float-to-double v3, p1

    mul-double/2addr v3, v1

    float-to-double v1, p4

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public blacklist easeOut(FFFF)F
    .locals 4

    div-float v0, p1, p4

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    return v0
.end method

.method public blacklist easeOutIn(FFFF)F
    .locals 6

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p4, v0

    cmpg-float v1, p1, v1

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-gez v1, :cond_0

    div-float v1, p3, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, p4

    float-to-double v4, v0

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v1, v0

    add-float/2addr v1, p2

    return v1

    :cond_0
    div-float v1, p3, v0

    neg-float v1, v1

    mul-float v4, p1, v0

    sub-float/2addr v4, p4

    div-float/2addr v4, p4

    float-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    div-float v2, p3, v0

    add-float/2addr v1, v2

    div-float v0, p3, v0

    add-float/2addr v0, p2

    add-float/2addr v1, v0

    return v1
.end method
