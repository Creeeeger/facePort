.class final Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;
.super Ljava/lang/Object;
.source "TouchEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cmfa/AuthTouch/TouchEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private blacklist mChars:[C

.field private blacklist mLength:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mChars:[C

    .line 429
    return-void
.end method

.method private blacklist reserve(I)I
    .locals 7
    .param p1, "length"    # I

    .line 521
    iget v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mLength:I

    .line 522
    .local v0, "oldLength":I
    iget v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mLength:I

    add-int/2addr v1, p1

    .line 523
    .local v1, "newLength":I
    iget-object v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mChars:[C

    .line 524
    .local v2, "oldChars":[C
    array-length v3, v2

    .line 525
    .local v3, "oldCapacity":I
    if-le v1, v3, :cond_0

    .line 526
    mul-int/lit8 v4, v3, 0x2

    .line 527
    .local v4, "newCapacity":I
    new-array v5, v4, [C

    .line 528
    .local v5, "newChars":[C
    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    iput-object v5, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mChars:[C

    .line 531
    .end local v4    # "newCapacity":I
    .end local v5    # "newChars":[C
    :cond_0
    return v0
.end method


# virtual methods
.method public blacklist append(FI)Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;
    .locals 5
    .param p1, "value"    # F
    .param p2, "precision"    # I

    .line 493
    const/4 v0, 0x1

    .line 494
    .local v0, "scale":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 495
    mul-int/lit8 v0, v0, 0xa

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    .end local v1    # "i":I
    :cond_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-float p1, v1

    .line 500
    float-to-int v1, p1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 501
    const-string v1, "-"

    invoke-virtual {p0, v1}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;

    .line 503
    :cond_1
    float-to-int v1, p1

    invoke-virtual {p0, v1}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->append(I)Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;

    .line 505
    if-eqz p2, :cond_2

    .line 506
    const-string v1, "."

    invoke-virtual {p0, v1}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;

    .line 507
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 508
    float-to-double v1, p1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float p1, v1

    .line 509
    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1, p2}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->append(II)Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;

    .line 512
    :cond_2
    return-object p0
.end method

.method public blacklist append(I)Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;
    .locals 1
    .param p1, "value"    # I

    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->append(II)Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist append(II)Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;
    .locals 8
    .param p1, "value"    # I
    .param p2, "zeroPadWidth"    # I

    .line 449
    const/4 v0, 0x1

    if-gez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 450
    .local v1, "negative":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 451
    neg-int p1, p1

    .line 452
    if-gez p1, :cond_1

    .line 453
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;

    .line 454
    return-object p0

    .line 458
    :cond_1
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->reserve(I)I

    move-result v2

    .line 459
    .local v2, "index":I
    iget-object v3, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mChars:[C

    .line 461
    .local v3, "chars":[C
    const/16 v4, 0x30

    if-nez p1, :cond_2

    .line 462
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    aput-char v4, v3, v2

    .line 463
    iget v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mLength:I

    .line 464
    return-object p0

    .line 467
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_2
    if-eqz v1, :cond_3

    .line 468
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .local v0, "index":I
    const/16 v5, 0x2d

    aput-char v5, v3, v2

    move v2, v0

    .line 471
    .end local v0    # "index":I
    .restart local v2    # "index":I
    :cond_3
    const v0, 0x3b9aca00

    .line 472
    .local v0, "divisor":I
    const/16 v5, 0xa

    .line 473
    .local v5, "numberWidth":I
    :cond_4
    :goto_1
    if-ge p1, v0, :cond_5

    .line 474
    div-int/lit8 v0, v0, 0xa

    .line 475
    add-int/lit8 v5, v5, -0x1

    .line 476
    if-ge v5, p2, :cond_4

    .line 477
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .local v6, "index":I
    aput-char v4, v3, v2

    move v2, v6

    goto :goto_1

    .line 482
    .end local v6    # "index":I
    .restart local v2    # "index":I
    :cond_5
    :goto_2
    div-int v4, p1, v0

    .line 483
    .local v4, "digit":I
    mul-int v6, v4, v0

    sub-int/2addr p1, v6

    .line 484
    div-int/lit8 v0, v0, 0xa

    .line 485
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .restart local v6    # "index":I
    add-int/lit8 v7, v4, 0x30

    int-to-char v7, v7

    aput-char v7, v3, v2

    .line 486
    .end local v4    # "digit":I
    if-nez v0, :cond_6

    .line 488
    iput v6, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mLength:I

    .line 489
    return-object p0

    .line 486
    :cond_6
    move v2, v6

    goto :goto_2
.end method

.method public blacklist append(Ljava/lang/String;)Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 438
    .local v0, "valueLength":I
    invoke-direct {p0, v0}, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->reserve(I)I

    move-result v1

    .line 439
    .local v1, "index":I
    iget-object v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mChars:[C

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 440
    iget v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mLength:I

    .line 441
    return-object p0
.end method

.method public blacklist clear()Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;
    .locals 1

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mLength:I

    .line 433
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 517
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mChars:[C

    iget v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$FasterStringBuilder;->mLength:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
