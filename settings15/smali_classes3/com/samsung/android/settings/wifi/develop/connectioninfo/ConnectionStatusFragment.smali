.class public Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    if-nez v1, :cond_0

    const-string p1, "ConnectionStatusFragment"

    const-string v1, "Abnormally finished. ConnectionInfoRepo is null"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-direct {v1, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string p1, "2.4GHz"

    const-string v3, "5GHz"

    const-string v4, "6GHz"

    filled-new-array {p1, v3, v4}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mGraphLabels:[Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;

    invoke-direct {p1, v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;)V

    iput-object p1, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17022b

    return p0
.end method
