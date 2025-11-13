.class public final synthetic Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field public final synthetic f$1:Landroid/app/SemWallpaperColors;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;->f$1:Landroid/app/SemWallpaperColors;

    iput p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;->f$1:Landroid/app/SemWallpaperColors;

    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;->f$2:I

    iget-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v2, v2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->setSemWallpaperColors(Landroid/app/SemWallpaperColors;I)J

    move-result-wide v2

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCoverScreen(I)Z

    move-result p0

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ZJLandroid/app/SemWallpaperColors;)V

    return-void
.end method
