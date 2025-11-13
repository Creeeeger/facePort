.class public Landroid/app/SemWallpaperColors;
.super Ljava/lang/Object;
.source "SemWallpaperColors.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemWallpaperColors$Item;,
        Landroid/app/SemWallpaperColors$WallpaperColorsData;,
        Landroid/app/SemWallpaperColors$Builder;
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

    new-instance v0, Landroid/app/SemWallpaperColors$1;

    invoke-direct {v0}, Landroid/app/SemWallpaperColors$1;-><init>()V

    sput-object v0, Landroid/app/SemWallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/app/SemWallpaperColors$Item;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    iput v2, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-direct {p0, v1, p1, v0}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;II)V

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

    invoke-virtual {v1, p2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->workaround()V

    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Landroid/app/SemWallpaperColors;->setSeedColors(Landroid/graphics/Bitmap;)V

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

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/SemWallpaperColors;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;Landroid/app/WallpaperColorOverrideAreas;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;Landroid/app/WallpaperColorOverrideAreas;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    iput v2, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-direct {p0, p1, p3, p4, p6}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    :try_start_0
    invoke-static {p3}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    invoke-static {p3}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    filled-new-array {v5, v3}, [I

    move-result-object v4

    filled-new-array {v4}, [[I

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    :cond_1
    new-array v4, v0, [[I

    move-object v2, v4

    :goto_0
    invoke-direct {p0, p2, v0, v5, v2}, Landroid/app/SemWallpaperColors;->calc(Landroid/graphics/Bitmap;IZ[[I)V

    invoke-direct {p0, p2, v5, v5, v2}, Landroid/app/SemWallpaperColors;->calc(Landroid/graphics/Bitmap;IZ[[I)V

    invoke-direct {p0, p2, v3, v5, v1}, Landroid/app/SemWallpaperColors;->calc(Landroid/graphics/Bitmap;IZ[[I)V

    :cond_2
    if-eqz p5, :cond_4

    array-length v2, p5

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, p5, v4

    iget-object v6, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v7, p0, v5, v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2, v3, v0, v1}, Landroid/app/SemWallpaperColors;->calc(Landroid/graphics/Bitmap;IZ[[I)V

    :cond_4
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->calcAdaptiveDim()V

    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->calcDarkModeDim()V

    invoke-direct {p0, p2}, Landroid/app/SemWallpaperColors;->setSeedColors(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->workaround()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    iput v2, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v1, v2, v0}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    const-class v4, Landroid/graphics/Rect;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    new-instance v5, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v5, v1}, Landroid/app/SemWallpaperColors$Item;-><init>(Landroid/app/SemWallpaperColors$Item-IA;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColor(Landroid/app/SemWallpaperColors$Item;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetShadowSize(Landroid/app/SemWallpaperColors$Item;F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetShadowOpacity(Landroid/app/SemWallpaperColors$Item;F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetHSV(Landroid/app/SemWallpaperColors$Item;[F)V

    iget-object v6, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setRect(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    goto :goto_1

    :cond_0
    iget-object v7, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v8, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v8, p0, v4, v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->workaround()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    iput v1, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColors;->xmlParser(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->workaround()V

    return-void
.end method

.method private blacklist calc(Landroid/graphics/Bitmap;IZ[[I)V
    .locals 10

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

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

    const/4 v2, 0x0

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/SemWallpaperColors;->calcInternal(Landroid/graphics/Bitmap;ZLandroid/app/SemWallpaperColors$WallpaperColorsData;Landroid/app/SemWallpaperColors$Item;)V

    goto :goto_0

    :cond_1
    goto :goto_3

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

    :cond_3
    :goto_1
    array-length v1, p4

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v4, p4, v3

    aget v5, v4, p2

    iget-object v6, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x0

    if-ne p2, v0, :cond_4

    iget-object v8, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    aget v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-virtual {v8}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v7

    :cond_4
    invoke-direct {p0, p1, p3, v6, v7}, Landroid/app/SemWallpaperColors;->calcInternal(Landroid/graphics/Bitmap;ZLandroid/app/SemWallpaperColors$WallpaperColorsData;Landroid/app/SemWallpaperColors$Item;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private blacklist calcAdaptiveDim()V
    .locals 6

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

    :cond_0
    const-string v0, "calcAdaptiveDim: Cover wallpaper, return"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "calcAdaptiveDim: Custom area, return"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetLeftLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetRightLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v4}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    invoke-static {v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->calculateAdaptiveDim([Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;

    move-result-object v3

    iget v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->opacity:F

    iput v4, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    iget v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->color:I

    iput v4, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

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

    :cond_8
    return-void
.end method

.method private blacklist calcDarkModeDim()V
    .locals 8

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v0

    const-string v1, "SemWallpaperColors"

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v0}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v0}, Landroid/app/SemWallpaperColors;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

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

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v5

    if-ne v5, v0, :cond_3

    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v3

    invoke-static {v3}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v3

    iget-object v2, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    const-string v3, "dominantColorResult == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    array-length v3, v2

    new-array v3, v3, [[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    array-length v6, v2

    if-ge v5, v6, :cond_7

    aget-object v6, v2, v5

    iget v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    const/4 v6, 0x0

    aput-object v6, v3, v5

    goto :goto_4

    :cond_6
    const/4 v6, 0x3

    new-array v6, v6, [F

    aput-object v6, v3, v5

    aget-object v6, v2, v5

    iget v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    aget-object v7, v3, v5

    invoke-static {v6, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget-object v6, v3, v5

    const/4 v7, 0x2

    aget v6, v6, v7

    aget-object v7, v2, v5

    iget v7, v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    const v5, 0x3f19999a    # 0.6f

    cmpg-float v5, v4, v5

    const v6, 0x3e19999a    # 0.15f

    if-gtz v5, :cond_8

    iput v6, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    goto :goto_5

    :cond_8
    const v5, 0x3f4ccccd    # 0.8f

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_9

    const/high16 v5, 0x3e800000    # 0.25f

    iput v5, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    goto :goto_5

    :cond_9
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v4

    sub-float/2addr v5, v6

    iput v5, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

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

    return-void

    :cond_a
    const-string v0, "custom area, return"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist calcInternal(Landroid/graphics/Bitmap;ZLandroid/app/SemWallpaperColors$WallpaperColorsData;Landroid/app/SemWallpaperColors$Item;)V
    .locals 6

    invoke-virtual {p3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    invoke-virtual {p3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/SemWallpaperColorsArea;->get(III)Landroid/graphics/Rect;

    move-result-object v0

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

    iget v2, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v2}, Landroid/app/SemWallpaperColors;->isWatchFaceLargeDisplay(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget v2, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v2}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v2}, Landroid/app/SemWallpaperColors;->isVirtualDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, v1, p4, v3}, Landroid/app/SemWallpaperColors;->fromBitmapInternal(Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors$Item;Z)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-direct {p0, v1, p4, v3}, Landroid/app/SemWallpaperColors;->fromBitmapInternal(Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors$Item;Z)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static blacklist fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;
    .locals 8

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

    if-eqz p4, :cond_1

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p4, v1

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

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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
.end method

.method public static blacklist fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;
    .locals 1

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

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    move-result-object v1

    return-object v1
.end method

.method private blacklist fromBitmapInternal(Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors$Item;Z)Landroid/app/SemWallpaperColors$Item;
    .locals 29

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

    const/16 v2, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    invoke-direct/range {p0 .. p1}, Landroid/app/SemWallpaperColors;->getLeftIndicator(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct/range {p0 .. p1}, Landroid/app/SemWallpaperColors;->getRightIndicator(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v7, :cond_3

    if-nez v8, :cond_0

    move-object/from16 v12, p0

    move-object/from16 v17, v5

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v9, v10, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->fineScaleValueBySquareRootSize(III)F

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    float-to-int v11, v11

    invoke-static {v7, v10, v11, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-static {v12, v13, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->fineScaleValueBySquareRootSize(III)F

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v10, v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v11, v12

    invoke-static {v8, v10, v11, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v12, p0

    invoke-direct {v12, v7, v8}, Landroid/app/SemWallpaperColors;->getIndicatorPixels(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[I

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->calcurateIndicatorLegibility([I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;

    move-result-object v13

    const/4 v14, 0x0

    iget-object v15, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v6, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v15, v6, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v15, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v6, v15, :cond_2

    const/4 v14, 0x2

    :cond_2
    :goto_0
    iget v6, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    iget-object v15, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const/4 v1, 0x0

    move-object/from16 v17, v5

    const/4 v5, 0x0

    invoke-static {v7, v1, v15, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v15

    move/from16 v16, v9

    iget-object v9, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    invoke-static {v8, v1, v9, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

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

    new-instance v3, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v3, v14, v6, v15, v1}, Landroid/app/SemWallpaperColors$Item;-><init>(IILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)V

    move-object v1, v3

    move-object/from16 v6, p1

    move/from16 v26, v2

    goto/16 :goto_4

    :cond_3
    move-object/from16 v12, p0

    move-object/from16 v17, v5

    :goto_1
    const-string v1, "fromBitmap indicator left/right bitmap == null"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/SemWallpaperColors$Item;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3, v4}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    return-object v1

    :cond_4
    move-object/from16 v12, p0

    move-object/from16 v17, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->fineScaleValueBySquareRootSize(III)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    move-object/from16 v6, p1

    const/4 v7, 0x0

    invoke-static {v6, v3, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v7, 0x0

    if-eqz v0, :cond_6

    sget-object v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    invoke-virtual/range {p2 .. p2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    sget-object v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    :cond_5
    new-instance v10, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    invoke-virtual/range {p2 .. p2}, Landroid/app/SemWallpaperColors$Item;->getHSV()[F

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;-><init>(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;[F)V

    move-object v7, v10

    :cond_6
    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v11, v13, :cond_7

    const/4 v10, 0x1

    goto :goto_2

    :cond_7
    iget-object v11, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v11, v13, :cond_8

    const/4 v10, 0x2

    :cond_8
    :goto_2
    iget v11, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v14, 0x40c00000    # 6.0f

    const v15, 0x3ecccccd    # 0.4f

    const v16, 0x3f666666    # 0.9f

    invoke-direct/range {p0 .. p0}, Landroid/app/SemWallpaperColors;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0

    move/from16 v25, v1

    iget-object v1, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move/from16 v26, v2

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move/from16 v27, v3

    const-string v3, "HD"

    if-ne v1, v2, :cond_a

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v13, 0x40400000    # 3.0f

    goto :goto_3

    :cond_9
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v13, 0x40c00000    # 6.0f

    goto :goto_3

    :cond_a
    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v13, 0x40400000    # 3.0f

    goto :goto_3

    :cond_b
    const-string v3, "FHD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v13, 0x40c00000    # 6.0f

    goto :goto_3

    :cond_c
    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v13, 0x40c00000    # 6.0f

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

    iget-object v0, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    invoke-static {v0, v3, v13}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->getInterpolatedShadowSize(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F

    move-result v0

    iget-object v14, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    invoke-static {v14, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->getInterpolatedShadowOpacity(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v1

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

    const-string v15, " avgHSV= "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v15, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    invoke-static {v15}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :goto_4
    return-object v1
.end method

.method public static blacklist fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/SemWallpaperColors;

    invoke-direct {v0, p0}, Landroid/app/SemWallpaperColors;-><init>(Ljava/lang/String;)V

    return-object v0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getBlankWallpaperColors()Landroid/app/SemWallpaperColors;
    .locals 5

    new-instance v0, Landroid/app/SemWallpaperColors;

    new-instance v1, Landroid/app/SemWallpaperColors$Item;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Landroid/app/SemWallpaperColors;-><init>(ILandroid/app/SemWallpaperColors$Item;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private blacklist getCurrentResolution()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const-string v1, "WQHD"

    const/16 v2, 0x5a0

    if-lt v0, v2, :cond_1

    const-string v1, "WQHD"

    goto :goto_0

    :cond_1
    const/16 v2, 0x2d0

    if-le v0, v2, :cond_2

    const/16 v2, 0x438

    if-gt v0, v2, :cond_2

    const-string v1, "FHD"

    goto :goto_0

    :cond_2
    const-string v1, "HD"

    :goto_0
    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    return-object v1
.end method

.method public static blacklist getDeviceVersion()I
    .locals 2

    const-string v0, "SemWallpaperColors"

    const-string/jumbo v1, "version 22"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x16

    return v0
.end method

.method private blacklist getIndicatorPixels(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[I
    .locals 12

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

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v11, v2, [I

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

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget v3, v1, v2

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, v11

    if-ge v2, v3, :cond_1

    array-length v3, v1

    add-int/2addr v3, v2

    aget v4, v11, v2

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private blacklist getItemFontColor(J)I
    .locals 5

    invoke-virtual {p0, p1, p2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v2

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

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x1000000

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method private blacklist getLeftIndicator(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/SemWallpaperColorsArea;->get(I)Landroid/graphics/Rect;

    move-result-object v2

    int-to-float v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x42dc0000    # 110.0f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v3, v3, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static blacklist getLegibilityVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.0"

    return-object v0
.end method

.method private blacklist getRightIndicator(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/SemWallpaperColorsArea;->get(I)Landroid/graphics/Rect;

    move-result-object v2

    int-to-float v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x42980000    # 76.0f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v7, v0, v6

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {p1, v7, v3, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static blacklist getXmlVersion(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "<Version>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "</Version>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v1, 0x9

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private blacklist init(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    return-void
.end method

.method private blacklist init(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mContext:Landroid/content/Context;

    iput v2, v0, Landroid/app/SemWallpaperColors;->mWhich:I

    new-instance v3, Landroid/app/SemWallpaperColorsArea;

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/app/SemWallpaperColorsArea;-><init>(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    iput-object v3, v0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    iget v3, v0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v3}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v3

    const/4 v7, 0x3

    const-wide/16 v8, 0x40

    const/4 v10, 0x2

    const/4 v6, 0x0

    const-wide/16 v11, 0x10

    const-wide/16 v13, 0x20

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v15, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v15, v0, v11, v12, v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v13, v14, v10}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x4

    const-wide/16 v8, 0x80

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x5

    const-wide/16 v8, 0x100

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x7

    const-wide/16 v8, 0x200

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    iget v3, v0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v3}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {v0, v2}, Landroid/app/SemWallpaperColors;->isWatchFaceLargeDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v15, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v15, v0, v11, v12, v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v13, v14, v10}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x4

    const-wide/16 v8, 0x80

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x5

    const-wide/16 v8, 0x100

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x7

    const-wide/16 v8, 0x200

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    invoke-direct {v0, v2}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v11, v12, v10}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/16 v7, 0x9

    invoke-direct {v6, v0, v13, v14, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/16 v7, 0x8

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/16 v7, 0xa

    const-wide/16 v8, 0x80

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const-wide/16 v7, 0x100

    const/4 v9, 0x4

    invoke-direct {v6, v0, v7, v8, v9}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x7

    const-wide/16 v8, 0x200

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {v0, v2}, Landroid/app/SemWallpaperColors;->isVirtualDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v7, v0, v11, v12, v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v13, v14, v10}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v7, v0, v13, v14, v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x6

    const-wide/16 v8, 0x80

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v3, "SemWallpaperColors"

    const-string v6, "init custom"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Landroid/app/SemWallpaperColorsArea;->buildKeyMap(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static blacklist isHome(I)Z
    .locals 2

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

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isWatchFaceDisplay(I)Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isWatchFaceLargeDisplay(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist saveBitmaptoJpeg(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

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

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_2
    :goto_3
    nop

    :goto_4
    throw v1
.end method

.method private blacklist setSeedColors(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "SemWallpaperColors"

    const-string/jumbo v1, "setSeedColors: bitmap is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p1}, Lcom/samsung/android/wallpaper/colortheme/ColorThemeExtractor;->getSeedColors(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    return-void
.end method

.method private static blacklist stringToIntArray(Ljava/lang/String;)[I
    .locals 4

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

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private blacklist workaround()V
    .locals 6

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

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    if-nez v2, :cond_0

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

    new-instance v2, Landroid/app/SemWallpaperColors$Item;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    invoke-virtual {v1, v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist xmlGenerator()Ljava/lang/String;
    .locals 12

    const-string v0, "SeedColors"

    const-string v1, "DarkModeDimOpacity"

    const-string v2, "AdaptiveDimColor"

    const-string v3, "AdaptiveDimOpacity"

    const-string v4, "Which"

    const-string v5, "Version"

    const-string v6, ""

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {v7, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "22"

    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

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

    invoke-interface {v7, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

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

    invoke-interface {v7, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

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

    invoke-interface {v7, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

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

    invoke-interface {v7, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    array-length v1, v1

    if-lez v1, :cond_0

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

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

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v3

    invoke-direct {p0, v7, v2, v3}, Landroid/app/SemWallpaperColors;->xmlWrite(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist xmlParser(Ljava/lang/String;)V
    .locals 12

    const-string v0, "SemWallpaperColors"

    const-string/jumbo v1, "xmlParser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/app/SemWallpaperColors$Item;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/app/SemWallpaperColors$Item;-><init>(Landroid/app/SemWallpaperColors$Item-IA;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x1

    if-eq v3, v8, :cond_15

    const-string v8, "Legibility"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_14

    iget-object v8, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, -0x1

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V

    goto :goto_2

    :cond_0
    const/high16 v8, -0x1000000

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V

    :cond_1
    :goto_2
    invoke-virtual {v7, v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setRect(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    goto :goto_3

    :cond_2
    iget-object v8, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v11, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v11, p0, v4, v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move v7, v10

    goto/16 :goto_4

    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Which"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v6, v10, v11}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;II)V

    :cond_3
    const-string v10, "Default"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x2

    invoke-direct {p0, v6, v10, v11}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;II)V

    :cond_4
    const-string v10, "AdaptiveDimOpacity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    :cond_5
    const-string v10, "AdaptieDimColor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    :cond_6
    const-string v10, "DarkModeDimOpacity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    :cond_7
    const-string v10, "Rect"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v10

    :cond_8
    const-string v10, "Left"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Landroid/graphics/Rect;->left:I

    :cond_9
    const-string v10, "Top"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Landroid/graphics/Rect;->top:I

    :cond_a
    const-string v10, "Right"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Landroid/graphics/Rect;->right:I

    :cond_b
    const-string v10, "Bottom"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    :cond_c
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v8, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v8, v6}, Landroid/app/SemWallpaperColors$Item;-><init>(Landroid/app/SemWallpaperColors$Item-IA;)V

    move-object v5, v8

    :cond_d
    const-string v8, "avgHSV"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x3

    new-array v8, v8, [F

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, v8}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->colorToHSV(I[F)V

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetHSV(Landroid/app/SemWallpaperColors$Item;[F)V

    :cond_e
    const-string v8, "FontColor"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColor(Landroid/app/SemWallpaperColors$Item;I)V

    :cond_f
    const-string v8, "FontColorRgb"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V

    :cond_10
    const-string v8, "ShadowSize"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetShadowSize(Landroid/app/SemWallpaperColors$Item;F)V

    :cond_11
    const-string v8, "ShadowOpacity"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetShadowOpacity(Landroid/app/SemWallpaperColors$Item;F)V

    :cond_12
    const-string v8, "SeedColors"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    invoke-static {v8}, Landroid/app/SemWallpaperColors;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v10

    iput-object v10, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    :cond_13
    nop

    :cond_14
    :goto_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v3, v8

    goto/16 :goto_1

    :cond_15
    goto :goto_5

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_5
    nop

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

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "ShadowOpacity"

    const-string v3, "ShadowSize"

    const-string v4, "FontColorRgb"

    const-string v5, "avgHSV"

    const-string v6, "FontColor"

    const-string v7, "Legibility"

    const-string v8, "Bottom"

    const-string v9, "Right"

    const-string v10, "Top"

    const-string v11, "Left"

    const-string v12, "Rect"

    const-string v13, ""

    if-eqz v2, :cond_2

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v14, 0x0

    :try_start_0
    invoke-interface {v1, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v14, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v14, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v14, 0x0

    invoke-interface {v1, v14, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v14, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v14, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    invoke-interface {v1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    invoke-interface {v1, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    invoke-interface {v1, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$fgetmHSV(Landroid/app/SemWallpaperColors$Item;)[F

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v1, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getHSV()[F

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v8, 0x0

    invoke-interface {v1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const/4 v5, 0x0

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getShadowSize()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getShadowOpacity()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string v0, "SemWallpaperColors"

    const-string/jumbo v3, "xmlWrite check null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/app/SemWallpaperColors;
    .locals 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors;

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    invoke-virtual {v1}, Landroid/app/SemWallpaperColorsArea;->clone()Landroid/app/SemWallpaperColorsArea;

    move-result-object v1

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

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

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->clone()Landroid/app/SemWallpaperColors$WallpaperColorsData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    :cond_1
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    iget-object v1, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    iget-object v1, v0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

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

    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist get(J)Landroid/app/SemWallpaperColors$Item;
    .locals 9

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

    const-string v0, "SemWallpaperColors is not support default area"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v0, v3, v2, v1}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

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

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getExternalKey()J

    move-result-wide v7

    cmp-long v7, p1, v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

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

    new-instance v4, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v4, v3, v2, v1}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    move-object v0, v4

    :cond_3
    return-object v0
.end method

.method public blacklist get(Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors$Item;
    .locals 3

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

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAdaptiveDimColor()I
    .locals 1

    iget v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    return v0
.end method

.method public blacklist getAdaptiveDimOpacity()F
    .locals 1

    iget v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    return v0
.end method

.method public blacklist getColorDataSize()I
    .locals 1

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

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/SemWallpaperColors;->getColorTableList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getColorTableList(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    const-string v1, "SemWallpaperColors"

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    array-length v0, v0

    if-lez v0, :cond_6

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;-><init>()V

    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->setColors([I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->generateColorPalette(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->getColorPalettes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v2

    :cond_5
    const-string v3, "getColorTableList: Error while generating color palettes."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string v0, "getColorTableList: No seed colors."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getColorThemeColor(J)I
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    const-string v2, "SemWallpaperColors"

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    array-length v1, v1

    if-gtz v1, :cond_0

    goto/16 :goto_e

    :cond_0
    const/4 v1, 0x0

    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_3

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;

    invoke-direct {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;-><init>()V

    iget-object v5, v0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-virtual {v3, v5}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->setColors([I)V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->generateColorPalette()V

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->getColorPalettes()Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    iget-object v7, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v4, :cond_2

    const-string v4, "getColorThemeColor: Error while generating color palette."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p2}, Landroid/app/SemWallpaperColors;->getItemFontColor(J)I

    move-result v2

    return v2

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

    :cond_3
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    const/4 v5, 0x0

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

    if-nez v7, :cond_5

    const-string v8, "getColorThemeColor: data is null. return FONT_COLOR_WHITE"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getExternalKey()J

    move-result-wide v17

    cmp-long v8, v17, p1

    if-nez v8, :cond_11

    invoke-virtual {v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_6
    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v8

    if-nez v3, :cond_8

    const-string v4, "getColorThemeColor: colorPalette is null. return fontColor"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    const/high16 v16, -0x1000000

    :goto_2
    return v16

    :cond_8
    cmp-long v9, p1, v10

    if-eqz v9, :cond_f

    cmp-long v9, p1, v12

    if-nez v9, :cond_9

    goto :goto_6

    :cond_9
    const-wide/16 v9, 0x80

    cmp-long v9, p1, v9

    if-nez v9, :cond_b

    if-nez v8, :cond_a

    aget-object v4, v3, v4

    aget v4, v4, v14

    goto :goto_3

    :cond_a
    aget-object v4, v3, v4

    aget v4, v4, v15

    :goto_3
    move v1, v4

    move-object v5, v7

    goto :goto_9

    :cond_b
    const-wide/16 v9, 0x100

    cmp-long v9, p1, v9

    if-eqz v9, :cond_d

    const-wide/16 v9, 0x200

    cmp-long v9, p1, v9

    if-nez v9, :cond_c

    goto :goto_4

    :cond_c
    const-string v4, "getColorThemeColor not matched."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

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

    move-object v5, v7

    goto :goto_9

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

    move-object v5, v7

    goto :goto_9

    :cond_11
    :goto_8
    goto/16 :goto_1

    :cond_12
    :goto_9
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v4

    if-eqz v4, :cond_13

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

    :goto_a
    return v1

    :cond_14
    :goto_b
    nop

    cmp-long v6, p1, v6

    if-nez v6, :cond_15

    goto :goto_c

    :cond_15
    move-wide v10, v12

    :goto_c
    invoke-virtual {v0, v10, v11}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v6

    if-nez v6, :cond_16

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_16
    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v7

    if-nez v7, :cond_17

    aget-object v4, v3, v4

    aget v4, v4, v14

    goto :goto_d

    :cond_17
    aget-object v4, v3, v4

    aget v4, v4, v15

    :goto_d
    move v1, v4

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

    return v1

    :cond_18
    :goto_e
    const-string v1, "getColorThemeColor: We don\'t have seed colors."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p2}, Landroid/app/SemWallpaperColors;->getItemFontColor(J)I

    move-result v1

    return v1
.end method

.method public blacklist getDarkModeDimColor()I
    .locals 1

    const/high16 v0, -0x1000000

    return v0
.end method

.method public blacklist getDarkModeDimOpacity()F
    .locals 1

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist getSeedColors()[I
    .locals 1

    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    return-object v0
.end method

.method public blacklist getStandardPaletteList(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->initSeedColors()V

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->getSeedColors()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->setColors([I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->generateColorPalette(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->getColorPalettes()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getStandardSeedColors()[I
    .locals 2

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->initSeedColors()V

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->getSeedColors()[I

    move-result-object v1

    return-object v1
.end method

.method public blacklist getWhich()I
    .locals 1

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    return v0
.end method

.method public blacklist getXml()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->xmlGenerator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist save(Ljava/lang/String;)V
    .locals 5

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

    if-nez p1, :cond_0

    const-string/jumbo v0, "save, path == null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->xmlGenerator()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    const-string/jumbo v3, "save done"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_2
    :goto_4
    nop

    :goto_5
    throw v1
.end method

.method public blacklist toSimpleString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v1}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v1

    const-string v2, "["

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

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

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v5

    if-eqz v5, :cond_0

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

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

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

    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v6

    iget-object v7, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-eqz v6, :cond_4

    if-lez v7, :cond_3

    if-ge v7, v1, :cond_3

    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v8

    invoke-static {v8}, Landroid/app/SemWallpaperColorsArea;->name(I)Ljava/lang/String;

    move-result-object v8

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

    :cond_4
    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[version:22"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    array-length v1, v1

    if-lez v1, :cond_0

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

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v6

    invoke-static {v6}, Landroid/app/SemWallpaperColorsArea;->name(I)Ljava/lang/String;

    move-result-object v6

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

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

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

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getShadowSize()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getShadowOpacity()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getHSV()[F

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
