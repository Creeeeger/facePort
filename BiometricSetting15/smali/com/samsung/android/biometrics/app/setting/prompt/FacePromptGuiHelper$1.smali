.class public final Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;

.field public final synthetic val$mainLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$1;->val$mainLayout:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "Notch support, setPunchHoleUI"

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->playPunchHoleAnimation()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "Notch not support"

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->pausePunchHoleAnimation()V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$1;->val$mainLayout:Landroid/widget/RelativeLayout;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
