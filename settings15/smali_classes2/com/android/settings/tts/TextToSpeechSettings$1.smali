.class public final Lcom/android/settings/tts/TextToSpeechSettings$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    const/16 p1, 0x64

    iget v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    sget-object v1, Lcom/android/settings/tts/TextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_pitch"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    iget p0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    invoke-static {p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(ILjava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    sget-object v1, Lcom/android/settings/tts/TextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_rate"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    iget p0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(ILjava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
