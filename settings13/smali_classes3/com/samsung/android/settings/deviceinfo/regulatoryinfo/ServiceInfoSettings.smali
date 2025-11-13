.class public Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/ServiceInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ServiceInfoSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/ServiceInfoSettings$1;

    sget v1, Lcom/android/settings/R$xml;->sec_service_info_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/ServiceInfoSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/ServiceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xe1

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 49
    sget p0, Lcom/android/settings/R$xml;->sec_service_info_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
