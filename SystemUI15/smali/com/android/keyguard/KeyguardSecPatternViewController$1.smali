.class public final Lcom/android/keyguard/KeyguardSecPatternViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputViewController;->dismissTips(Z)V

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mIsNightModeOn:Z

    if-eq v1, p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "night mode changed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mIsNightModeOn:Z

    const-string v3, " -> "

    const-string v4, "KeyguardSecPatternViewController"

    invoke-static {v1, v2, v3, p1, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mIsNightModeOn:Z

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    iget-wide v1, p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    goto :goto_1

    :cond_1
    const-string p0, "Can\'t apply night mode! NOT supported OPEN THEME feature"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final onOrientationChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentOrientation:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout$2$1()V

    :cond_0
    return-void
.end method
