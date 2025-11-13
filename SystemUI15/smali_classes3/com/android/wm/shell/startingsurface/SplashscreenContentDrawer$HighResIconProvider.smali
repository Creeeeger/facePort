.class public final Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mLoadInDetail:Z

.field public final mSharedContext:Landroid/content/Context;

.field public final mSharedIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field public mStandaloneContext:Landroid/content/Context;

.field public mStandaloneIconProvider:Lcom/android/launcher3/icons/IconProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/icons/IconProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mSharedContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mSharedIconProvider:Lcom/android/launcher3/icons/IconProvider;

    return-void
.end method


# virtual methods
.method public final getIcon(Landroid/content/pm/ActivityInfo;III)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    if-ge p2, p3, :cond_2

    const/16 v0, 0x140

    if-ge p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->loadFromStandalone(Landroid/content/pm/ActivityInfo;III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mSharedContext:Landroid/content/Context;

    invoke-static {p4, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->-$$Nest$smisCarLifeDisplay(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->loadFromStandalone(Landroid/content/pm/ActivityInfo;III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p4, -0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->loadFromStandalone(Landroid/content/pm/ActivityInfo;III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mSharedIconProvider:Lcom/android/launcher3/icons/IconProvider;

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mSharedContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final loadFromStandalone(Landroid/content/pm/ActivityInfo;III)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mStandaloneContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mSharedContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mSharedContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mStandaloneContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher3/icons/IconProvider;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mStandaloneContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mStandaloneIconProvider:Lcom/android/launcher3/icons/IconProvider;

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p4, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mSharedContext:Landroid/content/Context;

    invoke-static {p4, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->-$$Nest$smisCarLifeDisplay(ILandroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object p4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mStandaloneContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput p3, p4, Landroid/content/res/Configuration;->densityDpi:I

    iput p3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, p4, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_3
    iget-object p4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mStandaloneIconProvider:Lcom/android/launcher3/icons/IconProvider;

    invoke-virtual {p4, p1, p3}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$HighResIconProvider;->mLoadInDetail:Z

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iput p2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iput p2, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, p0, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_4
    return-object p1
.end method
