.class public final Lcom/android/settings/language/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;
.super Lcom/android/settingslib/applications/DefaultAppInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mInfo:Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/language/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;

    iget-object p0, p0, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final loadLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/language/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;

    iget-object p0, p0, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
