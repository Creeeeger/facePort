.class public Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BriefPopUpSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSettingsObserver:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$mupdateVisible(Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->updateVisible()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 99
    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$1;

    sget v1, Lcom/android/settings/R$xml;->brief_popup_main_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
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

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v1, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;

    const-string v2, "apps_to_view_as_brief_popup"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;

    const-string v2, "brief_popup_style_settings"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorController;

    const-string v2, "brief_popup_keyword_color_settings"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpConditionController;

    const-string v2, "brief_popup_show_even_screen_off"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpConditionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleDescriptionController;

    const-string v2, "brief_popup_style_settings_description"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleDescriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/samsung/android/settings/notification/brief/DetailedPopUpStyleDescriptionController;

    const-string v2, "detailed_popup_style_description"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/notification/brief/DetailedPopUpStyleDescriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private updateVisible()V
    .locals 3

    .line 157
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

    .line 158
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

    .line 159
    instance-of v2, v1, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;

    if-eqz v2, :cond_2

    .line 160
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;

    .line 161
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->updateVisible()V

    .line 163
    :cond_2
    instance-of v2, v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;

    if-eqz v2, :cond_3

    .line 164
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;

    .line 165
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;->updateVisible()V

    .line 167
    :cond_3
    instance-of v2, v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorController;

    if-eqz v2, :cond_4

    .line 168
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorController;

    .line 169
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorController;->updateVisible()V

    .line 171
    :cond_4
    instance-of v2, v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpConditionController;

    if-eqz v2, :cond_5

    .line 172
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/notification/brief/BriefPopUpConditionController;

    .line 173
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpConditionController;->updateVisible()V

    .line 175
    :cond_5
    instance-of v2, v1, Lcom/samsung/android/settings/notification/brief/DetailedPopUpStyleDescriptionController;

    if-eqz v2, :cond_6

    .line 176
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/notification/brief/DetailedPopUpStyleDescriptionController;

    .line 177
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/DetailedPopUpStyleDescriptionController;->updateVisible()V

    .line 179
    :cond_6
    instance-of v2, v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleDescriptionController;

    if-eqz v2, :cond_1

    .line 180
    check-cast v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleDescriptionController;

    .line 181
    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleDescriptionController;->updateVisible()V

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BriefPopUpSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 50
    sget p0, Lcom/android/settings/R$xml;->brief_popup_main_settings:I

    return p0
.end method

.method public isPreferenceAnimationAllowed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance p1, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;->setListening(Z)V

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->updateVisible()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 153
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;->setListening(Z)V

    return-void
.end method
