.class public Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SpecialAccessSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings$1;

    invoke-direct {v0}, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SpecialAccessSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x15f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 61
    sget p0, Lcom/android/settings/R$xml;->special_access:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcom/android/settings/R$string;->interact_across_profiles_title:I

    const-string v0, "interact_across_profiles"

    const-string v1, "Settings.CONNECTED_WORK_AND_PERSONAL_APPS_TITLE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget p1, Lcom/android/settings/R$string;->manage_device_admin:I

    const-string v0, "device_administrators"

    const-string v1, "Settings.MANAGE_DEVICE_ADMIN_APPS"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
