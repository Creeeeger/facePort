.class public Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAvailableCategory:Landroidx/preference/PreferenceCategory;

.field public mCallingPackage:Ljava/lang/String;

.field public mCurrentLangCode:Ljava/lang/String;

.field public mDownloadedCategory:Landroidx/preference/PreferenceCategory;

.field public final mLangPackReceiver:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2;

.field public mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

.field public mLanguagePackType:Ljava/lang/String;

.field public mOptionsMenu:Landroid/view/Menu;

.field public mRequestType:I

.field public final mRequiredLangCodeList:Ljava/util/List;

.field public mSelectMode:Z

.field public final mServiceConnection:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mSelectMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCallingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCurrentLangCode:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mRequiredLangCodeList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mServiceConnection:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$1;

    new-instance v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mLangPackReceiver:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2;

    return-void
.end method


# virtual methods
.method public final getLanguageInfoList$2()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->makeLanguageList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to make language info list : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LanguagePackSettingsFragment"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mRequiredLangCodeList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1fcc

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f17018c

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_available_language_category"

    const-string v1, "key_downloaded_language_category"

    if-eqz p1, :cond_6

    const-string/jumbo v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mSelectMode:Z

    const-string/jumbo v2, "package"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCallingPackage:Ljava/lang/String;

    const-string v2, "locale"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCurrentLangCode:Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mLanguagePackType:Ljava/lang/String;

    const-string v2, "locales"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "primary_category"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "secondary_category"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mRequiredLangCodeList:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mRequiredLangCodeList:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "key_description"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Select mode: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mSelectMode:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Package: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Current language code: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCurrentLangCode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", LanguagePack Type : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mLanguagePackType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "LanguagePackSettingsFragment"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mDownloadedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mAvailableCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->updatePreference$12$1()V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mOptionsMenu:Landroid/view/Menu;

    const/4 v0, 0x1

    const v1, 0x7f1409ba

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {p1, v2, v3, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->updateVisibilityMenuItem()V

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mRequestType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 v0, 0x0

    const v2, 0x7f1424eb

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/16 v0, 0x1fcc

    iput v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mServiceConnection:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$1;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mServiceConnection:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$1;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->updatePreference$12$1()V

    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.settings.action.LANGUAGE_PACK_UPDATE_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.settings.action.LANGUAGE_PACK_UPDATE_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.settings.action.LANGUAGE_PACK_UPDATE_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mLangPackReceiver:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mLangPackReceiver:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2;

    invoke-virtual {v1, p0, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mLangPackReceiver:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mSelectMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070dab

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070dc5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p2, p1

    new-instance p1, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080a92

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;-><init>(ILandroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/16 p1, 0x3c

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    return-void
.end method

.method public final updatePreference$12$1()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mDownloadedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mAvailableCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->getLanguageInfoList$2()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mLanguagePackType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mLanguagePackType:Ljava/lang/String;

    const-string v3, "asr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mRequestType:I

    iget-object v3, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mLanguagePackType:Ljava/lang/String;

    const-string/jumbo v4, "tts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mRequestType:I

    :cond_2
    const-string v1, "LanguagePackSettingsFragment"

    const-string/jumbo v3, "updatePreference() START"

    invoke-static {v1, v3}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    new-instance v5, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mSelectMode:Z

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, v5, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iput-boolean v7, v5, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsSelectMode:Z

    iget v6, v4, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mDisplayOrder:I

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v6, v4, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iput-object p0, v5, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mListener:Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$OnClickListener;

    invoke-virtual {v4}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mRequestType:I

    invoke-virtual {v4, v6, v7, v0}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->checkDownloadedWithType(Landroid/content/Context;ILjava/util/List;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsInstall:Z

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mDownloadedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mAvailableCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updatePreference() lang : "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mRequestType:I

    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mSupportType:I

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "updatePreference() END"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mSelectMode:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->updateRadioButtons()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mDownloadedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mAvailableCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->updateVisibilityMenuItem()V

    return-void
.end method

.method public final updateRadioButtons()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mDownloadedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mDownloadedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCurrentLangCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mChecked:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iput-boolean v4, v2, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mChecked:Z

    iget-object v2, v2, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_0
    iget-boolean v3, v2, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mChecked:Z

    if-eqz v3, :cond_1

    iput-boolean v0, v2, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mChecked:Z

    iget-object v2, v2, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final updateVisibilityMenuItem()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mDownloadedCategory:Landroidx/preference/PreferenceCategory;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    const v2, 0x7f140c1d

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mDownloadedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->getLanguageInfoList$2()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mRequestType:I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->hasUninstallablePackage(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_0
    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_2
    return-void
.end method
