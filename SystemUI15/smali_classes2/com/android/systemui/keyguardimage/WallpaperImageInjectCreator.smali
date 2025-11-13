.class public final Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;
.super Lcom/android/systemui/keyguardimage/WallpaperImageCreator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/wallpaper/KeyguardWallpaper;)V
    .locals 7

    const-string v1, "WallpaperImageInjectCreator"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/KeyguardWallpaper;)V

    iput-object p5, p0, Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-void
.end method


# virtual methods
.method public final createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 5

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    iget-object v1, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v1

    const-string v2, "createImage, wallpaperViewType = "

    invoke-static {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    and-int/lit8 v1, v0, 0x3c

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    new-instance v1, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    iget-object v2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->isFixedOrientationLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
