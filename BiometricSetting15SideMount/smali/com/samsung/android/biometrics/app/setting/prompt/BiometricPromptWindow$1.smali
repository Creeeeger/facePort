.class public final Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow$1;
.super Landroid/view/View;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 5
    .line 6
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->updateScrollViewHeight()V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$3;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$3;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->updateScrollViewHeight()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$3;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$3;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
