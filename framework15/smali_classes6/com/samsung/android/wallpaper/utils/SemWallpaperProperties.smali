.class public Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;
.super Ljava/lang/Object;
.source "SemWallpaperProperties.java"


# static fields
.field private static final blacklist KEY_AOD_THUMBNAIL:Ljava/lang/String; = "aodThumbnail"

.field private static final blacklist KEY_AOD_THUMBNAIL_ERASEBG:Ljava/lang/String; = "bgErasedAodThumbnail"

.field public static final blacklist KEY_CONTENT_ATTRIBUTES:Ljava/lang/String; = "contentAttributes"

.field public static final blacklist KEY_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field private static final blacklist KEY_FIXED_ORIENTATION:Ljava/lang/String; = "isFixedOrientation"

.field private static final blacklist KEY_HAS_CROPPED_OBJECT:Ljava/lang/String; = "hasCroppedObject"

.field private static final blacklist KEY_HAS_OWN_CLOCK:Ljava/lang/String; = "hasOwnClock"

.field public static final blacklist KEY_IMAGE_CATEGORY:Ljava/lang/String; = "imageCategory"

.field public static final blacklist KEY_IMAGE_FILTER_PARAMS:Ljava/lang/String; = "imageFilterParams"

.field public static final blacklist KEY_IS_PRELOADED:Ljava/lang/String; = "isPreloaded"

.field public static final blacklist KEY_LEGIBILITY_COLORS_ROTATION_0:Ljava/lang/String; = "rotation0"

.field public static final blacklist KEY_LEGIBILITY_COLORS_ROTATION_270:Ljava/lang/String; = "rotation270"

.field public static final blacklist KEY_LEGIBILITY_COLORS_ROTATION_90:Ljava/lang/String; = "rotation90"

.field public static final blacklist KEY_LOCK_LEGIBILITY_COLORS:Ljava/lang/String; = "lockLegibilityColors"

.field public static final blacklist KEY_SERVICE_SETTINGS:Ljava/lang/String; = "serviceSettings"

.field public static final blacklist KEY_SYSTEM_LEGIBILITY_COLORS:Ljava/lang/String; = "systemLegibilityColors"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VALUE_CONTENT_TYPE_LAYERED:Ljava/lang/String; = "layered"

.field private static final blacklist VALUE_CONTENT_TYPE_WEATHER:Ljava/lang/String; = "weather"

.field private static final blacklist VALUE_IMAGE_CATEGORY_COLORS:Ljava/lang/String; = "Colors"

.field private static final blacklist VALUE_IMAGE_CATEGORY_GRAPHICAL:Ljava/lang/String; = "Graphical"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDlsStateShot:Lcom/samsung/android/wallpaper/utils/DlsStateShot;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mOriginalWhich:I

.field private blacklist mTargetWhich:I

.field private blacklist mUserId:I

.field private blacklist mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSingleType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput p3, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mUserId:I

    iput p2, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mOriginalWhich:I

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->refresh()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type of \'which\' should be one of FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'which\' does not have the mode value such as FLAG_DISPLAY_PHONE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getContentAttributes()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mExtras:Landroid/os/Bundle;

    const-string v1, "contentAttributes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPairingConsideredTargetWhich(I)I
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->isDlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->isSystemAndLockPaired(I)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method private blacklist getWallpaperType()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mTargetWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    return v0
.end method

.method private blacklist hasCroppedObject()Z
    .locals 2

    const-string v0, "hasCroppedObject"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist isDlsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mDlsStateShot:Lcom/samsung/android/wallpaper/utils/DlsStateShot;

    iget v1, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mOriginalWhich:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->isDlsEnabled(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isSggEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mDlsStateShot:Lcom/samsung/android/wallpaper/utils/DlsStateShot;

    iget v1, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mOriginalWhich:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->isSggEnabled(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getAodThumbnailFile(Z)Landroid/os/ParcelFileDescriptor;
    .locals 7

    iget v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mTargetWhich:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->isSupportAodBackgroundErasing()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAodThumbnailFile: erasing BG not supported. which="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "bgErasedAodThumbnail"

    goto :goto_0

    :cond_1
    const-string v2, "aodThumbnail"

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAodThumbnailFile: field not present. which="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v4, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mUserId:I

    invoke-virtual {v1, v0, v4, v3}, Landroid/app/WallpaperManager;->getWallpaperAssetFile(IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAodThumbnailFile(ZZ)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mTargetWhich:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->isSupportAodSmartEffect()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAodThumbnailFile: effect not supported. which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getAodThumbnailFile(Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "contentType"

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getImageCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "imageCategory"

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getImageFilterParams()Ljava/lang/String;
    .locals 1

    const-string v0, "imageFilterParams"

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIntProperty(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasOwnClock()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getContentAttributes()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "hasOwnClock"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public blacklist hasProperty(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFixedOrientation()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getContentAttributes()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "isFixedOrientation"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public blacklist isFixedOrientationLiveWallpaper()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getWallpaperType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->isFixedOrientation()Z

    move-result v0

    return v0
.end method

.method public blacklist isStaticImageTypeWallpaper()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mOriginalWhich:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mTargetWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layered"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :sswitch_1
    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only supports FLAG_SYSTEM. which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mOriginalWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist isSupportAodBackgroundErasing()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->isDlsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    goto :goto_0

    :pswitch_0
    const-string v2, "layered"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->hasCroppedObject()Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x2802e50
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist isSupportAodSmartEffect()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportFullAod()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->isSggEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getWallpaperType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x1

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mTargetWhich:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->isStockLiveWallpaper(I)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist refresh()V
    .locals 4

    new-instance v0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wallpaper/utils/DlsStateShot;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mDlsStateShot:Lcom/samsung/android/wallpaper/utils/DlsStateShot;

    iget v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mOriginalWhich:I

    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getPairingConsideredTargetWhich(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mTargetWhich:I

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->isDlsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mTargetWhich:I

    iget v3, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mExtras:Landroid/os/Bundle;

    :cond_1
    sget-object v1, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh: which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mOriginalWhich:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", targetWhich="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mTargetWhich:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dlsEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dlsState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mDlsStateShot:Lcom/samsung/android/wallpaper/utils/DlsStateShot;

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->getStateCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
