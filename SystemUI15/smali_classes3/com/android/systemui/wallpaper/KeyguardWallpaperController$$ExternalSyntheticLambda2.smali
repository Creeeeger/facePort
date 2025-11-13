.class public final synthetic Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFolderStateChanged: isOpened = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/16 p1, 0x12

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    if-eq v1, p1, :cond_2

    const-string v1, "onFolderStateChanged: which = "

    const-string v2, ", previous which = "

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    const-string v3, "KeyguardWallpaperController"

    invoke-static {v2, v3, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sput p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    :cond_2
    if-eqz v0, :cond_3

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->disableRotateIfNeeded()V

    :cond_3
    return-void
.end method
