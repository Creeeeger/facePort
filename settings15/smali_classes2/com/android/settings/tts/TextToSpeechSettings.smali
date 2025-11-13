.class public Lcom/android/settings/tts/TextToSpeechSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mActionButtons:Lcom/samsung/android/settings/widget/SecActionButtonsPreference;

.field public mAvailableStrLocals:Ljava/util/List;

.field public mCurrentDefaultLocale:Ljava/util/Locale;

.field public mCurrentEngine:Ljava/lang/String;

.field public mDefaultPitch:I

.field public mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

.field public mDefaultRate:I

.field public mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

.field public mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field public final mInitListener:Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda0;

.field public mLocalePreference:Landroidx/preference/SecListPreference;

.field public final mPitchObserver:Lcom/android/settings/tts/TextToSpeechSettings$1;

.field public mSampleText:Ljava/lang/String;

.field public mSelectedLocaleIndex:I

.field public final mSpeechRateObserver:Lcom/android/settings/tts/TextToSpeechSettings$1;

.field public mTts:Landroid/speech/tts/TextToSpeech;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$4;

    const v1, 0x7f170203

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/tts/TextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/tts/TextToSpeechSettings$1;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSpeechRateObserver:Lcom/android/settings/tts/TextToSpeechSettings$1;

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/tts/TextToSpeechSettings$1;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPitchObserver:Lcom/android/settings/tts/TextToSpeechSettings$1;

    return-void
.end method

.method public static getSeekBarProgressFromValue(ILjava/lang/String;)I
    .locals 1

    const-string v0, "tts_default_rate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0xa

    return p0

    :cond_0
    const-string v0, "tts_default_pitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 p0, p0, -0x19

    :cond_1
    return p0
.end method


# virtual methods
.method public final checkDefaultLocale()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get default language from engine "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeechSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText()V

    :cond_2
    return-void
.end method

.method public final evaluateDefaultLocale()Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "-"

    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_6

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return v4

    :cond_6
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return v1

    :catch_0
    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    :cond_7
    :goto_2
    return v1
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e

    return p0
.end method

.method public final getSampleText()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "country"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string v3, "variant"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x7bf

    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to get sample text, no activity found for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TextToSpeechSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final initSettings()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_rate"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    const-string v3, "tts_default_pitch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v2, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v2, 0x258

    invoke-static {v2, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    const/4 v2, 0x2

    iput v2, v0, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    iget v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    invoke-static {v4, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v4, 0x190

    invoke-static {v4, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    iput-boolean v1, v0, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    iput v2, v0, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    const-string v1, "tts_engine_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/widget/SecGearPreference;

    iput-object p0, v2, Lcom/samsung/android/settings/widget/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    invoke-virtual {v2}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f060729

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to check TTS data, no activity found for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TextToSpeechSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TextToSpeechSettings used outside a Settings"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/16 v0, 0x7bf

    const-string v1, "TextToSpeechSettings"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0301b7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0301b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    aget-object v5, v4, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object p1, v0, v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const p1, 0x7f142fa7

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    const-string p2, "sampleText"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto/16 :goto_7

    :cond_3
    const-string p0, "Did not have a sample string for the requested language. Using default"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_4
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object p1

    const-string v0, "availableVoices"

    if-nez p1, :cond_5

    const-string p1, "Voice data check complete, but no engine bound"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    if-nez p3, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Engine failed voice data integrity check (null return)"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_default_synth"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez p1, :cond_7

    const-string p1, "Voice data check complete, but no available voices found"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText()V

    :cond_8
    :goto_2
    if-eqz p2, :cond_10

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "unavailableVoices"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_6

    :cond_9
    iget-object p2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object p3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/speech/tts/TtsEngines;->isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object p3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    goto :goto_3

    :cond_a
    const/4 p2, 0x0

    :goto_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v2

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda5;-><init>(Ljava/text/Collator;)V

    invoke-static {p3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v3

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v3

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v4, 0x7f142fb8

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, p1, v2

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v1, v3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/Locale;

    invoke-virtual {v4, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iput v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    :cond_d
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    aput-object v4, v0, v1

    add-int/lit8 v4, v1, 0x1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    move v1, v4

    goto :goto_5

    :cond_e
    iget-object p2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    iput-object p1, p2, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->setLocalePreference(I)V

    goto :goto_7

    :cond_f
    :goto_6
    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_10
    :goto_7
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f170203

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    const-string v0, "tts_default_lang"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "tts_default_pitch"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    const-string v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    const-string v0, "action_buttons"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f142fb9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    iput-object v1, v2, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    iget-object v3, v2, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    if-eq v1, v3, :cond_1

    iput-object v1, v2, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    iget-object v1, v0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    iget-boolean v2, v1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iput-boolean v3, v1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f142fbc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    iput-object v1, v2, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_3
    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    iget-object v4, v2, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    if-eq v1, v4, :cond_4

    iput-object v1, v2, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_4
    iget-object v1, v0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    iget-boolean v2, v1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    const/4 v4, 0x1

    if-eq v4, v2, :cond_5

    iput-boolean v4, v1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_5
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mActionButtons:Lcom/samsung/android/settings/widget/SecActionButtonsPreference;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mActionButtons:Lcom/samsung/android/settings/widget/SecActionButtonsPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mUserManager:Landroid/os/UserManager;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    new-array v0, v3, [Ljava/lang/CharSequence;

    iput-object v0, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_2

    :cond_6
    const-string v0, "locale_entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "locale_entry_values"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "locale_value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    iput-object v1, v2, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v4

    goto :goto_1

    :cond_8
    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p1

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    const-string v2, "store"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "factory"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultCreationExtras"

    invoke-static {v1, v2, p1, v0, v1}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object p1

    const-class v0, Lcom/android/settings/tts/TextToSpeechViewModel;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/settings/tts/TextToSpeechViewModel;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda0;

    iget-object v1, p1, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_9

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p1, Lcom/android/settings/tts/TextToSpeechViewModel;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v2, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p1, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    move v3, v4

    :cond_9
    iget-object p1, p1, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/speech/tts/TextToSpeech;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->successSetup()V

    :cond_a
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TextToSpeechSettings$3;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->initSettings()V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onGearClick(Lcom/samsung/android/settings/widget/SecGearPreference;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tts_engine_preference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p0, "TextToSpeechSettings"

    const-string v0, "settingsIntent is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p0

    const/16 v0, 0x5e

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSpeechRateObserver:Lcom/android/settings/tts/TextToSpeechSettings$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPitchObserver:Lcom/android/settings/tts/TextToSpeechSettings$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tts_default_rate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechRate(I)V

    goto/16 :goto_6

    :cond_0
    const-string v0, "tts_default_pitch"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechPitchValue(I)V

    goto :goto_6

    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    if-ne p1, v0, :cond_8

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1, p2}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const-string p2, ""

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    iget-object v2, v2, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v0, v3, :cond_5

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v4

    :goto_3
    if-ne v0, v4, :cond_6

    const-string p1, "TextToSpeechSettings"

    const-string p2, "updateLanguageTo called with unknown locale argument"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    iget-object p2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    iget-object v2, p2, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    iget-object p2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :goto_4
    invoke-virtual {p2, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    :cond_8
    :goto_6
    return v1
.end method

.method public final onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x64

    const-string v3, "tts_default_pitch"

    if-nez v0, :cond_6

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v4

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v5

    const-string v6, "store"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "factory"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "defaultCreationExtras"

    invoke-static {v5, v6, v0, v4, v5}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object v0

    const-class v4, Lcom/android/settings/tts/TextToSpeechViewModel;

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/settings/tts/TextToSpeechViewModel;

    :try_start_0
    iget-object v4, v0, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Error shutting down TTS engine"

    const-string v6, "TextToSpeechSettings"

    invoke-static {v5, v4, v6}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda0;

    iget-object v5, v0, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v5, :cond_2

    new-instance v5, Landroid/speech/tts/TextToSpeech;

    iget-object v6, v0, Lcom/android/settings/tts/TextToSpeechViewModel;->mApplication:Landroid/app/Application;

    invoke-direct {v5, v6, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v5, v0, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    iget-object v0, v0, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/speech/tts/TextToSpeech;

    iput-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->successSetup()V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v4, Lcom/android/settings/tts/TextToSpeechSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/tts/TextToSpeechSettings$3;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v4}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->initSettings()V

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    invoke-virtual {v4, v0}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    :goto_3
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :cond_7
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v1

    :goto_4
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    iget-object v5, v5, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v6, v5

    if-ge v4, v6, :cond_9

    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, -0x1

    :goto_5
    iput v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    invoke-virtual {p0, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->setLocalePreference(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "tts_default_rate"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v2, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    invoke-static {v2, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSpeechRateObserver:Lcom/android/settings/tts/TextToSpeechSettings$1;

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_b
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPitchObserver:Lcom/android/settings/tts/TextToSpeechSettings$1;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    iget-object v0, v0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    const-string v1, "locale_entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    iget-object v0, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    const-string v1, "locale_entry_values"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    iget-object p0, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    const-string v0, "locale_value"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setLocalePreference(I)V
    .locals 1

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    const p1, 0x7f142fb7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroidx/preference/SecListPreference;

    iget-object v0, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final successSetup()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateSpeechPitchValue(I)V
    .locals 3

    const-string v0, "tts_default_pitch"

    add-int/lit8 p1, p1, 0x19

    iput p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v1

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    iget v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TextToSpeechSettings"

    const-string v0, "could not persist default TTS pitch setting"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateSpeechRate(I)V
    .locals 3

    const-string v0, "tts_default_rate"

    add-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    const/16 p1, 0x5e

    const/16 v1, 0x1260

    invoke-static {p1, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :try_start_0
    iget p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v1

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    iget v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TextToSpeechSettings"

    const-string v0, "could not persist default TTS rate setting"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateWidgetState(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
