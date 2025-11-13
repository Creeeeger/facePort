.class public Landroid/app/SemWallpaperColors;
.super Ljava/lang/Object;
.source "SemWallpaperColors.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemWallpaperColors$WallpaperColorsData;,
        Landroid/app/SemWallpaperColors$Builder;,
        Landroid/app/SemWallpaperColors$Item;
    }
.end annotation


# static fields
.field public static final blacklist COMPARE_ADAPTIVE_CONTRAST:I = 0x2

.field public static final blacklist COMPARE_COLOR:I = 0x0

.field public static final blacklist COMPARE_SHADOW:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/SemWallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEVICE_VERSION:I = 0x16

.field public static final blacklist FONT_COLOR_BLACK:I = 0x1

.field public static final blacklist FONT_COLOR_GRAY:I = 0x2

.field public static final blacklist FONT_COLOR_WHITE:I = 0x0

.field public static final blacklist HOMESCREEN_BODY:I = 0x40

.field public static final blacklist HOMESCREEN_NAVIBAR:I = 0x80

.field public static final blacklist HOMESCREEN_STATUSBAR:I = 0x20

.field public static final blacklist LOCKSCREEN_AREA_SIZE:I = 0x6

.field public static final blacklist LOCKSCREEN_BACKGROUND:I = 0x200

.field public static final blacklist LOCKSCREEN_BODY_BOTTOM:I = 0x80

.field public static final blacklist LOCKSCREEN_BODY_MID:I = 0x40

.field public static final blacklist LOCKSCREEN_BODY_TOP:I = 0x20

.field public static final blacklist LOCKSCREEN_BOUNCER:J = 0x80000000000L

.field public static final blacklist LOCKSCREEN_CLOCK:J = 0x400000000L

.field public static final blacklist LOCKSCREEN_FINGERPRINT:J = 0x40000000000L

.field public static final blacklist LOCKSCREEN_HELP_TEXT:J = 0x4000000000L

.field public static final blacklist LOCKSCREEN_LOCK_ICON:J = 0x200000000L

.field public static final blacklist LOCKSCREEN_MUSIC:J = 0x2000000000L

.field public static final blacklist LOCKSCREEN_NAVIBAR:I = 0x100

.field public static final blacklist LOCKSCREEN_NAVI_BAR:J = 0x10000000000L

.field public static final blacklist LOCKSCREEN_NIO:J = 0x800000000L

.field public static final blacklist LOCKSCREEN_NIO_TEXT:J = 0x1000000000L

.field public static final blacklist LOCKSCREEN_NIO_TEXT_MID:J = 0x2000000000000L

.field public static final blacklist LOCKSCREEN_NIO_TEXT_TOP:J = 0x1000000000000L

.field public static final blacklist LOCKSCREEN_SECURE_TEXT:J = 0x20000000000L

.field public static final blacklist LOCKSCREEN_SHORTCUT:J = 0x8000000000L

.field public static final blacklist LOCKSCREEN_STATUSBAR:I = 0x10

.field public static final blacklist LOCKSCREEN_STATUS_BAR:J = 0x100000000L

.field private static final blacklist TAG:Ljava/lang/String; = "SemWallpaperColors"

.field private static final blacklist TYPE_MAJOR:I = 0x0

.field private static final blacklist TYPE_MINOR:I = 0x1

.field private static final blacklist TYPE_OTHER:I = 0x2


# instance fields
.field private blacklist mAdaptiveDimColor:I

.field private blacklist mAdaptiveDimOpacity:F

.field private blacklist mArea:Landroid/app/SemWallpaperColorsArea;

.field private blacklist mColorTableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation
.end field

.field private blacklist mColorTableListGoogle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentResolution:Ljava/lang/String;

.field private blacklist mDarkModeDimOpacity:F

.field private blacklist mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SemWallpaperColors$WallpaperColorsData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSeedColors:[I

.field private blacklist mWhich:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmArea(Landroid/app/SemWallpaperColors;)Landroid/app/SemWallpaperColorsArea;
    .locals 0

    iget-object p0, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1159
    new-instance v0, Landroid/app/SemWallpaperColors$1;

    invoke-direct {v0}, Landroid/app/SemWallpaperColors$1;-><init>()V

    sput-object v0, Landroid/app/SemWallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/app/SemWallpaperColors$Item;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "item"    # Landroid/app/SemWallpaperColors$Item;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    .line 133
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 134
    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 135
    iput v2, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    .line 377
    invoke-direct {p0, v1, p1, v0}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;II)V

    .line 379
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 380
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v1, p2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    .line 381
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    goto :goto_0

    .line 383
    :cond_0
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->workaround()V

    .line 385
    if-eqz p3, :cond_1

    .line 386
    invoke-direct {p0, p3}, Landroid/app/SemWallpaperColors;->setSeedColors(Landroid/graphics/Bitmap;)V

    .line 388
    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/app/SemWallpaperColors$Item;Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/SemWallpaperColors;-><init>(ILandroid/app/SemWallpaperColors$Item;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "which"    # I
    .param p4, "rotation"    # I
    .param p5, "rects"    # [Landroid/graphics/Rect;

    .line 391
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/SemWallpaperColors;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;Landroid/app/WallpaperColorOverrideAreas;)V

    .line 392
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;Landroid/app/WallpaperColorOverrideAreas;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "which"    # I
    .param p4, "rotation"    # I
    .param p5, "rects"    # [Landroid/graphics/Rect;
    .param p6, "baseOverrideColorArea"    # Landroid/app/WallpaperColorOverrideAreas;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    .line 133
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 134
    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 135
    iput v2, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    .line 399
    invoke-direct {p0, p1, p3, p4, p6}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    .line 402
    :try_start_0
    invoke-static {p3}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 404
    :cond_0
    const/4 v2, 0x0

    .line 405
    .local v2, "colorWeightList":[[I
    invoke-static {p3}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 407
    new-array v4, v5, [[I

    new-array v6, v3, [I

    aput v5, v6, v0

    aput v3, v6, v5

    aput-object v6, v4, v0

    move-object v2, v4

    goto :goto_0

    .line 409
    :cond_1
    new-array v4, v0, [[I

    move-object v2, v4

    .line 413
    :goto_0
    invoke-direct {p0, p2, v0, v5, v2}, Landroid/app/SemWallpaperColors;->calc(Landroid/graphics/Bitmap;IZ[[I)V

    .line 415
    invoke-direct {p0, p2, v5, v5, v2}, Landroid/app/SemWallpaperColors;->calc(Landroid/graphics/Bitmap;IZ[[I)V

    .line 417
    invoke-direct {p0, p2, v3, v5, v1}, Landroid/app/SemWallpaperColors;->calc(Landroid/graphics/Bitmap;IZ[[I)V

    .line 420
    .end local v2    # "colorWeightList":[[I
    :cond_2
    if-eqz p5, :cond_4

    .line 422
    array-length v2, p5

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, p5, v4

    .line 423
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v7, p0, v5, v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    nop

    .end local v5    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 427
    :cond_3
    invoke-direct {p0, p2, v3, v0, v1}, Landroid/app/SemWallpaperColors;->calc(Landroid/graphics/Bitmap;IZ[[I)V

    .line 430
    :cond_4
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->calcAdaptiveDim()V

    .line 431
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->calcDarkModeDim()V

    .line 432
    invoke-direct {p0, p2}, Landroid/app/SemWallpaperColors;->setSeedColors(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    goto :goto_2

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->workaround()V

    .line 438
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    .line 133
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 134
    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 135
    iput v2, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 341
    .local v2, "which":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 342
    .local v3, "count":I
    invoke-direct {p0, v1, v2, v0}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;II)V

    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 345
    const-class v4, Landroid/graphics/Rect;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 346
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v5, v1}, Landroid/app/SemWallpaperColors$Item;-><init>(Landroid/app/SemWallpaperColors$Item-IA;)V

    .line 347
    .local v5, "item":Landroid/app/SemWallpaperColors$Item;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColor(Landroid/app/SemWallpaperColors$Item;I)V

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetShadowSize(Landroid/app/SemWallpaperColors$Item;F)V

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetShadowOpacity(Landroid/app/SemWallpaperColors$Item;F)V

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetHSV(Landroid/app/SemWallpaperColors$Item;[F)V

    .line 353
    iget-object v6, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 354
    .local v6, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-eqz v6, :cond_0

    .line 355
    invoke-virtual {v6, v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setRect(Landroid/graphics/Rect;)V

    .line 356
    invoke-virtual {v6, v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    goto :goto_1

    .line 358
    :cond_0
    iget-object v7, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v8, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v8, p0, v4, v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .end local v6    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->workaround()V

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    .line 368
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "xml"    # Ljava/lang/String;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    .line 133
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 134
    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 135
    iput v1, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    .line 371
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColors;->xmlParser(Ljava/lang/String;)V

    .line 373
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->workaround()V

    .line 374
    return-void
.end method

.method private blacklist calc(Landroid/graphics/Bitmap;IZ[[I)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "type"    # I
    .param p3, "defaultArea"    # Z
    .param p4, "colorWeightList"    # [[I

    .line 492
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 502
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 503
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 504
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    const/4 v2, 0x0

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/SemWallpaperColors;->calcInternal(Landroid/graphics/Bitmap;ZLandroid/app/SemWallpaperColors$WallpaperColorsData;Landroid/app/SemWallpaperColors$Item;)V

    .line 505
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    goto :goto_0

    :cond_1
    goto :goto_3

    .line 507
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calc, invalid type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperColors"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 493
    :cond_3
    :goto_1
    array-length v1, p4

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v4, p4, v3

    .line 494
    .local v4, "colorWeight":[I
    aget v5, v4, p2

    .line 495
    .local v5, "index":I
    iget-object v6, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 496
    .local v6, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    const/4 v7, 0x0

    .line 497
    .local v7, "major":Landroid/app/SemWallpaperColors$Item;
    if-ne p2, v0, :cond_4

    .line 498
    iget-object v8, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    aget v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-virtual {v8}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v7

    .line 500
    :cond_4
    invoke-direct {p0, p1, p3, v6, v7}, Landroid/app/SemWallpaperColors;->calcInternal(Landroid/graphics/Bitmap;ZLandroid/app/SemWallpaperColors$WallpaperColorsData;Landroid/app/SemWallpaperColors$Item;)V

    .line 493
    .end local v4    # "colorWeight":[I
    .end local v5    # "index":I
    .end local v6    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v7    # "major":Landroid/app/SemWallpaperColors$Item;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 509
    :cond_5
    :goto_3
    return-void
.end method

.method private blacklist calcAdaptiveDim()V
    .locals 6

    .line 709
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v0

    const-string v1, "SemWallpaperColors"

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v0}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v0}, Landroid/app/SemWallpaperColors;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    :cond_0
    const-string v0, "calcAdaptiveDim: Cover wallpaper, return"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void

    .line 714
    :cond_1
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 715
    const-string v0, "calcAdaptiveDim: Custom area, return"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void

    .line 719
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;>;"
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 721
    .local v3, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-eqz v3, :cond_6

    .line 722
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    .line 723
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 724
    goto :goto_0

    .line 727
    :cond_4
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v4

    .line 728
    .local v4, "item":Landroid/app/SemWallpaperColors$Item;
    if-eqz v4, :cond_6

    .line 729
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v5

    if-nez v5, :cond_5

    .line 730
    invoke-static {v4}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetLeftLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-static {v4}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetRightLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 733
    :cond_5
    invoke-static {v4}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    .end local v3    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v4    # "item":Landroid/app/SemWallpaperColors$Item;
    :cond_6
    :goto_1
    goto :goto_0

    .line 739
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 740
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 741
    .local v2, "resultArray":[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 742
    invoke-static {v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->calculateAdaptiveDim([Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;

    move-result-object v3

    .line 743
    .local v3, "autoDimResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;
    iget v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->opacity:F

    iput v4, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 744
    iget v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->color:I

    iput v4, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcAdaptiveDim, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    .end local v2    # "resultArray":[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .end local v3    # "autoDimResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;
    :cond_8
    return-void
.end method

.method private blacklist calcDarkModeDim()V
    .locals 8

    .line 763
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v0

    const-string v1, "SemWallpaperColors"

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x7

    .local v0, "targetKey":I
    goto :goto_0

    .line 765
    .end local v0    # "targetKey":I
    :cond_0
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 766
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v0}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    const/4 v0, 0x7

    .restart local v0    # "targetKey":I
    goto :goto_0

    .line 768
    .end local v0    # "targetKey":I
    :cond_1
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v0}, Landroid/app/SemWallpaperColors;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 769
    const/4 v0, 0x2

    .restart local v0    # "targetKey":I
    goto :goto_0

    .line 771
    .end local v0    # "targetKey":I
    :cond_2
    const/4 v0, 0x1

    .line 778
    .restart local v0    # "targetKey":I
    :goto_0
    const/4 v2, 0x0

    .line 779
    .local v2, "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    iget-object v3, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 780
    .local v4, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-eqz v4, :cond_3

    .line 781
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v5

    if-ne v5, v0, :cond_3

    .line 782
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v3

    invoke-static {v3}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v3

    iget-object v2, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 783
    goto :goto_2

    .line 786
    .end local v4    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    :cond_3
    goto :goto_1

    .line 788
    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 789
    const-string v3, "dominantColorResult == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-void

    .line 793
    :cond_5
    array-length v3, v2

    new-array v3, v3, [[F

    .line 794
    .local v3, "hsvColors":[[F
    const/4 v4, 0x0

    .line 795
    .local v4, "avgBrightness":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v6, v2

    if-ge v5, v6, :cond_7

    .line 796
    aget-object v6, v2, v5

    iget v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 797
    const/4 v6, 0x0

    aput-object v6, v3, v5

    goto :goto_4

    .line 799
    :cond_6
    const/4 v6, 0x3

    new-array v6, v6, [F

    aput-object v6, v3, v5

    .line 800
    aget-object v6, v2, v5

    iget v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    aget-object v7, v3, v5

    invoke-static {v6, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 801
    aget-object v6, v3, v5

    const/4 v7, 0x2

    aget v6, v6, v7

    aget-object v7, v2, v5

    iget v7, v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 795
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 806
    .end local v5    # "i":I
    :cond_7
    const v5, 0x3f19999a    # 0.6f

    cmpg-float v5, v4, v5

    const v6, 0x3e19999a    # 0.15f

    if-gtz v5, :cond_8

    .line 807
    iput v6, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    goto :goto_5

    .line 808
    :cond_8
    const v5, 0x3f4ccccd    # 0.8f

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_9

    .line 809
    const/high16 v5, 0x3e800000    # 0.25f

    iput v5, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    goto :goto_5

    .line 811
    :cond_9
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v4

    sub-float/2addr v5, v6

    iput v5, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 814
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcDarkModeDim, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 774
    .end local v0    # "targetKey":I
    .end local v2    # "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .end local v3    # "hsvColors":[[F
    .end local v4    # "avgBrightness":F
    :cond_a
    const-string v0, "custom area, return"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void
.end method

.method private blacklist calcInternal(Landroid/graphics/Bitmap;ZLandroid/app/SemWallpaperColors$WallpaperColorsData;Landroid/app/SemWallpaperColors$Item;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "defaultArea"    # Z
    .param p3, "data"    # Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .param p4, "major"    # Landroid/app/SemWallpaperColors$Item;

    .line 512
    invoke-virtual {p3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    return-void

    .line 519
    :cond_0
    invoke-virtual {p3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 520
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz p2, :cond_1

    .line 521
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    invoke-virtual {p3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/SemWallpaperColorsArea;->get(III)Landroid/graphics/Rect;

    move-result-object v0

    .line 524
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_5

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_5

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_5

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_5

    .line 525
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 530
    .local v1, "cropBitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v2}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    iget v2, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v2}, Landroid/app/SemWallpaperColors;->isVirtualDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 533
    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-direct {p0, v1, p4, v3}, Landroid/app/SemWallpaperColors;->fromBitmapInternal(Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors$Item;Z)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    goto :goto_1

    .line 531
    :cond_4
    :goto_0
    invoke-direct {p0, v1, p4, v3}, Landroid/app/SemWallpaperColors;->fromBitmapInternal(Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors$Item;Z)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    .line 536
    .end local v1    # "cropBitmap":Landroid/graphics/Bitmap;
    :cond_5
    :goto_1
    return-void
.end method

.method public static blacklist fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "which"    # I
    .param p3, "rotation"    # I
    .param p4, "rects"    # [Landroid/graphics/Rect;

    .line 194
    new-instance v7, Landroid/app/SemWallpaperColors;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/SemWallpaperColors;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;Landroid/app/WallpaperColorOverrideAreas;)V

    return-object v7
.end method

.method public static blacklist fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;Landroid/app/WallpaperColorOverrideAreas;)Landroid/app/SemWallpaperColors;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "which"    # I
    .param p3, "rotation"    # I
    .param p4, "rects"    # [Landroid/graphics/Rect;
    .param p5, "baseOverrideColorArea"    # Landroid/app/WallpaperColorOverrideAreas;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromBitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperColors"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz p1, :cond_2

    .line 215
    if-eqz p4, :cond_1

    .line 216
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p4, v1

    .line 217
    .local v2, "rect":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 216
    .end local v2    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal argument "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    new-instance v0, Landroid/app/SemWallpaperColors;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Landroid/app/SemWallpaperColors;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;Landroid/app/WallpaperColorOverrideAreas;)V

    return-object v0

    .line 212
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "which"    # I
    .param p3, "landscape"    # Z
    .param p4, "rects"    # [Landroid/graphics/Rect;

    .line 181
    if-eqz p3, :cond_0

    const/16 v0, 0x5a

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, v0, p4}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;[Landroid/graphics/Rect;Z)Landroid/app/SemWallpaperColors;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rects"    # [Landroid/graphics/Rect;
    .param p3, "includeDefaultArea"    # Z

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "which":I
    if-eqz p3, :cond_0

    .line 173
    const/4 v0, 0x2

    .line 175
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    move-result-object v1

    return-object v1
.end method

.method private blacklist fromBitmapInternal(Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors$Item;Z)Landroid/app/SemWallpaperColors$Item;
    .locals 29
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "major"    # Landroid/app/SemWallpaperColors$Item;
    .param p3, "indicator"    # Z

    .line 539
    move-object/from16 v0, p2

    move/from16 v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromBitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", major = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", indicator = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SemWallpaperColors"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/16 v2, 0x64

    .line 542
    .local v2, "imageAreaTobeResized":I
    const/4 v5, 0x0

    .line 544
    .local v5, "item":Landroid/app/SemWallpaperColors$Item;
    const/4 v6, 0x0

    if-eqz v1, :cond_4

    .line 545
    invoke-direct/range {p0 .. p1}, Landroid/app/SemWallpaperColors;->getLeftIndicator(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 546
    .local v7, "leftIndicator":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p1}, Landroid/app/SemWallpaperColors;->getRightIndicator(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 548
    .local v8, "rightIndicator":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_3

    if-nez v8, :cond_0

    move-object/from16 v12, p0

    move-object/from16 v17, v5

    goto/16 :goto_1

    .line 553
    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v9, v10, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->fineScaleValueBySquareRootSize(III)F

    move-result v9

    .line 554
    .local v9, "descalingValue":F
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    .line 555
    .local v10, "scaledWidth":I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    float-to-int v11, v11

    .line 556
    .local v11, "scaledHeight":I
    invoke-static {v7, v10, v11, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 558
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-static {v12, v13, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->fineScaleValueBySquareRootSize(III)F

    move-result v9

    .line 559
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v10, v12

    .line 560
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v11, v12

    .line 561
    invoke-static {v8, v10, v11, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 563
    move-object/from16 v12, p0

    invoke-direct {v12, v7, v8}, Landroid/app/SemWallpaperColors;->getIndicatorPixels(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[I

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->calcurateIndicatorLegibility([I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;

    move-result-object v13

    .line 564
    .local v13, "indicatorLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;
    const/4 v14, 0x0

    .line 565
    .local v14, "colorType":I
    iget-object v15, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v6, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v15, v6, :cond_1

    .line 566
    const/4 v14, 0x1

    goto :goto_0

    .line 567
    :cond_1
    iget-object v6, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v15, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v6, v15, :cond_2

    .line 568
    const/4 v14, 0x2

    .line 570
    :cond_2
    :goto_0
    iget v6, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    .line 572
    .local v6, "colorRgb":I
    iget-object v15, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 573
    const/4 v1, 0x0

    move-object/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .local v17, "item":Landroid/app/SemWallpaperColors$Item;
    invoke-static {v7, v1, v15, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v15

    .line 575
    .local v15, "leftLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    move/from16 v16, v9

    .end local v9    # "descalingValue":F
    .local v16, "descalingValue":F
    iget-object v9, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 576
    invoke-static {v8, v1, v9, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v1

    .line 579
    .local v1, "rightLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 582
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "edgeCase "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v3, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v3, v14, v6, v15, v1}, Landroid/app/SemWallpaperColors$Item;-><init>(IILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)V

    move-object v1, v3

    .line 585
    .end local v6    # "colorRgb":I
    .end local v7    # "leftIndicator":Landroid/graphics/Bitmap;
    .end local v8    # "rightIndicator":Landroid/graphics/Bitmap;
    .end local v10    # "scaledWidth":I
    .end local v11    # "scaledHeight":I
    .end local v13    # "indicatorLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;
    .end local v14    # "colorType":I
    .end local v15    # "leftLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .end local v16    # "descalingValue":F
    .end local v17    # "item":Landroid/app/SemWallpaperColors$Item;
    .local v1, "item":Landroid/app/SemWallpaperColors$Item;
    move-object/from16 v6, p1

    move/from16 v26, v2

    goto/16 :goto_4

    .line 548
    .end local v1    # "item":Landroid/app/SemWallpaperColors$Item;
    .restart local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .restart local v7    # "leftIndicator":Landroid/graphics/Bitmap;
    .restart local v8    # "rightIndicator":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v12, p0

    move-object/from16 v17, v5

    .line 549
    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .restart local v17    # "item":Landroid/app/SemWallpaperColors$Item;
    :goto_1
    const-string v1, "fromBitmap indicator left/right bitmap == null"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v1, Landroid/app/SemWallpaperColors$Item;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3, v4}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    return-object v1

    .line 586
    .end local v7    # "leftIndicator":Landroid/graphics/Bitmap;
    .end local v8    # "rightIndicator":Landroid/graphics/Bitmap;
    .end local v17    # "item":Landroid/app/SemWallpaperColors$Item;
    .restart local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    :cond_4
    move-object/from16 v12, p0

    move-object/from16 v17, v5

    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .restart local v17    # "item":Landroid/app/SemWallpaperColors$Item;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->fineScaleValueBySquareRootSize(III)F

    move-result v1

    .line 587
    .local v1, "descalingValue":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 588
    .local v3, "scaledWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 590
    .local v5, "scaledHeight":I
    move-object/from16 v6, p1

    const/4 v7, 0x0

    invoke-static {v6, v3, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 592
    .local v8, "scaledBitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 593
    .local v7, "majorLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    if-eqz v0, :cond_6

    .line 594
    sget-object v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 595
    .local v9, "majorColorType":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    invoke-virtual/range {p2 .. p2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 596
    sget-object v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 598
    :cond_5
    new-instance v10, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    invoke-static/range {p2 .. p2}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetHSV(Landroid/app/SemWallpaperColors$Item;)[F

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;-><init>(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;[F)V

    move-object v7, v10

    .line 601
    .end local v9    # "majorColorType":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    :cond_6
    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v9

    .line 603
    .local v9, "legibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    const/4 v10, 0x0

    .line 604
    .local v10, "colorType":I
    iget-object v11, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v11, v13, :cond_7

    .line 605
    const/4 v10, 0x1

    goto :goto_2

    .line 606
    :cond_7
    iget-object v11, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v11, v13, :cond_8

    .line 607
    const/4 v10, 0x2

    .line 610
    :cond_8
    :goto_2
    iget v11, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    .line 612
    .local v11, "colorRgb":I
    const/high16 v13, 0x40000000    # 2.0f

    .local v13, "sizeMin":F
    const/high16 v14, 0x40c00000    # 6.0f

    .local v14, "sizeMax":F
    const v15, 0x3ecccccd    # 0.4f

    .local v15, "opacityMin":F
    const v16, 0x3f666666    # 0.9f

    .line 614
    .local v16, "opacityMax":F
    invoke-direct/range {p0 .. p0}, Landroid/app/SemWallpaperColors;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "currentResolution":Ljava/lang/String;
    move/from16 v25, v1

    .end local v1    # "descalingValue":F
    .local v25, "descalingValue":F
    iget-object v1, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move/from16 v26, v2

    .end local v2    # "imageAreaTobeResized":I
    .local v26, "imageAreaTobeResized":I
    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move/from16 v27, v3

    .end local v3    # "scaledWidth":I
    .local v27, "scaledWidth":I
    const-string v3, "HD"

    if-ne v1, v2, :cond_a

    .line 617
    const v1, 0x3ecccccd    # 0.4f

    .line 618
    .end local v15    # "opacityMin":F
    .local v1, "opacityMin":F
    const v2, 0x3f666666    # 0.9f

    .line 619
    .end local v16    # "opacityMax":F
    .local v2, "opacityMax":F
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 620
    const/high16 v3, 0x3f800000    # 1.0f

    .line 621
    .end local v13    # "sizeMin":F
    .local v3, "sizeMin":F
    const/high16 v13, 0x40400000    # 3.0f

    .end local v14    # "sizeMax":F
    .local v13, "sizeMax":F
    goto :goto_3

    .line 623
    .end local v3    # "sizeMin":F
    .local v13, "sizeMin":F
    .restart local v14    # "sizeMax":F
    :cond_9
    const/high16 v3, 0x40000000    # 2.0f

    .line 624
    .end local v13    # "sizeMin":F
    .restart local v3    # "sizeMin":F
    const/high16 v13, 0x40c00000    # 6.0f

    .end local v14    # "sizeMax":F
    .local v13, "sizeMax":F
    goto :goto_3

    .line 627
    .end local v1    # "opacityMin":F
    .end local v2    # "opacityMax":F
    .end local v3    # "sizeMin":F
    .local v13, "sizeMin":F
    .restart local v14    # "sizeMax":F
    .restart local v15    # "opacityMin":F
    .restart local v16    # "opacityMax":F
    :cond_a
    const v1, 0x3e99999a    # 0.3f

    .line 628
    .end local v15    # "opacityMin":F
    .restart local v1    # "opacityMin":F
    const v2, 0x3f666666    # 0.9f

    .line 629
    .end local v16    # "opacityMax":F
    .restart local v2    # "opacityMax":F
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 630
    const/high16 v3, 0x3f800000    # 1.0f

    .line 631
    .end local v13    # "sizeMin":F
    .restart local v3    # "sizeMin":F
    const/high16 v13, 0x40400000    # 3.0f

    .end local v14    # "sizeMax":F
    .local v13, "sizeMax":F
    goto :goto_3

    .line 632
    .end local v3    # "sizeMin":F
    .local v13, "sizeMin":F
    .restart local v14    # "sizeMax":F
    :cond_b
    const-string v3, "FHD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 633
    const/high16 v3, 0x40000000    # 2.0f

    .line 634
    .end local v13    # "sizeMin":F
    .restart local v3    # "sizeMin":F
    const/high16 v13, 0x40c00000    # 6.0f

    .end local v14    # "sizeMax":F
    .local v13, "sizeMax":F
    goto :goto_3

    .line 636
    .end local v3    # "sizeMin":F
    .local v13, "sizeMin":F
    .restart local v14    # "sizeMax":F
    :cond_c
    const/high16 v3, 0x40400000    # 3.0f

    .line 637
    .end local v13    # "sizeMin":F
    .restart local v3    # "sizeMin":F
    const/high16 v13, 0x40c00000    # 6.0f

    .line 641
    .end local v14    # "sizeMax":F
    .local v13, "sizeMax":F
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "resolution = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "size min = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", max = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v16, v0

    .end local v0    # "currentResolution":Ljava/lang/String;
    .local v16, "currentResolution":Ljava/lang/String;
    const-string v0, ", opacity min = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    invoke-static {v0, v3, v13}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->getInterpolatedShadowSize(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F

    move-result v0

    .line 644
    .local v0, "size":F
    iget-object v14, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    invoke-static {v14, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->getInterpolatedShadowOpacity(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F

    move-result v14

    .line 646
    .local v14, "opacity":F
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v1

    .end local v1    # "opacityMin":F
    .local v28, "opacityMin":F
    const-string v1, "colorType="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ", rgb="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ", shadowData="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, "/"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v1, Landroid/app/SemWallpaperColors$Item;

    iget-object v4, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    move-object/from16 v18, v1

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v0

    move/from16 v22, v14

    move-object/from16 v23, v4

    move-object/from16 v24, v9

    invoke-direct/range {v18 .. v24}, Landroid/app/SemWallpaperColors$Item;-><init>(IIFF[FLcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)V

    .line 650
    .end local v17    # "item":Landroid/app/SemWallpaperColors$Item;
    .local v1, "item":Landroid/app/SemWallpaperColors$Item;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 653
    .end local v0    # "size":F
    .end local v2    # "opacityMax":F
    .end local v3    # "sizeMin":F
    .end local v5    # "scaledHeight":I
    .end local v7    # "majorLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .end local v8    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "legibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .end local v10    # "colorType":I
    .end local v11    # "colorRgb":I
    .end local v13    # "sizeMax":F
    .end local v14    # "opacity":F
    .end local v16    # "currentResolution":Ljava/lang/String;
    .end local v25    # "descalingValue":F
    .end local v27    # "scaledWidth":I
    .end local v28    # "opacityMin":F
    :goto_4
    return-object v1
.end method

.method public static blacklist fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;
    .locals 2
    .param p0, "xml"    # Ljava/lang/String;

    .line 227
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance v0, Landroid/app/SemWallpaperColors;

    invoke-direct {v0, p0}, Landroid/app/SemWallpaperColors;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 228
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromXml invalid xml "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperColors"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getBlankWallpaperColors()Landroid/app/SemWallpaperColors;
    .locals 5

    .line 235
    new-instance v0, Landroid/app/SemWallpaperColors;

    new-instance v1, Landroid/app/SemWallpaperColors$Item;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v3, v4}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/app/SemWallpaperColors;-><init>(ILandroid/app/SemWallpaperColors$Item;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private blacklist getCurrentResolution()Ljava/lang/String;
    .locals 3

    .line 1048
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1049
    return-object v0

    .line 1052
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1053
    .local v0, "width":I
    const-string v1, "WQHD"

    .line 1055
    .local v1, "currentResolution":Ljava/lang/String;
    const/16 v2, 0x5a0

    if-lt v0, v2, :cond_1

    .line 1056
    const-string v1, "WQHD"

    goto :goto_0

    .line 1057
    :cond_1
    const/16 v2, 0x2d0

    if-le v0, v2, :cond_2

    const/16 v2, 0x438

    if-gt v0, v2, :cond_2

    .line 1058
    const-string v1, "FHD"

    goto :goto_0

    .line 1060
    :cond_2
    const-string v1, "HD"

    .line 1063
    :goto_0
    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    .line 1065
    return-object v1
.end method

.method public static blacklist getDeviceVersion()I
    .locals 2

    .line 144
    const-string v0, "SemWallpaperColors"

    const-string/jumbo v1, "version 22"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/16 v0, 0x16

    return v0
.end method

.method private blacklist getIndicatorPixels(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[I
    .locals 12
    .param p1, "leftIndicator"    # Landroid/graphics/Bitmap;
    .param p2, "rightIndicator"    # Landroid/graphics/Bitmap;

    .line 657
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 658
    .local v0, "indicatorPixels":[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    .line 659
    .local v1, "leftIndicatorPixels":[I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v11, v2, [I

    .line 661
    .local v11, "rightIndicatorPixels":[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 662
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 664
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 665
    aget v3, v1, v2

    aput v3, v0, v2

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v11

    if-ge v2, v3, :cond_1

    .line 668
    array-length v3, v1

    add-int/2addr v3, v2

    aget v4, v11, v2

    aput v4, v0, v3

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 671
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private blacklist getItemFontColor(J)I
    .locals 5
    .param p1, "key"    # J

    .line 1244
    invoke-virtual {p0, p1, p2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    .line 1245
    .local v0, "item":Landroid/app/SemWallpaperColors$Item;
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 1246
    invoke-virtual {p0, p1, p2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v2

    .line 1247
    .local v2, "fontColor":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItemColor: fontColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemWallpaperColors"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x1000000

    :goto_0
    return v1

    .line 1250
    .end local v2    # "fontColor":I
    :cond_1
    return v1
.end method

.method private blacklist getLeftIndicator(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 675
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 676
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 677
    .local v1, "height":I
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/SemWallpaperColorsArea;->get(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 678
    .local v2, "rect":Landroid/graphics/Rect;
    int-to-float v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 679
    .local v4, "scale":F
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 680
    .local v5, "density":F
    const/high16 v6, 0x42dc0000    # 110.0f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v4

    float-to-int v6, v6

    .line 682
    .local v6, "leftWidth":I
    invoke-static {p1, v3, v3, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 688
    return-object p1
.end method

.method public static blacklist getLegibilityVersion()Ljava/lang/String;
    .locals 1

    .line 165
    const-string v0, "1.1.0"

    return-object v0
.end method

.method private blacklist getRightIndicator(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 692
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 693
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 694
    .local v1, "height":I
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/SemWallpaperColorsArea;->get(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 695
    .local v2, "rect":Landroid/graphics/Rect;
    int-to-float v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 696
    .local v4, "scale":F
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 697
    .local v5, "density":F
    const/high16 v6, 0x42980000    # 76.0f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v4

    float-to-int v6, v6

    .line 699
    .local v6, "rightWidth":I
    sub-int v7, v0, v6

    invoke-static {p1, v7, v3, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 705
    return-object p1
.end method

.method public static blacklist getXmlVersion(Ljava/lang/String;)I
    .locals 4
    .param p0, "xml"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "version":I
    if-eqz p0, :cond_0

    const-string v1, "<Version>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 154
    .local v1, "before":I
    const-string v2, "</Version>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, "after":I
    add-int/lit8 v3, v1, 0x9

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 158
    .end local v1    # "before":I
    .end local v2    # "after":I
    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method private blacklist init(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "rotation"    # I

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    .line 452
    return-void
.end method

.method private blacklist init(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "rotation"    # I
    .param p4, "baseOverrideColorArea"    # Landroid/app/WallpaperColorOverrideAreas;

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mContext:Landroid/content/Context;

    .line 458
    iput v2, v0, Landroid/app/SemWallpaperColors;->mWhich:I

    .line 459
    new-instance v3, Landroid/app/SemWallpaperColorsArea;

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/app/SemWallpaperColorsArea;-><init>(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    iput-object v3, v0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    .line 461
    iget v3, v0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v3}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v3

    const-wide/16 v14, 0x40

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v9, 0x10

    const-wide/16 v11, 0x20

    if-eqz v3, :cond_0

    .line 462
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v13, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v13, v0, v9, v10, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v7, v0, v11, v12, v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x3

    invoke-direct {v6, v0, v14, v15, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x4

    const-wide/16 v8, 0x80

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x5

    const-wide/16 v8, 0x100

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x7

    const-wide/16 v8, 0x200

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 468
    :cond_0
    iget v3, v0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v3}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 469
    invoke-direct {v0, v2}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 470
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v7, v0, v9, v10, v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/16 v7, 0x9

    invoke-direct {v6, v0, v11, v12, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/16 v7, 0x8

    invoke-direct {v6, v0, v14, v15, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/16 v7, 0xa

    const-wide/16 v9, 0x80

    invoke-direct {v6, v0, v9, v10, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const-wide/16 v7, 0x100

    const/4 v9, 0x4

    invoke-direct {v6, v0, v7, v8, v9}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x7

    const-wide/16 v8, 0x200

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :cond_1
    invoke-direct {v0, v2}, Landroid/app/SemWallpaperColors;->isVirtualDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v8, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v8, v0, v9, v10, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v7, v0, v11, v12, v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    :cond_2
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v11, v12, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v14, v15, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x6

    const-wide/16 v8, 0x80

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    :cond_3
    const-string v3, "SemWallpaperColors"

    const-string v6, "init custom"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Landroid/app/SemWallpaperColorsArea;->buildKeyMap(Ljava/util/ArrayList;)V

    .line 489
    return-void
.end method

.method private static blacklist isHome(I)Z
    .locals 2
    .param p0, "which"    # I

    .line 1069
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist isLock(I)Z
    .locals 2
    .param p0, "which"    # I

    .line 1073
    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isVirtualDisplay(I)Z
    .locals 2
    .param p1, "which"    # I

    .line 1359
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1360
    const/4 v0, 0x1

    return v0

    .line 1362
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isWatchFaceDisplay(I)Z
    .locals 2
    .param p1, "which"    # I

    .line 1351
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 1353
    const/4 v0, 0x1

    return v0

    .line 1355
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist saveBitmaptoJpeg(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveBitmaptoJpeg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperColors"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    if-nez p1, :cond_0

    .line 1027
    return-void

    .line 1030
    :cond_0
    const/4 v0, 0x0

    .line 1032
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1033
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    nop

    .line 1039
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1043
    :cond_1
    :goto_0
    goto :goto_1

    .line 1041
    :catch_0
    move-exception v1

    .line 1042
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1044
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1037
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1034
    :catch_1
    move-exception v1

    .line 1035
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1038
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 1039
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1045
    :goto_1
    return-void

    .line 1038
    :goto_2
    if-eqz v0, :cond_2

    .line 1039
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 1041
    :catch_2
    move-exception v2

    .line 1042
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1043
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    nop

    .line 1044
    :goto_4
    throw v1
.end method

.method private blacklist setSeedColors(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 750
    if-nez p1, :cond_0

    .line 751
    const-string v0, "SemWallpaperColors"

    const-string/jumbo v1, "setSeedColors: bitmap is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 756
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 758
    invoke-static {p1}, Lcom/samsung/android/wallpaper/colortheme/ColorThemeExtractor;->getSeedColors(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    .line 759
    return-void
.end method

.method private static blacklist stringToIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .line 904
    const-string v0, "["

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "strings":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 907
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 908
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 907
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 911
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private blacklist workaround()V
    .locals 6

    .line 442
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 443
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    if-nez v2, :cond_0

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data.getItem() == null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWallpaperColors"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v2, Landroid/app/SemWallpaperColors$Item;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v3, v4, v5}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    invoke-virtual {v1, v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    .line 447
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    :cond_0
    goto :goto_0

    .line 448
    :cond_1
    return-void
.end method

.method private blacklist xmlGenerator()Ljava/lang/String;
    .locals 12

    .line 818
    const-string v0, "SeedColors"

    const-string v1, "DarkModeDimOpacity"

    const-string v2, "AdaptiveDimColor"

    const-string v3, "AdaptiveDimOpacity"

    const-string v4, "Which"

    const-string v5, "Version"

    const-string v6, ""

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 819
    .local v7, "serial":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 821
    .local v8, "writer":Ljava/io/Writer;
    :try_start_0
    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 822
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 823
    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 825
    invoke-interface {v7, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 826
    const-string v9, "22"

    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 827
    invoke-interface {v7, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 829
    invoke-interface {v7, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 830
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 831
    invoke-interface {v7, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 833
    invoke-interface {v7, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 834
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 835
    invoke-interface {v7, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 837
    invoke-interface {v7, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 839
    invoke-interface {v7, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 841
    invoke-interface {v7, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 843
    invoke-interface {v7, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 845
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    .line 846
    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 847
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 848
    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 850
    :cond_0
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 851
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v3

    invoke-direct {p0, v7, v2, v3}, Landroid/app/SemWallpaperColors;->xmlWrite(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    .line 852
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    goto :goto_0

    .line 854
    :cond_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    goto :goto_1

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 859
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist xmlParser(Ljava/lang/String;)V
    .locals 12
    .param p1, "xml"    # Ljava/lang/String;

    .line 915
    const-string v0, "SemWallpaperColors"

    const-string/jumbo v1, "xmlParser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v0, 0x0

    .line 919
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 922
    goto :goto_0

    .line 920
    :catch_0
    move-exception v1

    .line 921
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 925
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 926
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 927
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 928
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 930
    .local v3, "eventType":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 931
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/app/SemWallpaperColors$Item;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/app/SemWallpaperColors$Item;-><init>(Landroid/app/SemWallpaperColors$Item-IA;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 932
    .local v5, "item":Landroid/app/SemWallpaperColors$Item;
    const/4 v7, 0x0

    .line 933
    .local v7, "count":I
    :goto_1
    const/4 v8, 0x1

    if-eq v3, v8, :cond_13

    .line 934
    const-string v8, "Legibility"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 992
    :pswitch_0
    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 993
    .local v9, "endTag":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_12

    .line 994
    iget-object v8, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, 0x1

    .end local v7    # "count":I
    .local v10, "count":I
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 995
    .local v7, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-eqz v7, :cond_2

    .line 997
    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result v8

    if-nez v8, :cond_1

    .line 998
    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v8

    if-nez v8, :cond_0

    .line 999
    const/4 v8, -0x1

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V

    goto :goto_2

    .line 1001
    :cond_0
    const/high16 v8, -0x1000000

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V

    .line 1004
    :cond_1
    :goto_2
    invoke-virtual {v7, v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setRect(Landroid/graphics/Rect;)V

    .line 1005
    invoke-virtual {v7, v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    goto :goto_3

    .line 1007
    :cond_2
    iget-object v8, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v11, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v11, p0, v4, v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    .end local v7    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v9    # "endTag":Ljava/lang/String;
    :goto_3
    move v7, v10

    goto/16 :goto_4

    .line 936
    .end local v10    # "count":I
    .local v7, "count":I
    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 937
    .local v9, "startTag":Ljava/lang/String;
    const-string v10, "Which"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    .line 938
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 939
    .local v10, "which":I
    invoke-direct {p0, v6, v10, v11}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;II)V

    .line 941
    .end local v10    # "which":I
    :cond_3
    const-string v10, "Default"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 942
    const/4 v10, 0x2

    invoke-direct {p0, v6, v10, v11}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;II)V

    .line 944
    :cond_4
    const-string v10, "AdaptiveDimOpacity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 945
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 947
    :cond_5
    const-string v10, "AdaptieDimColor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 948
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 950
    :cond_6
    const-string v10, "DarkModeDimOpacity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 951
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 953
    :cond_7
    const-string v10, "Rect"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 954
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v10

    .line 956
    :cond_8
    const-string v10, "Left"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 957
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Landroid/graphics/Rect;->left:I

    .line 959
    :cond_9
    const-string v10, "Top"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 960
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Landroid/graphics/Rect;->top:I

    .line 962
    :cond_a
    const-string v10, "Right"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 963
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 965
    :cond_b
    const-string v10, "Bottom"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 966
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 968
    :cond_c
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 969
    new-instance v8, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v8, v6}, Landroid/app/SemWallpaperColors$Item;-><init>(Landroid/app/SemWallpaperColors$Item-IA;)V

    move-object v5, v8

    .line 971
    :cond_d
    const-string v8, "FontColor"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 972
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColor(Landroid/app/SemWallpaperColors$Item;I)V

    .line 974
    :cond_e
    const-string v8, "FontColorRgb"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 975
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V

    .line 977
    :cond_f
    const-string v8, "ShadowSize"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 978
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetShadowSize(Landroid/app/SemWallpaperColors$Item;F)V

    .line 980
    :cond_10
    const-string v8, "ShadowOpacity"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 981
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetShadowOpacity(Landroid/app/SemWallpaperColors$Item;F)V

    .line 983
    :cond_11
    const-string v8, "SeedColors"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 984
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 985
    .local v8, "seeds":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 986
    invoke-static {v8}, Landroid/app/SemWallpaperColors;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v10

    iput-object v10, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    .line 1012
    .end local v8    # "seeds":Ljava/lang/String;
    .end local v9    # "startTag":Ljava/lang/String;
    :cond_12
    :goto_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v3, v8

    goto/16 :goto_1

    .line 933
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "eventType":I
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .end local v7    # "count":I
    :cond_13
    goto :goto_5

    .line 1018
    :catch_1
    move-exception v1

    .line 1019
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1016
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1017
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_5

    .line 1014
    :catch_3
    move-exception v1

    .line 1015
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1020
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    nop

    .line 1021
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist xmlWrite(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V
    .locals 16
    .param p1, "serial"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "item"    # Landroid/app/SemWallpaperColors$Item;

    .line 863
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "ShadowOpacity"

    const-string v3, "ShadowSize"

    const-string v4, "FontColorRgb"

    const-string v5, "FontColor"

    const-string v6, "Legibility"

    const-string v7, "Bottom"

    const-string v8, "Right"

    const-string v9, "Top"

    const-string v10, "Left"

    const-string v11, "Rect"

    const-string v12, ""

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 869
    :cond_0
    const/4 v13, 0x0

    :try_start_0
    invoke-interface {v1, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 870
    invoke-interface {v1, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 871
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 872
    invoke-interface {v1, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 873
    invoke-interface {v1, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 874
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v14, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    invoke-interface {v1, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 876
    invoke-interface {v1, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 877
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 878
    invoke-interface {v1, v13, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 879
    invoke-interface {v1, v13, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 880
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 881
    invoke-interface {v1, v13, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 882
    invoke-interface {v1, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 884
    invoke-interface {v1, v13, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 885
    invoke-interface {v1, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 886
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 887
    invoke-interface {v1, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    invoke-interface {v1, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 890
    invoke-interface {v1, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 891
    invoke-interface {v1, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 892
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getShadowSize()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 893
    invoke-interface {v1, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 894
    invoke-interface {v1, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getShadowOpacity()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 896
    invoke-interface {v1, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 897
    invoke-interface {v1, v13, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    goto :goto_0

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 901
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 864
    :cond_1
    :goto_1
    const-string v0, "SemWallpaperColors"

    const-string/jumbo v3, "xmlWrite check null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/app/SemWallpaperColors;
    .locals 5

    .line 1372
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors;

    .line 1373
    .local v0, "clone":Landroid/app/SemWallpaperColors;
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    invoke-virtual {v1}, Landroid/app/SemWallpaperColorsArea;->clone()Landroid/app/SemWallpaperColorsArea;

    move-result-object v1

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    .line 1374
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    .line 1376
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    .line 1378
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1379
    .local v2, "wallpaperColorsData":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->clone()Landroid/app/SemWallpaperColors$WallpaperColorsData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    nop

    .end local v2    # "wallpaperColorsData":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    goto :goto_0

    .line 1382
    :cond_0
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    if-eqz v1, :cond_1

    .line 1383
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    .line 1385
    :cond_1
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    .line 1387
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1389
    :cond_2
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 1390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    .line 1391
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    :cond_3
    return-object v0

    .line 1395
    .end local v0    # "clone":Landroid/app/SemWallpaperColors;
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWallpaperColors"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
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

    .line 77
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist get(J)Landroid/app/SemWallpaperColors$Item;
    .locals 9
    .param p1, "area"    # J

    .line 273
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-string v4, "SemWallpaperColors"

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const-string v0, "SemWallpaperColors is not support default area"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v0, v3, v2, v1}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    return-object v0

    .line 278
    :cond_0
    const/4 v0, 0x0

    .line 279
    .local v0, "item":Landroid/app/SemWallpaperColors$Item;
    iget-object v5, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 280
    .local v6, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-eqz v6, :cond_1

    .line 281
    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getExternalKey()J

    move-result-wide v7

    cmp-long v7, p1, v7

    if-nez v7, :cond_1

    .line 282
    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    .line 283
    goto :goto_1

    .line 286
    .end local v6    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    :cond_1
    goto :goto_0

    .line 288
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "returning default dummy Item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v4, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v4, v3, v2, v1}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    move-object v0, v4

    .line 293
    :cond_3
    return-object v0
.end method

.method public blacklist get(Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors$Item;
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 297
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 298
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    return-object v0

    .line 303
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    :cond_0
    goto :goto_0

    .line 304
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAdaptiveDimColor()I
    .locals 1

    .line 324
    iget v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    return v0
.end method

.method public blacklist getAdaptiveDimOpacity()F
    .locals 1

    .line 328
    iget v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    return v0
.end method

.method public blacklist getColorDataSize()I
    .locals 1

    .line 1366
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getColorTableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 1184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/SemWallpaperColors;->getColorTableList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getColorTableList(Z)Ljava/util/List;
    .locals 5
    .param p1, "fromGoogle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 1194
    if-eqz p1, :cond_0

    .line 1195
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1196
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    return-object v0

    .line 1199
    :cond_0
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1200
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    return-object v0

    .line 1204
    :cond_1
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    const-string v1, "SemWallpaperColors"

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    .line 1205
    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;-><init>()V

    .line 1207
    .local v0, "paletteCreator":Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
    if-eqz p1, :cond_2

    .line 1208
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-static {v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->converAccent1ToSeedColors([I)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->setColors([I)V

    goto :goto_0

    .line 1210
    :cond_2
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->setColors([I)V

    .line 1213
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->generateColorPalette(Z)V

    .line 1214
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->getColorPalettes()Ljava/util/List;

    move-result-object v2

    .line 1215
    .local v2, "palettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 1216
    if-eqz p1, :cond_4

    .line 1217
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1218
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1219
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1220
    iget-object v3, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_3
    goto :goto_3

    .line 1224
    :cond_4
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1225
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1226
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1227
    iget-object v3, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1232
    .end local v1    # "i":I
    :cond_5
    :goto_3
    return-object v2

    .line 1234
    :cond_6
    const-string v3, "getColorTableList: Error while generating color palettes."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    .end local v0    # "paletteCreator":Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
    .end local v2    # "palettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    goto :goto_4

    .line 1237
    :cond_7
    const-string v0, "getColorTableList: No seed colors."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getColorThemeColor(J)I
    .locals 19
    .param p1, "key"    # J

    .line 1260
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    const-string v2, "SemWallpaperColors"

    if-eqz v1, :cond_18

    array-length v1, v1

    if-gtz v1, :cond_0

    goto/16 :goto_e

    .line 1265
    :cond_0
    const/4 v1, 0x0

    .line 1266
    .local v1, "retColor":I
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_3

    .line 1267
    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;

    invoke-direct {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;-><init>()V

    .line 1268
    .local v3, "paletteCreator":Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
    iget-object v5, v0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-virtual {v3, v5}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->setColors([I)V

    .line 1269
    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->generateColorPalette()V

    .line 1270
    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->getColorPalettes()Ljava/util/List;

    move-result-object v5

    .line 1271
    .local v5, "palettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1272
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1273
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1274
    iget-object v7, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1278
    .end local v6    # "i":I
    :cond_1
    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v4, :cond_2

    .line 1279
    const-string v4, "getColorThemeColor: Error while generating color palette."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-direct/range {p0 .. p2}, Landroid/app/SemWallpaperColors;->getItemFontColor(J)I

    move-result v2

    return v2

    .line 1283
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getColorThemeColor mColorTableList size : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    .end local v3    # "paletteCreator":Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
    .end local v5    # "palettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    :cond_3
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 1287
    .local v3, "colorPalette":[[I
    const/4 v5, 0x0

    .line 1289
    .local v5, "retData":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    const-wide/high16 v6, 0x1000000000000L

    cmp-long v8, p1, v6

    const-string v9, "getColorThemeColor: item is null. return WHITE"

    const-wide/16 v10, 0x20

    const-wide/16 v12, 0x40

    const/16 v14, 0xa

    const/4 v15, 0x3

    const/16 v16, -0x1

    if-eqz v8, :cond_14

    const-wide/high16 v17, 0x2000000000000L

    cmp-long v8, p1, v17

    if-nez v8, :cond_4

    goto/16 :goto_b

    .line 1305
    :cond_4
    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1306
    .local v7, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-nez v7, :cond_5

    .line 1307
    const-string v8, "getColorThemeColor: data is null. return FONT_COLOR_WHITE"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1308
    :cond_5
    invoke-virtual {v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getExternalKey()J

    move-result-wide v17

    cmp-long v8, v17, p1

    if-nez v8, :cond_11

    .line 1309
    invoke-virtual {v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v6

    .line 1310
    .local v6, "item":Landroid/app/SemWallpaperColors$Item;
    if-nez v6, :cond_6

    .line 1311
    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return v16

    .line 1315
    :cond_6
    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v8

    .line 1317
    .local v8, "fontColor":I
    if-nez v3, :cond_8

    .line 1318
    const-string v4, "getColorThemeColor: colorPalette is null. return fontColor"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    const/high16 v16, -0x1000000

    :goto_2
    return v16

    .line 1322
    :cond_8
    cmp-long v9, p1, v10

    if-eqz v9, :cond_f

    cmp-long v9, p1, v12

    if-nez v9, :cond_9

    goto :goto_6

    .line 1326
    :cond_9
    const-wide/16 v9, 0x80

    cmp-long v9, p1, v9

    if-nez v9, :cond_b

    .line 1327
    if-nez v8, :cond_a

    aget-object v4, v3, v4

    aget v4, v4, v14

    goto :goto_3

    :cond_a
    aget-object v4, v3, v4

    aget v4, v4, v15

    :goto_3
    move v1, v4

    .line 1328
    move-object v5, v7

    .line 1329
    goto :goto_9

    .line 1330
    :cond_b
    const-wide/16 v9, 0x100

    cmp-long v9, p1, v9

    if-eqz v9, :cond_d

    const-wide/16 v9, 0x200

    cmp-long v9, p1, v9

    if-nez v9, :cond_c

    goto :goto_4

    .line 1335
    :cond_c
    const-string v4, "getColorThemeColor not matched."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    goto :goto_9

    .line 1331
    :cond_d
    :goto_4
    if-nez v8, :cond_e

    aget-object v4, v3, v4

    const/4 v9, 0x4

    aget v4, v4, v9

    goto :goto_5

    :cond_e
    aget-object v4, v3, v4

    const/16 v9, 0x8

    aget v4, v4, v9

    :goto_5
    move v1, v4

    .line 1332
    move-object v5, v7

    .line 1333
    goto :goto_9

    .line 1323
    :cond_f
    :goto_6
    if-nez v8, :cond_10

    aget-object v4, v3, v4

    aget v4, v4, v15

    goto :goto_7

    :cond_10
    aget-object v4, v3, v4

    aget v4, v4, v14

    :goto_7
    move v1, v4

    .line 1324
    move-object v5, v7

    .line 1325
    goto :goto_9

    .line 1339
    .end local v6    # "item":Landroid/app/SemWallpaperColors$Item;
    .end local v7    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v8    # "fontColor":I
    :cond_11
    :goto_8
    goto/16 :goto_1

    .line 1341
    :cond_12
    :goto_9
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getColorThemeColor :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getExternalKey()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v7

    invoke-static {v7}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$fgetmFontColor(Landroid/app/SemWallpaperColors$Item;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1344
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getColorThemeColor retColor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :goto_a
    return v1

    .line 1290
    :cond_14
    :goto_b
    nop

    .line 1291
    cmp-long v6, p1, v6

    if-nez v6, :cond_15

    goto :goto_c

    :cond_15
    move-wide v10, v12

    :goto_c
    invoke-virtual {v0, v10, v11}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v6

    .line 1292
    .restart local v6    # "item":Landroid/app/SemWallpaperColors$Item;
    if-nez v6, :cond_16

    .line 1293
    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    return v16

    .line 1296
    :cond_16
    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v7

    .line 1298
    .local v7, "fontColor":I
    if-nez v7, :cond_17

    aget-object v4, v3, v4

    aget v4, v4, v14

    goto :goto_d

    .line 1299
    :cond_17
    aget-object v4, v3, v4

    aget v4, v4, v15

    :goto_d
    move v1, v4

    .line 1300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getColorThemeColor nio text retColor: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    return v1

    .line 1261
    .end local v1    # "retColor":I
    .end local v3    # "colorPalette":[[I
    .end local v5    # "retData":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v6    # "item":Landroid/app/SemWallpaperColors$Item;
    .end local v7    # "fontColor":I
    :cond_18
    :goto_e
    const-string v1, "getColorThemeColor: We don\'t have seed colors."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-direct/range {p0 .. p2}, Landroid/app/SemWallpaperColors;->getItemFontColor(J)I

    move-result v1

    return v1
.end method

.method public blacklist getDarkModeDimColor()I
    .locals 1

    .line 332
    const/high16 v0, -0x1000000

    return v0
.end method

.method public blacklist getDarkModeDimOpacity()F
    .locals 1

    .line 336
    iget v0, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    return v0
.end method

.method public blacklist getKey()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v0, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 310
    .local v2, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v2    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    goto :goto_0

    .line 312
    :cond_0
    return-object v0
.end method

.method public blacklist getSeedColors()[I
    .locals 1

    .line 1177
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    return-object v0
.end method

.method public blacklist getWhich()I
    .locals 1

    .line 316
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    return v0
.end method

.method public blacklist getXml()Ljava/lang/String;
    .locals 1

    .line 320
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->xmlGenerator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist save(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "save "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperColors"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-nez p1, :cond_0

    .line 242
    const-string/jumbo v0, "save, path == null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    .line 247
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_0

    .line 251
    :catch_0
    move-exception v3

    .line 252
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 256
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 257
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->xmlGenerator()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 258
    const-string/jumbo v3, "save done"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    nop

    .line 264
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 268
    :cond_1
    :goto_1
    goto :goto_2

    .line 266
    :catch_1
    move-exception v1

    .line 267
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 269
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 262
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 259
    :catch_2
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 264
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 270
    :goto_2
    return-void

    .line 263
    :goto_3
    if-eqz v0, :cond_2

    .line 264
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 266
    :catch_3
    move-exception v3

    .line 267
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 268
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    nop

    .line 269
    :goto_5
    throw v1
.end method

.method public blacklist toSimpleString()Ljava/lang/String;
    .locals 11

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1128
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v1}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v1

    const-string v2, "["

    if-nez v1, :cond_2

    .line 1129
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 1130
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1131
    .local v3, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1132
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v5

    .line 1133
    .local v5, "item":Landroid/app/SemWallpaperColors$Item;
    if-eqz v5, :cond_0

    .line 1134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .end local v3    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 1139
    :cond_2
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 1140
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1141
    .local v1, "size":I
    iget-object v3, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1142
    .local v4, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1143
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v6

    .line 1144
    .local v6, "item":Landroid/app/SemWallpaperColors$Item;
    iget-object v7, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1145
    .local v7, "index":I
    if-eqz v6, :cond_4

    .line 1146
    if-lez v7, :cond_3

    if-ge v7, v1, :cond_3

    .line 1147
    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    :cond_3
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v8

    invoke-static {v8}, Landroid/app/SemWallpaperColorsArea;->name(I)Ljava/lang/String;

    move-result-object v8

    .line 1150
    .local v8, "name":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    .end local v4    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v5    # "rect":Landroid/graphics/Rect;
    .end local v6    # "item":Landroid/app/SemWallpaperColors$Item;
    .end local v7    # "index":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 1156
    .end local v1    # "size":I
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 9

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "[version:22"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", which:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", adaptive dim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", darkmode dim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t[SeedColors, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    :cond_0
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1111
    .local v3, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1112
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v5

    .line 1113
    .local v5, "item":Landroid/app/SemWallpaperColors$Item;
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v6

    invoke-static {v6}, Landroid/app/SemWallpaperColorsArea;->name(I)Ljava/lang/String;

    move-result-object v6

    .line 1114
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n\t["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    .end local v3    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .end local v6    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1117
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1078
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1082
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1084
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    .line 1085
    .local v2, "item":Landroid/app/SemWallpaperColors$Item;
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getShadowSize()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1088
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getShadowOpacity()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1089
    invoke-static {v2}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetHSV(Landroid/app/SemWallpaperColors$Item;)[F

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1090
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v2    # "item":Landroid/app/SemWallpaperColors$Item;
    goto :goto_0

    .line 1092
    :cond_0
    iget v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1093
    iget v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    iget v0, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1095
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1096
    return-void
.end method
