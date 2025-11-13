.class public final synthetic Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/tts/TextToSpeechSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iput-boolean p2, p0, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-boolean p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda4;->f$1:Z

    iget-object v1, v0, Lcom/android/settings/tts/TextToSpeechSettings;->mActionButtons:Lcom/samsung/android/settings/widget/SecActionButtonsPreference;

    iget-object v2, v1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    iget-boolean v3, v2, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    if-eq p0, v3, :cond_0

    iput-boolean p0, v2, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    iget-object v1, v0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, v0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method
