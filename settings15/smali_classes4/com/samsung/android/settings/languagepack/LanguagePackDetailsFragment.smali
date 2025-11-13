.class public Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final addPreference(Ljava/lang/String;Lcom/samsung/android/settings/languagepack/data/PackageInfo;)V
    .locals 7

    iget-object v0, p2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    iget-boolean v1, p2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mIsPreloaded:Z

    iget-wide v2, p2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPreloadedVersionCode:J

    iget-object p2, p2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPreloadedVersionName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v1, v2, v5

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid package name : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LanguagePackDetailsFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackDetailsPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f142602

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_3
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getTitle(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f142624

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f142621

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f142622

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f142601

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LanguagePackDetailsFragment"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalid locale info : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->makeLanguageList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to make language info list : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda1;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unsupported locale : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_3
    :goto_2
    const p1, 0x7f1701b5

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda2;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda2;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda1;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p0}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
