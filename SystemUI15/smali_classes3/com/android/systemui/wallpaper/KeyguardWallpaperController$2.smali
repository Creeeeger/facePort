.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnableMDMWallpaper()V
    .locals 2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const-string v0, "onEnableMDMWallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x25d

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->broadcastEvent(ILandroid/os/Bundle;)Ljava/util/ArrayList;

    return-void
.end method

.method public final onMDMWallpaperChanged()V
    .locals 2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const-string v0, "onMDMWallpaperChanged"

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x25e

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->broadcastEvent(ILandroid/os/Bundle;)Ljava/util/ArrayList;

    return-void
.end method
