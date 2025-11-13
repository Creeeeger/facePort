.class public Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "VoiceInputSettingsFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;


# instance fields
.field private mLangPackCount:I

.field private mLangPackResultObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mViewInflatedCount:I


# direct methods
.method public static synthetic $r8$lambda$Wt9itAbyqnVb2iQJeqB0RXGObyE(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->lambda$initLangPackUpdateObservable$0(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmListenerArrayList(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mListenerArrayList:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mViewInflatedCount:I

    .line 27
    iput v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mLangPackCount:I

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mListenerArrayList:Ljava/util/List;

    return-void
.end method

.method private addOfflineLangPackPreference()V
    .locals 8

    const-string v0, "offline_language_pack"

    .line 43
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->voice_input_locale_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$array;->voice_input_locale_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 47
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-static {v4, v5}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->isOfflineSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-static {v4, v5}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->updateCacheForCurrentLocale(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    new-instance v4, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    aget-object v6, v1, v3

    aget-object v7, v2, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->addViewInflateListener(Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;)V

    .line 52
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 53
    iget v5, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mLangPackCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mLangPackCount:I

    .line 54
    iget-object v5, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mListenerArrayList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initLangPackUpdateObservable()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils;->isLangPackRequestNeeded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mLangPackResultObservable:Lio/reactivex/Observable;

    .line 85
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 86
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;-><init>(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)V

    .line 87
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private synthetic lambda$initLangPackUpdateObservable$0(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emitted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceInputSettingsFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->updateLanguagePackage(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method


# virtual methods
.method public initPreferences()V
    .locals 3

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/voiceinput/RecognizerUtils;->isSCSFeatureEnabled(Landroid/content/Context;)Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;->NOT_AVAILABLE:Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    const-string v2, "VoiceInputSettingsFragment"

    if-ne v0, v1, :cond_0

    const-string v0, "SCS is unavailable"

    .line 34
    invoke-static {v2, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "offline_language_pack"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const-string v0, "SCS is available"

    .line 37
    invoke-static {v2, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->addOfflineLangPackPreference()V

    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const-string p1, "VoiceInputSettingsFragment"

    const-string p2, "onCreatePreferences"

    .line 61
    invoke-static {p1, p2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget p1, Lcom/android/settings/R$xml;->voice_input_pref_setting:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->initPreferences()V

    return-void
.end method

.method public onViewAttached()V
    .locals 3

    .line 69
    iget v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mViewInflatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mViewInflatedCount:I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewInflatedCount  :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mViewInflatedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceInputSettingsFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mViewInflatedCount:I

    iget v2, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mLangPackCount:I

    if-ne v0, v2, :cond_0

    const-string v0, "LanguagePack Preferences Attached!!"

    .line 72
    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->initLangPackUpdateObservable()V

    :cond_0
    return-void
.end method
