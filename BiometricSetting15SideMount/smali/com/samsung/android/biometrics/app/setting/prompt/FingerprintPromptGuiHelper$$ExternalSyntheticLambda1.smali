.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x9

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {p0, v0, p2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getInDisplayFingerPositionStringId(Landroid/graphics/Rect;FF)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-lez p0, :cond_1

    .line 35
    .line 36
    iget-object p2, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object p2, p1, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p0, v2, p2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return v2
.end method
