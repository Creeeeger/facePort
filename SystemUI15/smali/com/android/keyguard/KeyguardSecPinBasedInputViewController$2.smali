.class public final Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 8

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsNightModeOn:Z

    const-string v4, " -> "

    const-string v5, "KeyguardSecPinBasedInputViewController"

    if-eq v3, v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "night mode changed : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsNightModeOn:Z

    invoke-static {v3, v6, v4, v0, v5}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsNightModeOn:Z

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    iget-wide v6, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object v0

    invoke-virtual {p0, v6, v7, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    goto :goto_1

    :cond_1
    const-string v0, "Can\'t apply night mode! NOT supported OPEN THEME feature"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onConfigurationChanged "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isFolderClosed : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->skipUpdateWhenCloseFolder()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mUpdateSkipped:Z

    const-string p0, "Skip folder closed case"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout$1()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView()V

    :cond_4
    return-void
.end method
