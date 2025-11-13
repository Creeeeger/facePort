.class public final Lcom/android/systemui/keyguardimage/WallpaperImageProviderCreator;
.super Lcom/android/systemui/keyguardimage/WallpaperImageCreator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    sget-object v6, Lcom/android/systemui/wallpaper/CoverWallpaperController;->sInstance:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    sget-object v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const-string v2, "WallpaperImageCreator"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/KeyguardWallpaper;)V

    return-void
.end method
