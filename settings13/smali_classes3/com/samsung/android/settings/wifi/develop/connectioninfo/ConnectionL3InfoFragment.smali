.class public Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConnectionL3InfoFragment.java"


# instance fields
.field mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-direct {v1, p1, v2, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 39
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_develop_connection_l3_status_fragment:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
