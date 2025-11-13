.class public abstract Lcom/android/internal/app/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# static fields
.field private static final blacklist DIALOG_POP_OVER_DARK_DIM_AMOUNT:F = 0.65f

.field private static final blacklist DIALOG_POP_OVER_DIM_AMOUNT:F = 0.18f

.field private static final blacklist DIALOG_POP_OVER_ELEVATION:F = 8.0f

.field private static final blacklist DIALOG_REDUCE_TRANSPARENCY_DIM_AMOUNT:F = 0.35f


# instance fields
.field protected greylist mAlert:Lcom/android/internal/app/AlertController;

.field protected greylist mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private blacklist mIsDeviceDefault:Z

.field private blacklist mIsDeviceDefaultDark:Z


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    return-void
.end method

.method public static blacklist dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 138
    const-class v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 142
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 144
    .local v1, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 146
    return v2
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 121
    return-void
.end method

.method public whitelist dismiss()V
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 129
    :cond_0
    return-void
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 133
    invoke-static {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 78
    .local v0, "window":Landroid/view/Window;
    invoke-static {p0, p0, v0}, Lcom/android/internal/app/AlertController;->create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    .line 79
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 81
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 82
    .local v1, "themeValue":Landroid/util/TypedValue;
    move-object v2, p0

    .line 83
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11200b9

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 85
    iget v3, v1, Landroid/util/TypedValue;->data:I

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 86
    iput-boolean v5, p0, Lcom/android/internal/app/AlertActivity;->mIsDeviceDefault:Z

    .line 87
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 88
    .local v3, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11200ba

    invoke-virtual {v6, v7, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 89
    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/app/AlertActivity;->mIsDeviceDefaultDark:Z

    .line 92
    .end local v3    # "colorValue":Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 94
    .local v3, "l":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v6, p0, Lcom/android/internal/app/AlertActivity;->mIsDeviceDefault:Z

    if-eqz v6, :cond_6

    .line 95
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110221

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 96
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    iget-boolean v4, p0, Lcom/android/internal/app/AlertActivity;->mIsDeviceDefaultDark:Z

    if-eqz v4, :cond_2

    const v4, 0x3f266666    # 0.65f

    goto :goto_1

    :cond_2
    const v4, 0x3e3851ec    # 0.18f

    :goto_1
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 98
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 100
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_3

    .line 102
    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/app/AlertActivity;->mIsDeviceDefaultDark:Z

    if-nez v6, :cond_6

    .line 103
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_reduce_transparency"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_5

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    move v4, v5

    .line 105
    .local v4, "isReduceTransparency":Z
    if-eqz v4, :cond_6

    .line 106
    const v5, 0x3eb33333    # 0.35f

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 107
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 113
    .end local v4    # "isReduceTransparency":Z
    :cond_6
    :goto_3
    iget-boolean v4, p0, Lcom/android/internal/app/AlertActivity;->mIsDeviceDefault:Z

    if-eqz v4, :cond_7

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 117
    :cond_7
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 163
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 164
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 169
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected greylist setupAlert()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->installContent(Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 159
    return-void
.end method
