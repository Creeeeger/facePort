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

.field public static final greylist TYPE_PALETTE_COVER:I = 0x12

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

    new-instance v0, Lcom/samsung/android/cover/CoverState$1;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    return-void
.end method

.method public constructor greylist <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/samsung/android/cover/CoverState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist <init>(ZIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    return-void
.end method

.method public constructor greylist <init>(ZIIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    return-void
.end method

.method public constructor greylist <init>(ZIIIIZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput p7, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    return-void
.end method

.method public constructor greylist <init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput-boolean p4, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->model:I

    iput-object p6, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iput-object p8, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    return-void
.end method

.method private greylist readFromParcel(Landroid/os/Parcel;)V
    .locals 4

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v3, v0, [B

    iput-object v3, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iget-object v3, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public greylist copyFrom(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->color:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->model:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->friendsType:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public greylist getAttachState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    return v0
.end method

.method public greylist getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    return v0
.end method

.method public greylist getDefaultDensity(Landroid/content/res/Resources;)F
    .locals 3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    const/16 v2, 0x5a0

    if-lt v1, v2, :cond_1

    const/high16 v2, 0x40800000    # 4.0f

    goto :goto_1

    :cond_1
    const/16 v2, 0x2d0

    if-le v1, v2, :cond_2

    const/16 v2, 0x438

    if-gt v1, v2, :cond_2

    const/high16 v2, 0x40400000    # 3.0f

    goto :goto_1

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    :goto_1
    return v2
.end method

.method public greylist getFotaMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    return v0
.end method

.method public greylist getFriendsType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    return v0
.end method

.method public greylist getModel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return v0
.end method

.method public greylist getSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getSmartCoverAppUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getSmartCoverCookie()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    return-object v0
.end method

.method public greylist getSwitchState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    return v0
.end method

.method public greylist getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    return v0
.end method

.method public greylist getVisibleRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist getWindowHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return v0
.end method

.method public greylist getWindowWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    return v0
.end method

.method public greylist isFakeCover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    return v0
.end method

.method public greylist setAttachState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    return-void
.end method

.method public greylist setColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    return-void
.end method

.method public greylist setFakeCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    return-void
.end method

.method public greylist setFotaMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    return-void
.end method

.method public greylist setFriendsType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    return-void
.end method

.method public greylist setModel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return-void
.end method

.method public greylist setSerialNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public greylist setSmartCoverAppUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    return-void
.end method

.method public greylist setSmartCoverCookie([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    return-void
.end method

.method public greylist setSwitchState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    return-void
.end method

.method public greylist setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    return-void
.end method

.method public greylist setVisibleRect(Landroid/graphics/Rect;)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    return-void
.end method

.method public greylist setWindowHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return-void
.end method

.method public greylist setWindowWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 11

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d model=%d attached=%b fotaMode=%d friendsType=%d VisibleRect=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist updateCoverState(IIII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    return-void
.end method

.method public greylist updateCoverState(IIIII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    return-void
.end method

.method public greylist updateCoverState(IIIIZI)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean p5, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput p6, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    return-void
.end method

.method public greylist updateCoverState(ZIIII)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    return-void
.end method

.method public greylist updateCoverState(ZIIIIZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    return-void
.end method

.method public greylist updateCoverWindowSize(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput p2, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return-void
.end method

.method public greylist updateVisibleRect(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    const v2, 0x1050143

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    const v2, 0x1050146

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    const v2, 0x1050144

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    const v2, 0x1050142

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/CoverState;->getDefaultDensity(Landroid/content/res/Resources;)F

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVisibility type= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " defaultDensity= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentDensity= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ratio= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mVisibleRect left= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mVisibleRect top= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mVisibleRect right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mVisibleRect bottom= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CoverState"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
