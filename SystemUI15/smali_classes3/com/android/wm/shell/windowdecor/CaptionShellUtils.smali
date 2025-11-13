.class public final Lcom/android/wm/shell/windowdecor/CaptionShellUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonTintColor(Landroid/content/Context;ZZ)Landroid/content/res/ColorStateList;
    .locals 2

    sget-boolean v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p2

    if-eq p1, p2, :cond_1

    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    and-int/lit8 p1, p1, 0x30

    iget v0, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, -0x31

    or-int/2addr p1, v0

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x106038d

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    const p1, 0x7f060645

    goto :goto_1

    :cond_3
    const p1, 0x7f06063d

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    const p1, 0x7f060646

    goto :goto_1

    :cond_5
    const p1, 0x7f06063e

    :goto_1
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static hasBarFocus(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiWindowModeStates(I)I

    move-result p0

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static isButtonVisible(IIZ)Z
    .locals 3

    const v0, 0x7f0a06b4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_1

    if-eq p1, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    const p1, 0x7f0a0879

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    const p1, 0x7f0a09f2

    if-ne p0, p1, :cond_4

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_COMPAT_CAPTION_SHELL:Z

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public static isTopDownSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    if-ne p0, v2, :cond_2

    if-eqz v0, :cond_2

    return v1

    :cond_2
    and-int/lit16 p0, p1, 0x500

    if-eqz p0, :cond_4

    if-eqz v0, :cond_3

    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method
