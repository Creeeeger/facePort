.class public Lcom/android/settings/security/InstallCertificateFromStorage;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "InstallCertificateFromStorage.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/security/InstallCertificateFromStorage;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 102
    new-instance v0, Lcom/android/settings/security/InstallCertificateFromStorage$1;

    sget v1, Lcom/android/settings/R$xml;->install_certificate_from_storage:I

    invoke-direct {v0, v1}, Lcom/android/settings/security/InstallCertificateFromStorage$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/security/InstallCertificateFromStorage;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v0, Lcom/android/settings/security/InstallCaCertificatePreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/security/InstallCaCertificatePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Lcom/android/settings/security/InstallUserCertificatePreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/security/InstallUserCertificatePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {p0}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/settings/security/InstallWifiCertificatePreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/security/InstallWifiCertificatePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/security/InstallCertificateFromStorage;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 96
    sget p0, Lcom/android/settings/R$string;->help_url_install_certificate:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "InstallCertificateFromStorage"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x70b

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 58
    sget p0, Lcom/android/settings/R$xml;->install_certificate_from_storage:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "install_wifi_certificate"

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
