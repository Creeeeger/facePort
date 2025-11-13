.class public Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PbapDashboard.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard$2;

    sget v1, Lcom/android/settings/R$xml;->pbap_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard$2;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 32
    sget-object p0, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x27

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 42
    sget p0, Lcom/android/settings/R$xml;->pbap_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "bluetooth_apply_button"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard$1;-><init>(Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method
