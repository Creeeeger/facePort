.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/16 p1, 0x8

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x2

    .line 18
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mOnModalityChangeListener:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$OnModalityChangeListener;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    check-cast p2, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->onModalitySwitched(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "customizeSwitch: OnClickListener:  modality = "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ", OnModalityChangeListener = "

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mOnModalityChangeListener:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$OnModalityChangeListener;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method
