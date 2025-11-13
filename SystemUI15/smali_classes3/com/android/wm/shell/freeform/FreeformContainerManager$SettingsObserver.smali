.class public final Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mColorThemeAppIconUri:Landroid/net/Uri;

.field public final mCurrentSecAppIconThemePackageUri:Landroid/net/Uri;

.field public final mLeboSettingUri:Landroid/net/Uri;

.field public final mWallpaperThemeColorUri:Landroid/net/Uri;

.field public final mWallpaperThemeStateUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;)V
    .locals 7

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "colortheme_app_icon"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->mColorThemeAppIconUri:Landroid/net/Uri;

    const-string/jumbo v1, "wallpapertheme_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->mWallpaperThemeStateUri:Landroid/net/Uri;

    const-string/jumbo v2, "wallpapertheme_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->mWallpaperThemeColorUri:Landroid/net/Uri;

    const-string v3, "current_sec_appicon_theme_package"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->mCurrentSecAppIconThemePackageUri:Landroid/net/Uri;

    const-string v4, "lelink_cast_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->mLeboSettingUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {p1, v0, v5, p0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1, v1, v5, p0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1, v2, v5, p0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1, v3, v5, p0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4, v5, p0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->mColorThemeAppIconUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->mWallpaperThemeStateUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->mWallpaperThemeColorUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->mCurrentSecAppIconThemePackageUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->mLeboSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    invoke-static {p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->-$$Nest$mshouldHideInformation(Lcom/android/wm/shell/freeform/FreeformContainerManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 p1, 0x19

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    const-string p1, "colorPalette"

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->rebuildAll(Ljava/lang/String;)V

    return-void
.end method
