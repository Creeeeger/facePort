.class public Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;
.super Landroidx/preference/Preference;
.source "LangPackPreference.java"

# interfaces
.implements Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;


# static fields
.field private static TAG:Ljava/lang/String; = "@VoiceIn:LangPackPreference "


# instance fields
.field private mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field mContext:Landroid/content/Context;

.field private mDownloadBtn:Landroid/widget/ImageButton;

.field private mItemView:Landroid/view/View;

.field private mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

.field private mListener:Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;

.field mLocaleCode:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$5UOwDCOzRu5whXCPGD4zE6DaRYg(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->lambda$setEnabled$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JLIUtawBq4QCOkO96KDFYtCkNM4(Landroid/widget/ProgressBar;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->lambda$onLangPackResultSubscribed$3(Landroid/widget/ProgressBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LziGmonUTAVLrTK7N8MvZCPzzxo(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->lambda$onBindViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V8meaPH4wmlrANgcgckkj8KP_wE(Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->lambda$onBindViewHolder$2(Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uL2MEaw3wMU16m2FdfBTgoqALnw(Landroid/widget/ProgressBar;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->lambda$onLangPackResultUpdated$4(Landroid/widget/ProgressBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vJmGd16KYTvSWbnsUfRXIH_kakI(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;Lcom/samsung/android/settings/voiceinput/offline/Language;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->lambda$onLangPackResultUpdated$5(Lcom/samsung/android/settings/voiceinput/offline/Language;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wO6bnHmqZQ8xEm7qtlwCm7-r1iA(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->lambda$onBindViewHolder$0(Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mContext:Landroid/content/Context;

    .line 43
    sget p1, Lcom/android/settings/R$layout;->lang_pack_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_pref"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-direct {v0}, Lcom/samsung/android/settings/voiceinput/offline/Language;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    .line 52
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/voiceinput/offline/Language;->setLanguageName(Ljava/lang/String;)V

    .line 53
    iget-object p3, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {p3, p2}, Lcom/samsung/android/settings/voiceinput/offline/Language;->setLocale(Ljava/lang/String;)V

    .line 54
    invoke-static {p1, p2}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getMatchedPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mPackageName:Ljava/lang/String;

    .line 55
    iget-object p3, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getMatchedPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/settings/voiceinput/offline/Language;->setLangPackage(Ljava/lang/String;)V

    .line 56
    iget-object p3, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/samsung/android/settings/voiceinput/RecognizerUtils;->getSCSLanguagePackStoreLinkIntent(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/settings/voiceinput/offline/Language;->setStoreIntent(Landroid/content/Intent;)V

    .line 58
    sget-object p1, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "LangPackPreference constructor() : language "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    iget-object v0, p1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;->language:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 81
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;->version:Ljava/lang/String;

    .line 82
    sget-object v1, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got notification after updated for locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;->language:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 84
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setPreferenceStatus()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->web_tos_no_network_connection_content:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->addDownloadPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->getInstallResult()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 87
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getStoreIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "type"

    const-string v1, "cover"

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$2(Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;)V
    .locals 0

    .line 95
    invoke-interface {p0}, Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;->onViewAttached()V

    return-void
.end method

.method private static synthetic lambda$onLangPackResultSubscribed$3(Landroid/widget/ProgressBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$onLangPackResultUpdated$4(Landroid/widget/ProgressBar;)V
    .locals 1

    const/16 v0, 0x8

    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onLangPackResultUpdated$5(Lcom/samsung/android/settings/voiceinput/offline/Language;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setPreferenceStatus()V

    return-void
.end method

.method private synthetic lambda$setEnabled$6(Z)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private setPreferenceStatus()V
    .locals 5

    .line 133
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferenceStatus:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->getLanguagePackageStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/voiceinput/offline/Language;->setStatus(I)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 157
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferenceStatus:: Not available, mLanguage.getStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {v4}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setEnabled(Z)V

    goto :goto_0

    .line 137
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->TAG:Ljava/lang/String;

    const-string v1, "setPreferenceStatus:: Latest version"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->langpack_latest_version:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setEnabled(Z)V

    goto :goto_0

    .line 144
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->TAG:Ljava/lang/String;

    const-string v1, "setPreferenceStatus:: A newer version is available"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->langpack_new_version_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setEnabled(Z)V

    goto :goto_0

    .line 151
    :cond_2
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->TAG:Ljava/lang/String;

    const-string v3, "setPreferenceStatus:: Not installed"

    invoke-static {v0, v3}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addViewInflateListener(Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;)V
    .locals 3

    .line 100
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addViewInflateListener  localeCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mListener:Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 64
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mItemView:Landroid/view/View;

    .line 65
    sget v0, Lcom/android/settings/R$id;->download_btn:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mDownloadBtn:Landroid/widget/ImageButton;

    .line 66
    sget v0, Lcom/android/settings/R$id;->progress:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mProgressBar:Landroid/widget/ProgressBar;

    .line 67
    sget v0, Lcom/android/settings/R$id;->title_text:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mTitle:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {v1}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget v0, Lcom/android/settings/R$id;->summary_text:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    .line 70
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mDownloadBtn:Landroid/widget/ImageButton;

    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget-object p1, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->TAG:Ljava/lang/String;

    const-string v0, "onBindViewHolder"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mListener:Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setPreferenceStatus()V

    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 106
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->TAG:Ljava/lang/String;

    const-string v1, "LangPackPreference clicked!!"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 108
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mDownloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->performClick()Z

    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 114
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onLangPackResultSubscribed()V
    .locals 3

    .line 120
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLangPackResultSubscribed : localeCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLangPackResultUpdated()V
    .locals 3

    .line 126
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLangPackResultUpdated : localeCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mListener:Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mDownloadBtn:Landroid/widget/ImageButton;

    sget v1, Lcom/android/settings/R$drawable;->ic_voice_input_download:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mDownloadBtn:Landroid/widget/ImageButton;

    sget v1, Lcom/android/settings/R$drawable;->ic_voice_input_download_disabled:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mItemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
