.class public Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mSettingsObserver:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$1;

    const v1, 0x7f17006b

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BriefPopUpSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17006b

    return p0
.end method

.method public final isPreferenceAnimationAllowed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;->setListening(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->updateVisible$3()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public final updateVisible$3()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v2, v1, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->updateVisible()V

    :cond_2
    instance-of v2, v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->updateVisible()V

    :cond_3
    instance-of v2, v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorController;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorController;->updateVisible()V

    :cond_4
    instance-of v2, v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpConditionController;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/notification/brief/BriefPopUpConditionController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpConditionController;->updateVisible()V

    :cond_5
    instance-of v2, v1, Lcom/samsung/android/settings/notification/brief/DetailedPopUpStyleDescriptionController;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/notification/brief/DetailedPopUpStyleDescriptionController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/DetailedPopUpStyleDescriptionController;->updateVisible()V

    :cond_6
    instance-of v2, v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleDescriptionController;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleDescriptionController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleDescriptionController;->updateVisible()V

    goto :goto_0

    :cond_7
    return-void
.end method
