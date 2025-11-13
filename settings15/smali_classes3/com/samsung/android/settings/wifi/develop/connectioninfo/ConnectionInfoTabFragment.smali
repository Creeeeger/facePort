.class public Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

.field public mConnectionL2InfoFragment:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2InfoFragment;

.field public mConnectionL3InfoFragment:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;

.field public mConnectionStatusFragment:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170228

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "ConnectionInfoTabFragment"

    const-string v0, "onCreate: create ConnectionInfoRepo"

    invoke-static {p1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    const-string p1, "connection_info_tab_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabPreference;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;)V

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;->mOnTabSelectedListener:Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;

    :cond_0
    return-void
.end method
