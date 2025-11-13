.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;
.super Ljava/lang/Object;
.source "EasingQuintic.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing;


# static fields
.field private static blacklist mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;
    .locals 1

    .line 8
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;-><init>()V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;

    .line 10
    :cond_0
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->mInstance:Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;

    return-object v0
.end method


# virtual methods
.method public blacklist ease(FFFFLcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;)F
    .locals 2
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F
    .param p5, "easing"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;

    .line 41
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic$1;->$SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing:[I

    invoke-virtual {p5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/IEasing$EEasing;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 43
    mul-float v0, p3, p1

    div-float/2addr v0, p4

    add-float/2addr v0, p2

    return v0

    .line 51
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->easeOutIn(FFFF)F

    move-result v0

    return v0

    .line 49
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->easeInOut(FFFF)F

    move-result v0

    return v0

    .line 47
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->easeOut(FFFF)F

    move-result v0

    return v0

    .line 45
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->easeIn(FFFF)F

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
    .locals 1
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .line 15
    div-float v0, p1, p4

    move p1, v0

    mul-float/2addr v0, p3

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    return v0
.end method

.method public blacklist easeInOut(FFFF)F
    .locals 3
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .line 20
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p4, v0

    div-float v1, p1, v1

    move p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 21
    div-float v0, p3, v0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    return v0

    .line 23
    :cond_0
    div-float v1, p3, v0

    sub-float v2, p1, v0

    move p1, v2

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    return v1
.end method

.method public blacklist easeOut(FFFF)F
    .locals 2
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .line 28
    div-float v0, p1, p4

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    move p1, v0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    return v0
.end method

.method public blacklist easeOutIn(FFFF)F
    .locals 3
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .line 33
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p4, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 34
    div-float v1, p3, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, p4

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    move p1, v0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    mul-float/2addr v1, v0

    add-float/2addr v1, p2

    return v1

    .line 36
    :cond_0
    div-float v1, p3, v0

    mul-float v2, p1, v0

    sub-float/2addr v2, p4

    div-float/2addr v2, p4

    move p1, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    div-float v0, p3, v0

    add-float/2addr v0, p2

    add-float/2addr v1, v0

    return v1
.end method
