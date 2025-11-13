.class public Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;


# static fields
.field public static final KEY_OFFLINE_PREFERENCE:Ljava/lang/String; = "offline_language_pack"

.field public static final KEY_SPACE_PREFERENCE:Ljava/lang/String; = "padding_bottom_space_layout"

.field private static final SETTINGS_DB_DATA_CONFIG_ENABLED:Ljava/lang/String; = "scs_search_data_config_enabled"

.field private static final TAG:Ljava/lang/String; = "VoiceInputSettingsFragment"


# instance fields
.field private isFragmentShowing:Z

.field private mLangPackCount:I

.field private mLangPackResultObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable;"
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
.method public static $r8$lambda$n1AAjjg1GFGQnaWs6ZsT7tXoKXw(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "VoiceInputSettingsFragment"

    const-string v1, "Go to advanced settings"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->isFragmentShowing:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.USEFUL_FEATURE_MAIN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, ":settings:fragment_args_key"

    const-string/jumbo v3, "samsung_core_services"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerArrayList(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mListenerArrayList:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mViewInflatedCount:I

    iput v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mLangPackCount:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->isFragmentShowing:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mListenerArrayList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const-string p1, "VoiceInputSettingsFragment"

    const-string p2, "onCreatePreferences"

    invoke-static {p1, p2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->preloadFragment()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->preloadFragment()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mViewInflatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mViewInflatedCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "viewInflatedCount  :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mViewInflatedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceInputSettingsFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mViewInflatedCount:I

    iget v2, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mLangPackCount:I

    if-ne v0, v2, :cond_2

    const-string v0, "LanguagePack Preferences Attached!!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils;->isLangPackRequestNeeded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)V

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda3;)V

    iput-object v1, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mLangPackResultObservable:Lio/reactivex/Observable;

    sget-object v0, Lio/reactivex/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/android/schedulers/HandlerScheduler;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/android/schedulers/HandlerScheduler;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object v0

    sget-object v1, Lio/reactivex/schedulers/Schedulers;->IO:Lio/reactivex/Scheduler;

    const-string/jumbo v2, "scheduler is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    invoke-direct {v2, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;-><init>(Lio/reactivex/internal/operators/observable/ObservableObserveOn;Lio/reactivex/Scheduler;)V

    new-instance v0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;-><init>(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)V

    invoke-virtual {v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "scheduler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public final preloadFragment()V
    .locals 13

    iget-boolean v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->isFragmentShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->isFragmentShowing:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/voiceinput/RecognizerUtils;->isSCSFeatureEnabled(Landroid/content/Context;)Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;->NOT_AVAILABLE:Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    const-string v3, "offline_language_pack"

    const-string v4, "VoiceInputSettingsFragment"

    if-ne v1, v2, :cond_1

    const-string v0, "SCS is unavailable"

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "scs_search_data_config_enabled"

    const/4 v5, -0x1

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_2

    const-string v0, "SCS require popup"

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0c01

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0b72

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f141eb8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f15072d

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141eb9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141eb7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    :cond_2
    const-string v1, "SCS is available"

    invoke-static {v4, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f17028e

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceCategory;

    if-nez v1, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/voiceinput/OnDeviceLanguageList;->setLanguageList(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/OnDeviceLanguageList;->getLanguageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    const-string v5, "padding_bottom_space_layout"

    invoke-virtual {p0, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/SpacePreference;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    move v3, v4

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "updateCacheForCurrentLocale locale : "

    const-string v8, "@VoiceIn: OfflinePackageChecker"

    invoke-static {v8, v7}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/voiceinput/RecognizerUtils;->getLocaleCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_version"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "000000000"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "getLanguagePackageVersion locale :"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  version "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "@VoiceIn: OfflineLanguageUtil"

    invoke-static {v10, v7}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getLangPackage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getLangPackage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "cachedVersion : "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " installedVersion : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "checkAndUpdateVersion cachedVersion : "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils;->getVersion(Ljava/lang/String;)I

    move-result v7

    invoke-static {v11}, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils;->getVersion(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/settings/voiceinput/RecognizerUtils;->getLocaleCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    if-ne v7, v8, :cond_7

    if-nez v7, :cond_7

    invoke-static {v6, v4, v9}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_2

    :cond_7
    if-gt v7, v8, :cond_8

    const/4 v7, 0x3

    invoke-static {v6, v7, v9}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v6, v9, v11}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getLanguageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v6, v0, v9}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_2

    :cond_9
    const/4 v7, 0x2

    invoke-static {v6, v7, v9}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;ILjava/lang/String;)V

    :goto_2
    new-instance v6, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/voiceinput/offline/Language;)V

    invoke-virtual {v6, p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->addViewInflateListener(Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;)V

    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget v5, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mLangPackCount:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mLangPackCount:I

    iget-object v5, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->mListenerArrayList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_3
    return-void
.end method
