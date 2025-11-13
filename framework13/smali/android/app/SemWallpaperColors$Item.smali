.class public Landroid/app/SemWallpaperColors$Item;
.super Ljava/lang/Object;
.source "SemWallpaperColors.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemWallpaperColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private blacklist mFontColor:I

.field private blacklist mFontColorRgb:I

.field private blacklist mHSV:[F

.field private blacklist mLeftLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

.field private blacklist mLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

.field private blacklist mRightLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

.field private blacklist mShadowOpacity:F

.field private blacklist mShadowSize:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFontColor(Landroid/app/SemWallpaperColors$Item;)I
    .locals 0

    iget p0, p0, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHSV(Landroid/app/SemWallpaperColors$Item;)[F
    .locals 0

    invoke-direct {p0}, Landroid/app/SemWallpaperColors$Item;->getHSV()[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLeftLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 0

    invoke-direct {p0}, Landroid/app/SemWallpaperColors$Item;->getLeftLegibilityResult()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 0

    invoke-direct {p0}, Landroid/app/SemWallpaperColors$Item;->getLegibilityResult()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRightLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 0

    invoke-direct {p0}, Landroid/app/SemWallpaperColors$Item;->getRightLegibilityResult()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetFontColor(Landroid/app/SemWallpaperColors$Item;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColors$Item;->setFontColor(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColors$Item;->setFontColorRgb(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHSV(Landroid/app/SemWallpaperColors$Item;[F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColors$Item;->setHSV([F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetShadowOpacity(Landroid/app/SemWallpaperColors$Item;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColors$Item;->setShadowOpacity(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetShadowSize(Landroid/app/SemWallpaperColors$Item;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColors$Item;->setShadowSize(F)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 1413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1408
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    .line 1409
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1410
    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mLeftLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1411
    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mRightLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1414
    return-void
.end method

.method public constructor blacklist <init>(IFF)V
    .locals 1
    .param p1, "fontColor"    # I
    .param p2, "shadowSize"    # F
    .param p3, "shadowOpacity"    # F

    .line 1416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1408
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    .line 1409
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1410
    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mLeftLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1411
    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mRightLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1417
    iput p1, p0, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    .line 1418
    if-nez p1, :cond_0

    .line 1419
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/SemWallpaperColors$Item;->mFontColorRgb:I

    goto :goto_0

    .line 1421
    :cond_0
    const/high16 v0, -0x1000000

    iput v0, p0, Landroid/app/SemWallpaperColors$Item;->mFontColorRgb:I

    .line 1423
    :goto_0
    iput p2, p0, Landroid/app/SemWallpaperColors$Item;->mShadowSize:F

    .line 1424
    iput p3, p0, Landroid/app/SemWallpaperColors$Item;->mShadowOpacity:F

    .line 1425
    return-void
.end method

.method public constructor blacklist <init>(IIFF[FLcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)V
    .locals 1
    .param p1, "fontColor"    # I
    .param p2, "fontColorRgb"    # I
    .param p3, "shadowSize"    # F
    .param p4, "shadowOpacity"    # F
    .param p5, "hsv"    # [F
    .param p6, "legibilityResult"    # Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1408
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    .line 1409
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1410
    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mLeftLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1411
    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mRightLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1437
    iput p1, p0, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    .line 1438
    iput p2, p0, Landroid/app/SemWallpaperColors$Item;->mFontColorRgb:I

    .line 1439
    iput p3, p0, Landroid/app/SemWallpaperColors$Item;->mShadowSize:F

    .line 1440
    iput p4, p0, Landroid/app/SemWallpaperColors$Item;->mShadowOpacity:F

    .line 1441
    iput-object p5, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    .line 1442
    iput-object p6, p0, Landroid/app/SemWallpaperColors$Item;->mLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1443
    return-void
.end method

.method public constructor blacklist <init>(IILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)V
    .locals 1
    .param p1, "fontColor"    # I
    .param p2, "fontColorRgb"    # I
    .param p3, "leftLegibilityResult"    # Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .param p4, "rightLegibilityResult"    # Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1408
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    .line 1409
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1410
    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mLeftLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1411
    iput-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mRightLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1428
    iput p1, p0, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    .line 1429
    iput p2, p0, Landroid/app/SemWallpaperColors$Item;->mFontColorRgb:I

    .line 1430
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/SemWallpaperColors$Item;->mShadowSize:F

    .line 1431
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroid/app/SemWallpaperColors$Item;->mShadowOpacity:F

    .line 1432
    iput-object p3, p0, Landroid/app/SemWallpaperColors$Item;->mLeftLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1433
    iput-object p4, p0, Landroid/app/SemWallpaperColors$Item;->mRightLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1434
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/SemWallpaperColors$Item-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/SemWallpaperColors$Item;-><init>()V

    return-void
.end method

.method private blacklist getHSV()[F
    .locals 1

    .line 1486
    iget-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    return-object v0
.end method

.method private blacklist getLeftLegibilityResult()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 1

    .line 1494
    iget-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mLeftLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    return-object v0
.end method

.method private blacklist getLegibilityResult()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 1

    .line 1490
    iget-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    return-object v0
.end method

.method private blacklist getRightLegibilityResult()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 1

    .line 1498
    iget-object v0, p0, Landroid/app/SemWallpaperColors$Item;->mRightLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    return-object v0
.end method

.method private blacklist setFontColor(I)V
    .locals 0
    .param p1, "fontColor"    # I

    .line 1446
    iput p1, p0, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    .line 1447
    return-void
.end method

.method private blacklist setFontColorRgb(I)V
    .locals 0
    .param p1, "fontColorRgb"    # I

    .line 1450
    iput p1, p0, Landroid/app/SemWallpaperColors$Item;->mFontColorRgb:I

    .line 1451
    return-void
.end method

.method private blacklist setHSV([F)V
    .locals 0
    .param p1, "hsv"    # [F

    .line 1462
    iput-object p1, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    .line 1463
    return-void
.end method

.method private blacklist setShadowOpacity(F)V
    .locals 0
    .param p1, "shadowOpacity"    # F

    .line 1458
    iput p1, p0, Landroid/app/SemWallpaperColors$Item;->mShadowOpacity:F

    .line 1459
    return-void
.end method

.method private blacklist setShadowSize(F)V
    .locals 0
    .param p1, "shadowSize"    # F

    .line 1454
    iput p1, p0, Landroid/app/SemWallpaperColors$Item;->mShadowSize:F

    .line 1455
    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/app/SemWallpaperColors$Item;
    .locals 4

    .line 1568
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors$Item;

    .line 1569
    .local v0, "item":Landroid/app/SemWallpaperColors$Item;
    iget-object v1, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    if-eqz v1, :cond_0

    .line 1570
    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    .line 1571
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1572
    iget-object v3, v0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    aget v2, v2, v1

    aput v2, v3, v1

    .line 1571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1576
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/app/SemWallpaperColors$Item;->mLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    if-eqz v1, :cond_1

    .line 1577
    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->clone()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v1

    iput-object v1, v0, Landroid/app/SemWallpaperColors$Item;->mLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1579
    :cond_1
    iget-object v1, p0, Landroid/app/SemWallpaperColors$Item;->mLeftLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    if-eqz v1, :cond_2

    .line 1580
    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->clone()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v1

    iput-object v1, v0, Landroid/app/SemWallpaperColors$Item;->mLeftLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 1582
    :cond_2
    iget-object v1, p0, Landroid/app/SemWallpaperColors$Item;->mRightLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    if-eqz v1, :cond_3

    .line 1583
    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->clone()Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v1

    iput-object v1, v0, Landroid/app/SemWallpaperColors$Item;->mRightLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    :cond_3
    return-object v0

    .line 1587
    .end local v0    # "item":Landroid/app/SemWallpaperColors$Item;
    :catch_0
    move-exception v0

    .line 1588
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 1591
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1402
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->clone()Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1503
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1505
    :cond_0
    instance-of v1, p1, Landroid/app/SemWallpaperColors$Item;

    if-eqz v1, :cond_5

    .line 1506
    move-object v1, p1

    check-cast v1, Landroid/app/SemWallpaperColors$Item;

    .line 1507
    .local v1, "item":Landroid/app/SemWallpaperColors$Item;
    iget v2, v1, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    iget v3, p0, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    if-eq v2, v3, :cond_1

    return v0

    .line 1508
    :cond_1
    iget v2, v1, Landroid/app/SemWallpaperColors$Item;->mFontColorRgb:I

    iget v3, p0, Landroid/app/SemWallpaperColors$Item;->mFontColorRgb:I

    if-eq v2, v3, :cond_2

    return v0

    .line 1509
    :cond_2
    iget v2, v1, Landroid/app/SemWallpaperColors$Item;->mShadowSize:F

    iget v3, p0, Landroid/app/SemWallpaperColors$Item;->mShadowSize:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    return v0

    .line 1510
    :cond_3
    iget v2, v1, Landroid/app/SemWallpaperColors$Item;->mShadowOpacity:F

    iget v3, p0, Landroid/app/SemWallpaperColors$Item;->mShadowOpacity:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    return v0

    .line 1512
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 1515
    .end local v1    # "item":Landroid/app/SemWallpaperColors$Item;
    :cond_5
    return v0
.end method

.method public blacklist equals(Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "compareType"    # I

    .line 1519
    move-object v0, p1

    check-cast v0, Landroid/app/SemWallpaperColors$Item;

    .line 1521
    .local v0, "item":Landroid/app/SemWallpaperColors$Item;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1523
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1538
    iget v2, v0, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    iget v3, p0, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    if-eq v2, v3, :cond_2

    return v1

    .line 1534
    :pswitch_0
    iget v2, v0, Landroid/app/SemWallpaperColors$Item;->mFontColorRgb:I

    iget v3, p0, Landroid/app/SemWallpaperColors$Item;->mFontColorRgb:I

    if-eq v2, v3, :cond_2

    return v1

    .line 1529
    :pswitch_1
    iget v2, v0, Landroid/app/SemWallpaperColors$Item;->mShadowSize:F

    iget v3, p0, Landroid/app/SemWallpaperColors$Item;->mShadowSize:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    return v1

    .line 1530
    :cond_1
    iget v2, v0, Landroid/app/SemWallpaperColors$Item;->mShadowOpacity:F

    iget v3, p0, Landroid/app/SemWallpaperColors$Item;->mShadowOpacity:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    return v1

    .line 1525
    :pswitch_2
    iget v2, v0, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    iget v3, p0, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    if-eq v2, v3, :cond_2

    return v1

    .line 1541
    :cond_2
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getFontColor()I
    .locals 1

    .line 1466
    iget v0, p0, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    return v0
.end method

.method public blacklist getFontColorRgb()I
    .locals 1

    .line 1470
    iget v0, p0, Landroid/app/SemWallpaperColors$Item;->mFontColorRgb:I

    return v0
.end method

.method public blacklist getFontColorRgb(I)I
    .locals 1
    .param p1, "prevFontColorRgb"    # I

    .line 1474
    iget v0, p0, Landroid/app/SemWallpaperColors$Item;->mFontColorRgb:I

    invoke-static {v0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->getUnequivalanttColor(II)I

    move-result v0

    return v0
.end method

.method public blacklist getShadowOpacity()F
    .locals 1

    .line 1482
    iget v0, p0, Landroid/app/SemWallpaperColors$Item;->mShadowOpacity:F

    return v0
.end method

.method public blacklist getShadowSize()F
    .locals 1

    .line 1478
    iget v0, p0, Landroid/app/SemWallpaperColors$Item;->mShadowSize:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 1546
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 1551
    const-string v0, ""

    .line 1552
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors$Item;->mFontColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/SemWallpaperColors$Item;->mFontColorRgb:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/SemWallpaperColors$Item;->mShadowSize:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/SemWallpaperColors$Item;->mShadowOpacity:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1553
    iget-object v1, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    const-string v3, ", "

    if-eqz v1, :cond_0

    .line 1554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/app/SemWallpaperColors$Item;->mHSV:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1556
    :cond_0
    iget-object v1, p0, Landroid/app/SemWallpaperColors$Item;->mLeftLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    if-eqz v1, :cond_1

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/app/SemWallpaperColors$Item;->mLeftLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    iget-object v4, v4, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/app/SemWallpaperColors$Item;->mLeftLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    iget v4, v4, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColor:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1559
    :cond_1
    iget-object v1, p0, Landroid/app/SemWallpaperColors$Item;->mRightLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    if-eqz v1, :cond_2

    .line 1560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/SemWallpaperColors$Item;->mRightLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    iget-object v3, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SemWallpaperColors$Item;->mRightLegibilityResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    iget v2, v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1562
    :cond_2
    return-object v0
.end method
