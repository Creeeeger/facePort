.class public final Landroid/view/WindowInsets$Type;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsets$Type$InsetsType;
    }
.end annotation


# static fields
.field static final blacklist CAPTION_BAR:I = 0x4

.field static final blacklist DISPLAY_CUTOUT:I = 0x80

.field static final blacklist FIRST:I = 0x1

.field static final blacklist IME:I = 0x8

.field static final blacklist LAST:I = 0x100

.field static final blacklist MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final blacklist NAVIGATION_BARS:I = 0x2

.field static final blacklist SIZE:I = 0x9

.field static final blacklist STATUS_BARS:I = 0x1

.field static final blacklist SYSTEM_GESTURES:I = 0x10

.field static final blacklist TAPPABLE_ELEMENT:I = 0x40

.field static final blacklist WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 1492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    return-void
.end method

.method public static blacklist all()I
    .locals 1

    .line 1599
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist captionBar()I
    .locals 1

    .line 1520
    const/4 v0, 0x4

    return v0
.end method

.method public static whitelist displayCutout()I
    .locals 1

    .line 1582
    const/16 v0, 0x80

    return v0
.end method

.method public static whitelist ime()I
    .locals 1

    .line 1527
    const/16 v0, 0x8

    return v0
.end method

.method static blacklist indexOf(I)I
    .locals 3
    .param p0, "type"    # I

    .line 1432
    sparse-switch p0, :sswitch_data_0

    .line 1452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1450
    :sswitch_0
    const/16 v0, 0x8

    return v0

    .line 1448
    :sswitch_1
    const/4 v0, 0x7

    return v0

    .line 1446
    :sswitch_2
    const/4 v0, 0x6

    return v0

    .line 1444
    :sswitch_3
    const/4 v0, 0x5

    return v0

    .line 1442
    :sswitch_4
    const/4 v0, 0x4

    return v0

    .line 1440
    :sswitch_5
    const/4 v0, 0x3

    return v0

    .line 1438
    :sswitch_6
    const/4 v0, 0x2

    return v0

    .line 1436
    :sswitch_7
    const/4 v0, 0x1

    return v0

    .line 1434
    :sswitch_8
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x4 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist mandatorySystemGestures()I
    .locals 1

    .line 1555
    const/16 v0, 0x20

    return v0
.end method

.method public static whitelist navigationBars()I
    .locals 1

    .line 1513
    const/4 v0, 0x2

    return v0
.end method

.method public static whitelist statusBars()I
    .locals 1

    .line 1506
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist systemBars()I
    .locals 1

    .line 1590
    const/4 v0, 0x7

    return v0
.end method

.method public static whitelist systemGestures()I
    .locals 1

    .line 1548
    const/16 v0, 0x10

    return v0
.end method

.method public static whitelist tappableElement()I
    .locals 1

    .line 1562
    const/16 v0, 0x40

    return v0
.end method

.method static blacklist toString(I)Ljava/lang/String;
    .locals 3
    .param p0, "types"    # I

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1459
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 1460
    const-string/jumbo v1, "statusBars |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 1463
    const-string/jumbo v1, "navigationBars |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 1466
    const-string v1, "captionBar |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 1469
    const-string v1, "ime |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 1472
    const-string/jumbo v1, "systemGestures |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    .line 1475
    const-string/jumbo v1, "mandatorySystemGestures |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    .line 1478
    const-string/jumbo v1, "tappableElement |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    .line 1481
    const-string v1, "displayCutout |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    .line 1484
    const-string/jumbo v1, "windowDecor |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 1487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1489
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
