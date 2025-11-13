.class public final Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateSettings(Z)V
    .locals 8

    const-string v0, "android"

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemeBackgroundColor:I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "ShellStartingWindow"

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_0
    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v4, v4, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_5

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v4, v4, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateSettings: NameNotFoundException, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p1

    :goto_0
    if-eqz v4, :cond_3

    const-string/jumbo v6, "tw_screen_background_color_light"

    const-string v7, "color"

    invoke-virtual {v4, v6, v7, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "tw_screen_background_light"

    const-string v7, "drawable"

    invoke-virtual {v4, v6, v7, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_3
    :goto_1
    const/4 v0, 0x1

    if-nez v3, :cond_4

    if-nez p1, :cond_4

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v6, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v4, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    new-instance v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    invoke-direct {v3, p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iget-object p1, v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->mColorChecker:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;

    invoke-interface {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;->getDominantColor()I

    move-result v3

    :cond_5
    :goto_2
    sget p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemeBackgroundColor:I

    if-eq v3, p1, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mColorCache:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

    iget-object p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->mColorMap:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_6
    const-string p1, "current_sec_appicon_theme_package"

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemeIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemeIconPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemeIconPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mColorCache:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->mColorMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iput-object p1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemeIconPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemePackageName:Ljava/lang/String;

    sput v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemeBackgroundColor:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateSettings: theme="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", iconTheme="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemeIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", color="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemeBackgroundColor:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
