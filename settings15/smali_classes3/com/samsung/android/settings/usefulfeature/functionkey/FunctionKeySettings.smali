.class public Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public final mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FunctionKeySettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1dbd

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701a6

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyTipsForPowerOffPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyTipsForPowerOffPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyTipsForPowerOffPreferenceController;->init(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->setListening(Z)V

    return-void
.end method
