.class public final Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public fontColorFromWallPaper:I

.field public fontColorType:I

.field public intensity:F

.field public final keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public listener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final wallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/KeyguardWallpaper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->wallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    return-void
.end method


# virtual methods
.method public final onFinishedWakingUp()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->updateIconsAndTextColors()V

    return-void
.end method

.method public final updateIconsAndTextColors()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->fontColorType:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(JZ)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->fontColorType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const v0, -0x12000001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, -0x4d000000

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->fontColorFromWallPaper:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->fontColorType:I

    if-ne v0, v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->intensity:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->listener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->$r8$lambda$VT0xJSg7HWdegLHOKUTjxWLkC0k(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    :cond_3
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    const-wide/16 v0, 0x10

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->updateIconsAndTextColors()V

    return-void
.end method
