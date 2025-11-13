.class public final Lcom/android/systemui/wallpaper/engines/image/ImageSource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/engines/WallpaperSource;


# instance fields
.field public TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mCoverSupplier:Lcom/android/systemui/wallpaper/engines/image/CoverImageSupplier;

.field public final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field public final mDisplayId:I

.field public mMdmSupplier:Lcom/android/systemui/wallpaper/engines/image/MdmImageSupplier;

.field public mPluginSupplier:Lcom/android/systemui/wallpaper/engines/image/PluginImageSupplier;

.field public final mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

.field public final mUserId:I

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public mWallpaperManagerSupplier:Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;

.field public mWallpaperType:I

.field public mWhich:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result v0

    const-string v1, "ImageWallpaper_"

    const-string v2, "[ImageSource]"

    invoke-static {p4, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->TAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    iput v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    iput p5, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mUserId:I

    iput p6, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mDisplayId:I

    invoke-virtual {p4, v0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWallpaperType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->updateSupplier(I)V

    return-void
.end method


# virtual methods
.method public final getSupplier()Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;
    .locals 3

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mMdmSupplier:Lcom/android/systemui/wallpaper/engines/image/MdmImageSupplier;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getImageSupplier: which="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWallpaperType:I

    invoke-static {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWallpaperType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->TAG:Ljava/lang/String;

    const-string v1, "getImageSupplier: Get cover wallpaper."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mCoverSupplier:Lcom/android/systemui/wallpaper/engines/image/CoverImageSupplier;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->isMultipack()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    check-cast v1, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->isPluginWallpaperRequired(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->TAG:Ljava/lang/String;

    const-string v1, "getImageSupplier: Get plugin wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mPluginSupplier:Lcom/android/systemui/wallpaper/engines/image/PluginImageSupplier;

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWallpaperManagerSupplier:Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;

    return-object p0
.end method

.method public final isFixedOrientation(ZLcom/android/systemui/util/SettingsHelper;)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    iget-object v4, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v7, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sget-boolean v7, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/16 v8, 0x10

    if-eqz v7, :cond_1

    sget-boolean v9, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v9, :cond_1

    invoke-static {v3, v8}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget-object v10, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v11, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    iget v12, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mUserId:I

    invoke-virtual {v10, v11, v12}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v10

    const-string v11, ", isFixedOrientation="

    const-string v13, ", isFoldMainDisplay="

    const-string v14, ", isTablet="

    if-eqz v10, :cond_5

    const-string v15, "isFixedOrientation"

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iget-object v15, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v5, "isFixedOrientationWallpaper: extra defines fixedOrientation. which="

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    const-string v6, ", user="

    invoke-static {v8, v5, v6, v12, v14}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v8, v4, v13, v9, v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {v8, v10, v15}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v10, :cond_4

    if-nez v4, :cond_2

    if-eqz v9, :cond_3

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    return v0

    :goto_2
    return v5

    :cond_4
    const/4 v5, 0x0

    const/16 v6, 0x10

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    move v6, v8

    :goto_3
    invoke-static {v3, v6}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v8

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v7, :cond_6

    invoke-static {v3, v6}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    move v7, v5

    const/4 v6, 0x1

    :goto_4
    invoke-static {v3, v6}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v2, v8}, Lcom/android/systemui/util/SettingsHelper;->getHomescreenWallpaperSource(Z)I

    move-result v2

    if-nez v2, :cond_7

    :goto_5
    move v2, v6

    goto :goto_6

    :cond_7
    move v2, v5

    goto :goto_6

    :cond_8
    invoke-virtual {v2, v8}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent(Z)I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    :goto_6
    and-int/lit8 v3, v3, 0x3c

    const/4 v8, 0x4

    if-eq v3, v8, :cond_9

    if-eqz v7, :cond_b

    :cond_9
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    if-nez v3, :cond_a

    if-eqz v7, :cond_b

    :cond_a
    if-nez v4, :cond_b

    if-nez v2, :cond_b

    if-nez v1, :cond_b

    move v3, v6

    goto :goto_7

    :cond_b
    move v3, v5

    :goto_7
    iget v8, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    const/4 v10, 0x2

    invoke-static {v8, v10}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v8

    if-eqz v8, :cond_c

    iget v8, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWallpaperType:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_c

    iget v8, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    iget-object v10, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    move-object v12, v10

    check-cast v12, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v12, v8}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->isPluginWallpaperRequired(I)Z

    move-result v8

    if-eqz v8, :cond_c

    iget v8, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    check-cast v10, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v10, v8}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->containsVideo(I)Z

    move-result v8

    if-eqz v8, :cond_c

    move v8, v6

    goto :goto_8

    :cond_c
    move v8, v5

    :goto_8
    iget-object v10, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "isFixedOrientationWallpaper:  which="

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWhich:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", feature="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    invoke-static {v12, v0, v14, v4, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v0, ", isFoldSubDisplay="

    const-string v13, ", isCustomWallpaper="

    invoke-static {v12, v9, v0, v7, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v0, ", isPreview="

    const-string v7, ", isCustompackContainsVideo="

    invoke-static {v12, v2, v0, v1, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_d

    if-eqz v8, :cond_e

    if-nez v9, :cond_e

    if-nez v4, :cond_e

    :cond_d
    move v5, v6

    :cond_e
    return v5
.end method

.method public final isMultipack()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWallpaperType:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final updateSupplier(I)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/wallpaper/engines/image/MdmImageSupplier;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/wallpaper/engines/image/MdmImageSupplier;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mMdmSupplier:Lcom/android/systemui/wallpaper/engines/image/MdmImageSupplier;

    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mUserId:I

    iget v3, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mDisplayId:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mWallpaperManagerSupplier:Lcom/android/systemui/wallpaper/engines/image/WallpaperManagerImageSupplier;

    new-instance v0, Lcom/android/systemui/wallpaper/engines/image/PluginImageSupplier;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/wallpaper/engines/image/PluginImageSupplier;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/PluginWallpaper;I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mPluginSupplier:Lcom/android/systemui/wallpaper/engines/image/PluginImageSupplier;

    new-instance p1, Lcom/android/systemui/wallpaper/engines/image/CoverImageSupplier;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/wallpaper/engines/image/CoverImageSupplier;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/CoverWallpaper;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->mCoverSupplier:Lcom/android/systemui/wallpaper/engines/image/CoverImageSupplier;

    return-void
.end method

.method public final useBitmap(Ljava/util/function/Consumer;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->getSupplier()Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;->getWallpaperImage()Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    sget v3, Landroid/graphics/RecordingCanvas;->MAX_BITMAP_SIZE:I

    if-le v2, v3, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    const-string v2, ", h="

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "loadWallpaper: Wallpaper is too large! w="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Wallpaper is too large! w="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadWallpaper: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->getBitmapSizeString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v3, "noBitmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v3, " crops="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mCropRects:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_5

    iget-object p0, v0, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-void
.end method
