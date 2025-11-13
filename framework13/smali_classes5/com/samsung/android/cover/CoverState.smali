.class public Lcom/samsung/android/cover/CoverState;
.super Ljava/lang/Object;
.source "CoverState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist COLOR_BLACK:I = 0x1

.field public static final greylist COLOR_BLUE:I = 0x5

.field public static final greylist COLOR_BLUSH_PINK:I = 0x8

.field public static final greylist COLOR_BRONZE:I = 0xe

.field public static final greylist COLOR_CARBON_METAL:I = 0x6

.field public static final greylist COLOR_CHARCOAL:I = 0xa

.field public static final greylist COLOR_CHARCOAL_GRAY:I = 0xa

.field public static final greylist COLOR_CLASSIC_WHITE:I = 0x2

.field public static final greylist COLOR_DEFAULT:I = 0x0

.field public static final greylist COLOR_GOLD:I = 0x7

.field public static final greylist COLOR_GRAYISH_BLUE:I = 0x9

.field public static final greylist COLOR_GREEN:I = 0xb

.field public static final greylist COLOR_INDIGO_BLUE:I = 0x5

.field public static final greylist COLOR_JET_BLACK:I = 0x1

.field public static final greylist COLOR_MAGENTA:I = 0x3

.field public static final greylist COLOR_MINT:I = 0x9

.field public static final greylist COLOR_MINT_BLUE:I = 0x9

.field public static final greylist COLOR_MUSTARD_YELLOW:I = 0xc

.field public static final greylist COLOR_NAVY:I = 0x4

.field public static final greylist COLOR_NFC_SMART_COVER:I = 0xff

.field public static final greylist COLOR_OATMEAL:I = 0xc

.field public static final greylist COLOR_OATMEAL_BEIGE:I = 0xc

.field public static final greylist COLOR_ORANGE:I = 0xd

.field public static final greylist COLOR_PEAKCOCK_GREEN:I = 0xb

.field public static final greylist COLOR_PEARL_WHITE:I = 0x2

.field public static final greylist COLOR_PINK:I = 0x8

.field public static final greylist COLOR_PLUM:I = 0x3

.field public static final greylist COLOR_PLUM_RED:I = 0x3

.field public static final greylist COLOR_ROSE_GOLD:I = 0x7

.field public static final greylist COLOR_SILVER:I = 0x6

.field public static final greylist COLOR_SOFT_PINK:I = 0x8

.field public static final greylist COLOR_WHITE:I = 0x2

.field public static final greylist COLOR_WILD_ORANGE:I = 0xd

.field public static final greylist COLOR_YELLOW:I = 0xc

.field public static final greylist COVER_ATTACHED:Z = true

.field public static final greylist COVER_DETACHED:Z = false

.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cover/CoverState;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist FOTA_MODE_NONE:I = 0x0

.field public static final greylist FRIENDS_TYPE_BACK_COVER:I = 0x1

.field public static final greylist FRIENDS_TYPE_FLIP_COVER:I = 0x2

.field public static final greylist FRIENDS_TYPE_NONE:I = 0x0

.field public static final greylist MODEL_DEFAULT:I = 0x0

.field public static final greylist MODEL_TB:I = 0x3

.field public static final greylist MODEL_TR:I = 0x2

.field public static final greylist SWITCH_STATE_COVER_CLOSE:Z = false

.field public static final greylist SWITCH_STATE_COVER_OPEN:Z = true

.field private static final greylist TAG:Ljava/lang/String; = "CoverState"

.field public static final greylist TYPE_ALCANTARA_COVER:I = 0xc

.field public static final greylist TYPE_BRAND_MONBLANC_COVER:I = 0x64

.field public static final greylist TYPE_CLEAR_CAMERA_VIEW_COVER:I = 0x11

.field public static final greylist TYPE_CLEAR_COVER:I = 0x8

.field public static final greylist TYPE_CLEAR_SIDE_VIEW_COVER:I = 0xf

.field public static final greylist TYPE_FLIP_COVER:I = 0x0

.field public static final greylist TYPE_GAMEPACK_COVER:I = 0xd

.field public static final greylist TYPE_HEALTH_COVER:I = 0x4

.field public static final greylist TYPE_KEYBOARD_KOR_COVER:I = 0x9

.field public static final greylist TYPE_KEYBOARD_US_COVER:I = 0xa

.field public static final greylist TYPE_LED_BACK_COVER:I = 0xe

.field public static final greylist TYPE_LED_COVER:I = 0x7

.field public static final greylist TYPE_MINI_SVIEW_WALLET_COVER:I = 0x10

.field public static final greylist TYPE_NEON_COVER:I = 0xb

.field public static final greylist TYPE_NFC_SMART_COVER:I = 0xff

.field public static final greylist TYPE_NONE:I = 0x2

.field public static final greylist TYPE_SVIEW_CHARGER_COVER:I = 0x3

.field public static final greylist TYPE_SVIEW_COVER:I = 0x1

.field public static final greylist TYPE_S_CHARGER_COVER:I = 0x5

.field public static final greylist TYPE_S_VIEW_WALLET_COVER:I = 0x6


# instance fields
.field public greylist attached:Z

.field public greylist color:I

.field public greylist fakeCover:Z

.field public greylist fotaMode:I

.field public greylist friendsType:I

.field public greylist heightPixel:I

.field private greylist mVisibleRect:Landroid/graphics/Rect;

.field public greylist model:I

.field public greylist serialNumber:Ljava/lang/String;

.field public greylist smartCoverAppUri:Ljava/lang/String;

.field public greylist smartCoverCookie:[B

.field public greylist switchState:Z

.field public greylist type:I

.field public greylist widthPixel:I


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    .line 612
    new-instance v0, Lcom/samsung/android/cover/CoverState$1;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 407
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 409
    iput v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 410
    iput v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 411
    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 412
    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 415
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 416
    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 417
    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 418
    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 419
    iput v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    .line 420
    return-void
.end method

.method public constructor greylist <init>(III)V
    .locals 1
    .param p1, "defaultType"    # I
    .param p2, "defaultWidthPixel"    # I
    .param p3, "defaultHeightPixel"    # I

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 432
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 434
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 435
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 436
    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 437
    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 439
    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 440
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 518
    invoke-direct {p0, p1}, Lcom/samsung/android/cover/CoverState;->readFromParcel(Landroid/os/Parcel;)V

    .line 519
    return-void
.end method

.method public constructor greylist <init>(ZIIII)V
    .locals 1
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 452
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 453
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 454
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 455
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 456
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 458
    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 460
    invoke-virtual {p0, p2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 461
    return-void
.end method

.method public constructor greylist <init>(ZIIIIZ)V
    .locals 1
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 473
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 474
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 475
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 476
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 477
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 478
    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 479
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 481
    invoke-virtual {p0, p2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 482
    return-void
.end method

.method public constructor greylist <init>(ZIIIIZI)V
    .locals 1
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z
    .param p7, "model"    # I

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 485
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 486
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 487
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 488
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 489
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 490
    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 491
    iput p7, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 493
    invoke-virtual {p0, p2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 494
    return-void
.end method

.method public constructor greylist <init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V
    .locals 1
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "attached"    # Z
    .param p5, "model"    # I
    .param p6, "installUri"    # Ljava/lang/String;
    .param p7, "vendorData"    # [B
    .param p8, "serialNumber"    # Ljava/lang/String;
    .param p9, "isFake"    # Z

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 497
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 498
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 499
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 500
    iput-boolean p4, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 501
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 503
    iput-object p6, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    .line 504
    iput-object p7, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 505
    iput-object p8, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 506
    iput-boolean p9, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 508
    invoke-virtual {p0, p2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 509
    return-void
.end method

.method private greylist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    .line 591
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 593
    .local v0, "smartCoverCookieLength":I
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 594
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 597
    .end local v0    # "smartCoverCookieLength":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 600
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    .line 604
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 605
    return-void
.end method


# virtual methods
.method public greylist copyFrom(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "o"    # Lcom/samsung/android/cover/CoverState;

    .line 705
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 706
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 707
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->color:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 708
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 709
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 710
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 711
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->model:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 713
    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    .line 714
    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 715
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 716
    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 717
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    .line 719
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->friendsType:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    .line 721
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 722
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getAttachState()Z
    .locals 1

    .line 804
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    return v0
.end method

.method public greylist getColor()I
    .locals 1

    .line 764
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    return v0
.end method

.method public greylist getDefaultDensity(Landroid/content/res/Resources;)F
    .locals 3
    .param p1, "resource"    # Landroid/content/res/Resources;

    .line 906
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 907
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 909
    .local v1, "width":I
    :goto_0
    const/16 v2, 0x5a0

    if-lt v1, v2, :cond_1

    .line 910
    const/high16 v2, 0x40800000    # 4.0f

    .local v2, "density":F
    goto :goto_1

    .line 911
    .end local v2    # "density":F
    :cond_1
    const/16 v2, 0x2d0

    if-le v1, v2, :cond_2

    const/16 v2, 0x438

    if-gt v1, v2, :cond_2

    .line 912
    const/high16 v2, 0x40400000    # 3.0f

    .restart local v2    # "density":F
    goto :goto_1

    .line 914
    .end local v2    # "density":F
    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    .line 916
    .restart local v2    # "density":F
    :goto_1
    return v2
.end method

.method public greylist getFotaMode()I
    .locals 1

    .line 853
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    return v0
.end method

.method public greylist getFriendsType()I
    .locals 1

    .line 863
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    return v0
.end method

.method public greylist getModel()I
    .locals 1

    .line 812
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return v0
.end method

.method public greylist getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getSmartCoverAppUri()Ljava/lang/String;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getSmartCoverCookie()[B
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    return-object v0
.end method

.method public greylist getSwitchState()Z
    .locals 1

    .line 734
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    return v0
.end method

.method public greylist getType()I
    .locals 1

    .line 748
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    return v0
.end method

.method public greylist getVisibleRect()Landroid/graphics/Rect;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist getWindowHeight()I
    .locals 1

    .line 790
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return v0
.end method

.method public greylist getWindowWidth()I
    .locals 1

    .line 777
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    return v0
.end method

.method public greylist isFakeCover()Z
    .locals 1

    .line 837
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    return v0
.end method

.method public greylist setAttachState(Z)V
    .locals 0
    .param p1, "attached"    # Z

    .line 808
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 809
    return-void
.end method

.method public greylist setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 768
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 769
    return-void
.end method

.method public greylist setFakeCover(Z)V
    .locals 0
    .param p1, "faked"    # Z

    .line 841
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 842
    return-void
.end method

.method public greylist setFotaMode(I)V
    .locals 0
    .param p1, "fotaMode"    # I

    .line 857
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    .line 858
    return-void
.end method

.method public greylist setFriendsType(I)V
    .locals 0
    .param p1, "friendsType"    # I

    .line 867
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    .line 868
    return-void
.end method

.method public greylist setModel(I)V
    .locals 0
    .param p1, "model"    # I

    .line 816
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 817
    return-void
.end method

.method public greylist setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # Ljava/lang/String;

    .line 849
    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 850
    return-void
.end method

.method public greylist setSmartCoverAppUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .line 833
    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    .line 834
    return-void
.end method

.method public greylist setSmartCoverCookie([B)V
    .locals 0
    .param p1, "extraData"    # [B

    .line 825
    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 826
    return-void
.end method

.method public greylist setSwitchState(Z)V
    .locals 0
    .param p1, "switchState"    # Z

    .line 738
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 739
    return-void
.end method

.method public greylist setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 752
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 754
    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 755
    return-void
.end method

.method public greylist setVisibleRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 877
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 878
    return-void
.end method

.method public greylist setWindowHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 794
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 795
    return-void
.end method

.method public greylist setWindowWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 781
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 782
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 632
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 634
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 632
    const-string v1, "CoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d model=%d attached=%b fotaMode=%d friendsType=%d VisibleRect=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist updateCoverState(IIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I

    .line 640
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 641
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 642
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 643
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 645
    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 646
    return-void
.end method

.method public greylist updateCoverState(IIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I
    .param p5, "model"    # I

    .line 675
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 676
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 677
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 678
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 679
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 681
    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 682
    return-void
.end method

.method public greylist updateCoverState(IIIIZI)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I
    .param p5, "attached"    # Z
    .param p6, "model"    # I

    .line 687
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 688
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 689
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 690
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 691
    iput-boolean p5, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 692
    iput p6, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 694
    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 695
    return-void
.end method

.method public greylist updateCoverState(ZIIII)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .line 651
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 652
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 653
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 654
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 655
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 657
    invoke-virtual {p0, p2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 658
    return-void
.end method

.method public greylist updateCoverState(ZIIIIZ)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z

    .line 663
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 664
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 665
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 666
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 667
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 668
    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 670
    invoke-virtual {p0, p2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 671
    return-void
.end method

.method public greylist updateCoverWindowSize(II)V
    .locals 0
    .param p1, "widthPixel"    # I
    .param p2, "heightPixel"    # I

    .line 699
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 700
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 701
    return-void
.end method

.method public greylist updateVisibleRect(I)V
    .locals 6
    .param p1, "type"    # I

    .line 882
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 883
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 884
    .local v0, "resource":Landroid/content/res/Resources;
    if-eqz v0, :cond_2

    .line 885
    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    .line 888
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    const v2, 0x1050106

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 889
    iget-object v1, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    const v2, 0x1050109

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 890
    iget-object v1, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    const v2, 0x1050107

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 891
    iget-object v1, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    const v2, 0x1050105

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 894
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/CoverState;->getDefaultDensity(Landroid/content/res/Resources;)F

    move-result v1

    .line 895
    .local v1, "defaultDensity":F
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 896
    .local v2, "currentDensity":F
    div-float v3, v1, v2

    .line 897
    .local v3, "ratio":F
    iget-object v4, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 898
    iget-object v4, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 899
    iget-object v4, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 900
    iget-object v4, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 902
    .end local v1    # "defaultDensity":F
    .end local v2    # "currentDensity":F
    .end local v3    # "ratio":F
    :cond_2
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 549
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    if-nez v0, :cond_1

    .line 555
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 557
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 561
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 562
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 564
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 572
    return-void
.end method
