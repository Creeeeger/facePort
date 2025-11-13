.class public Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final CUSTOM_PACK:Ljava/lang/String; = "com.samsung.custompack"

.field private static final DLS_PACK:Ljava/lang/String; = "SamsungUX.DW.FreshP"

.field private static final KEY_PLUGIN_LOCK_WALLPAPER_TYPE:Ljava/lang/String; = "plugin_lock_wallpaper_type"

.field private static final KEY_PLUGIN_LOCK_WALLPAPER_TYPE_SUB:Ljava/lang/String; = "plugin_lock_wallpaper_type_sub"

.field public static final KEY_WALLPAPER_SOURCE:Ljava/lang/String; = "lockscreen_wallpaper_transparent"

.field public static final KEY_WALLPAPER_SOURCE_SUB:Ljava/lang/String; = "sub_display_lockscreen_wallpaper_transparency"

.field private static final STUB_PACK:Ljava/lang/String; = "SamsungUX.DW.Stub"

.field private static final TAG:Ljava/lang/String; = "PluginLockWallpaper"

.field private static final VALUE_TYPE_INFINITY:I = 0x0

.field private static final VALUE_TYPE_LOCK:I = 0x1

.field private static sDualDisplayPlugin:Z

.field private static sScreenType:I

.field private static sScreenTypeChanged:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHasData:Z

.field private mHintUpdatedSkip:Z

.field private mNoSensorConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecoverRequestedScreen:I

.field private mUpdateStyle:I

.field private final mWallpaperDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperRecoverType:I

.field private mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

.field private mWholeRecoverRequired:Z


# direct methods
.method public static synthetic $r8$lambda$tPGWjDz5q0Hdh3XTB6hxbY8b_ME(Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->lambda$update$0(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mUpdateStyle:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-direct {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;-><init>(I)V

    invoke-virtual {p3, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHandler:Landroid/os/Handler;

    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;-><init>(I)V

    invoke-virtual {p3, p2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private backupWallpaperSource()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperSource(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperSource(I)V

    return-void
.end method

.method private backupWallpaperSource(I)V
    .locals 5

    if-nez p1, :cond_0

    const-string v0, "lockscreen_wallpaper_transparent"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "backupWallpaperSource() backupSource: "

    const-string v3, ", screenType:"

    const-string v4, "PluginLockWallpaper"

    invoke-static {v1, p1, v2, v3, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperSourceBackupValue(II)V

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of p2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2}, Landroid/graphics/Canvas;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p0, v1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getBitmap() unsupported "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PluginLockWallpaper"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method private getMultiPackPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "MULTIPLE=(.*):tilt"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "no_matched_pkg_name"

    return-object p0
.end method

.method private getScreenType()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isSingleDisplayRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private isSingleDisplayRequired()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private isWholeRecoverRequired()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$update$0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mNoSensorConsumer:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private recoverWallpaperSource()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource(I)V

    return-void
.end method

.method private recoverWallpaperSource(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getWallpaperSourceBackupValue(I)I

    move-result v0

    const-string v1, "recoverWallpaperSource() backupWallpaperSource: "

    const-string v2, ", screenType:"

    const-string v3, "PluginLockWallpaper"

    invoke-static {v0, p1, v1, v2, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "lockscreen_wallpaper_transparent"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "sub_display_lockscreen_wallpaper_transparency"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static setDualDisplayPlugin(Z)V
    .locals 2

    const-string/jumbo v0, "setDualDisplayPlugin() : "

    const-string v1, "PluginLockWallpaper"

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-boolean p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sDualDisplayPlugin:Z

    return-void
.end method

.method private setMultiPackWallpaperSource()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setMultiPackWallpaperSource(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setMultiPackWallpaperSource(I)V

    return-void
.end method

.method private setMultiPackWallpaperSource(I)V
    .locals 6

    if-nez p1, :cond_0

    const-string v0, "lockscreen_wallpaper_transparent"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "setMultiPackWallpaperSource() currentType: "

    const-string v4, ", screenType:"

    const-string v5, "PluginLockWallpaper"

    invoke-static {v2, p1, v3, v4, v5}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperTypeBackupValue(II)V

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperSourceBackupValue(II)V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isPreloadedMultiPack()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isSpecialEditionMultiPack()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isStubPack()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "setMultiPackWallpaperSource, custom"

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    const-string/jumbo p1, "setMultiPackWallpaperSource, theme"

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-eq v2, p1, :cond_4

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string/jumbo p1, "setMultiPackWallpaperSource, preload"

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eq v2, p1, :cond_4

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private setPluginWallpaperType(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sDualDisplayPlugin:Z

    const-string v1, "plugin_lock_wallpaper_type_sub"

    const-string v2, "plugin_lock_wallpaper_type"

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isWholeRecoverRequired()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isSingleDisplayRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static setScreenTypeChanged(I)V
    .locals 2

    const-string/jumbo v0, "setScreenTypeChanged() type: "

    const-string v1, "PluginLockWallpaper"

    invoke-static {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    sput-boolean v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockWallpaper"

    const-string v1, "apply()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->getUpdateStyle()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mUpdateStyle:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->getRecoverType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fillData(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->hasData()Z

    move-result v2

    const-string v3, "fillData() screen:"

    const-string v4, ", wallpaperType:"

    const-string v5, ", sourceType:"

    invoke-static {p2, p3, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",source:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", hasData:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PluginLockWallpaper"

    invoke-static {p2, v2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v2, :cond_4

    invoke-virtual {v1, p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setType(I)V

    const/4 p2, 0x0

    if-eqz p4, :cond_3

    if-eq p4, v0, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setPath(Ljava/lang/String;)V

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getResourceId()I

    move-result p3

    if-ne p3, p2, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_4

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setBitmap(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "couldn\'t load bitmap:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v3}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p5}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setPath(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public getCallback()Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    return-object p0
.end method

.method public getUpdateStyle()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mUpdateStyle:I

    return p0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperIntelligentCrop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getIntelligentCrop()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperIntelligentCrop(I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getIntelligentCrop()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperPath()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperPath(I)Ljava/lang/String;
    .locals 3

    const-string v0, "getWallpaperPath() path: "

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginLockWallpaper"

    if-nez p0, :cond_0

    const-string p0, "getWallpaperPath() path: null"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    div-int/lit8 v1, v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method

.method public getWallpaperType()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperType(I)I

    move-result p0

    return p0
.end method

.method public getWallpaperType(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method public getWallpaperUri()Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperUri(I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperUri(I)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isCloneDisplayRequired()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sDualDisplayPlugin:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCustomPack()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack(I)Z

    move-result p0

    return p0
.end method

.method public isCustomPack(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "com.samsung.custompack"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "isCustomPack, ret:"

    const-string v0, "PluginLockWallpaper"

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public isDynamicWallpaper()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getType()I

    move-result p0

    const/4 v1, -0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "isDynamicWallpaper() screen:"

    const-string v2, ", ret:"

    const-string v3, "PluginLockWallpaper"

    invoke-static {v1, v0, v2, p0, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method public isDynamicWallpaper(I)Z
    .locals 4

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getType()I

    move-result p0

    const/4 v2, -0x2

    if-eq p0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-string p0, "isDynamicWallpaper() required:"

    const-string v2, ", final: "

    const-string v3, ", ret:"

    invoke-static {p1, v0, p0, v2, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "PluginLockWallpaper"

    invoke-static {p0, v1, p1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return v1
.end method

.method public isMultiPack()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiPack(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreloadedMultiPack()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getDefaultMultipackStyle(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v1, v3}, Landroid/app/WallpaperManager;->getDefaultMultipackStyle(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getMultiPackPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getMultiPackPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    const-string v0, "isPreloadedMultiPack, main:"

    const-string v1, ", sub:"

    const-string v4, ", isPreload"

    invoke-static {v0, v2, v1, p0, v4}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "PluginLockWallpaper"

    invoke-static {p0, v3, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2
    return v3
.end method

.method public isRecoverRequiredWallpaper()Z
    .locals 4

    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    if-nez v0, :cond_0

    const-string v0, "lockscreen_wallpaper_transparent"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "isRecoverRequiredWallpaper() type: "

    const-string v2, ", screenType:"

    invoke-static {p0, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    const-string v3, "PluginLockWallpaper"

    invoke-static {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isServiceWallpaper()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper(I)Z

    move-result p0

    return p0
.end method

.method public isServiceWallpaper(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperUri(I)Landroid/net/Uri;

    move-result-object p0

    if-eqz v0, :cond_0

    const-string p1, "SamsungUX.DW.FreshP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSpecialEditionMultiPack()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigDefaultWallpaperStyle"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    const-string v0, "isSpecialEditionMultiPack, ret:"

    const-string v1, "PluginLockWallpaper"

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public isStickyRecoverType()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStubPack()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "SamsungUX.DW.Stub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "isStubPack, ret:"

    const-string v1, "PluginLockWallpaper"

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public isVideoWallpaper()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoWallpaper(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recover()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recover() screenType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    const-string v2, "PluginLockWallpaper"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isWholeRecoverRequired()Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setType(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isWholeRecoverRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue(IIII)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue(III)V

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 3

    const-string v0, "reset() reconnectReq:"

    const-string v1, ", screenType:"

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    const-string v1, "PluginLockWallpaper"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetData()V

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getType()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetType()V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue(III)V

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {p0, p1, v2, v1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue(IIII)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setPluginWallpaperType(I)V

    sput-boolean p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    return-void
.end method

.method public resetAll()V
    .locals 2

    const-string v0, "PluginLockWallpaper"

    const-string v1, "resetAll()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource()V

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue(III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setPluginWallpaperType(I)V

    sput-boolean v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    return-void
.end method

.method public resetWallpaperData(I)V
    .locals 2

    const-string/jumbo v0, "resetWallpaperData: screen = "

    const-string v1, ", isCloneDisplayRequired = "

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    :cond_1
    return-void
.end method

.method public setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setInstanceState, screen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", instanceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    sget-boolean p2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public setNoSensorConsumer(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setNoSensorConsumer() consumer:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mNoSensorConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public setRecoverRequestedScreen(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "setRecoverRequestedScreen() screen: "

    const-string v1, "PluginLockWallpaper"

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    :goto_0
    return-void
.end method

.method public setWallpaperHints(Landroid/app/SemWallpaperColors;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setHints(Landroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    return-void
.end method

.method public setWholeRecoverRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    return-void
.end method

.method public update(Landroid/content/Context;IILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->update(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public update(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "update() wallpaperType:"

    const-string v1, ", sourceType:"

    const-string v2, ", source:"

    invoke-static {p2, p3, v0, v1, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iCrops = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecoverRequestedScreen:I

    iget-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->hasData()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    invoke-virtual {v2, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setType(I)V

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setPluginWallpaperType(I)V

    invoke-virtual {v2, p5}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setIntelligentCrop(Ljava/lang/String;)V

    const/4 p5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_7

    if-eq p3, v3, :cond_5

    if-eq p3, p5, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackup(II)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackup(III)V

    :cond_1
    :goto_0
    move p1, v4

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p1, :cond_4

    invoke-virtual {p1, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v4

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v3

    :goto_2
    invoke-virtual {v2, p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setUri(Landroid/net/Uri;)V

    goto :goto_7

    :cond_5
    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {v2, p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setPath(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getResourceId()I

    move-result p4

    if-ne p4, p3, :cond_6

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p4, :cond_1

    goto :goto_3

    :catch_0
    move-exception p1

    move p3, v4

    goto :goto_4

    :cond_6
    :goto_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1, p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setBitmap(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move p1, v3

    goto :goto_7

    :catch_1
    move-exception p1

    move p3, v3

    :goto_4
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "couldn\'t load bitmap:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p4, v1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move p1, p3

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    move p1, v4

    goto :goto_6

    :cond_9
    :goto_5
    move p1, v3

    :goto_6
    invoke-virtual {v2, p4}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setPath(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperDynamicBackupValue(I)V

    goto :goto_8

    :cond_a
    sget p3, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperDynamicBackupValue(II)V

    :goto_8
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getPath()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_10

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperSource()V

    goto :goto_9

    :cond_c
    sget p2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperSource(I)V

    goto :goto_9

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isMultiPack()Z

    move-result p2

    if-eqz p2, :cond_10

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setMultiPackWallpaperSource()V

    goto :goto_9

    :cond_f
    sget p2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setMultiPackWallpaperSource(I)V

    :cond_10
    :goto_9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "update: sScreenTypeChanged = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mHasData = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    const-string p4, ", wallpaperChanged = "

    const-string v0, ", mWallpaperUpdateCallback = "

    invoke-static {p2, p3, p4, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz p2, :cond_12

    sget-boolean p3, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    if-eqz p3, :cond_11

    iget-boolean p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    if-eqz p3, :cond_11

    if-eqz p1, :cond_12

    :cond_11
    move p1, v3

    goto :goto_a

    :cond_12
    move p1, v4

    :goto_a
    if-eqz p1, :cond_13

    iget-boolean p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    xor-int/2addr p3, v3

    invoke-interface {p2, p3}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperUpdate(Z)V

    :cond_13
    iget-object p2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    if-eqz p2, :cond_14

    const-string p3, "com.samsung.feature.device_category_tablet"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    move p2, v3

    goto :goto_b

    :cond_14
    move p2, v4

    :goto_b
    sget-boolean p3, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz p3, :cond_15

    sget p3, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    if-nez p3, :cond_15

    move p3, v3

    goto :goto_c

    :cond_15
    move p3, v4

    :goto_c
    sget p4, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    if-ne p4, v3, :cond_16

    const/16 p4, 0x10

    goto :goto_d

    :cond_16
    const/4 p4, 0x4

    :goto_d
    or-int/2addr p4, p5

    sget-object p5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {p5, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {p5, p4}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->containsVideo(I)Z

    move-result p4

    if-nez p2, :cond_17

    if-nez p3, :cond_17

    if-eqz p4, :cond_17

    move p2, v3

    goto :goto_e

    :cond_17
    move p2, v4

    :goto_e
    iget-object p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mNoSensorConsumer:Ljava/util/function/Consumer;

    if-eqz p3, :cond_19

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    if-ne p3, p4, :cond_18

    iget-object p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mNoSensorConsumer:Ljava/util/function/Consumer;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_f

    :cond_18
    iget-object p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;Z)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    :goto_f
    sget-boolean p2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    if-eqz p2, :cond_1a

    sput-boolean v4, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    :cond_1a
    if-eqz p1, :cond_1b

    iput-boolean v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    goto :goto_10

    :cond_1b
    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    :goto_10
    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockWallpaper"

    const-string/jumbo v1, "update()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->getUpdateStyle()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mUpdateStyle:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/WallpaperData;->getRecoverType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    :cond_1
    return-void
.end method

.method public updateHint()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    const-string v1, "PluginLockWallpaper"

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v0

    const-string/jumbo v2, "updateHint() onWallpaperHintUpdate will be called: "

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->getHints()Landroid/app/SemWallpaperColors;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateHint() mHintUpdatedSkip = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHasData = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHintUpdatedSkip:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHasData:Z

    return-void
.end method
