.class public Lcom/android/settings/notification/zen/ZenModePeopleSettings;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "ZenModePeopleSettings.java"

# interfaces
.implements Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static mIsFromDnd:Z

.field private static mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

.field private static mZenModeContactExceptionController:Lcom/android/settings/notification/zen/ZenModeContactExceptionController;


# instance fields
.field private CONTACT_ID:I

.field private PHONE_NUMBER:I

.field private REQUEST_CODE_OK:I

.field private mContactAllowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecRecyclerViewPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

.field private mZenBackend:Lcom/android/settings/notification/zen/ZenModeBackend;


# direct methods
.method public static synthetic $r8$lambda$20iyP7s0i3lmVxU0sAfkZwYU-BQ(Lcom/android/settings/notification/zen/ZenModePeopleSettings;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->lambda$onActivityResult$1(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7NqCB3bq_mDVoaDypZTlpN3WAG8(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->lambda$getContactPickerIntent$0(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 199
    new-instance v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings$1;

    sget v1, Lcom/android/settings/R$xml;->zen_mode_people_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/ZenModePeopleSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 214
    new-instance v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenModePeopleSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->REQUEST_CODE_OK:I

    .line 68
    iput v0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->PHONE_NUMBER:I

    const/4 v0, 0x2

    .line 69
    iput v0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->CONTACT_ID:I

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Landroid/app/Application;",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/android/settings/notification/NotificationBackend;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance p3, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;

    sget-boolean p4, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    const-string/jumbo p5, "zen_contact"

    invoke-direct {p3, p0, p5, p1, p4}, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V

    sput-object p3, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mZenModeContactExceptionController:Lcom/android/settings/notification/zen/ZenModeContactExceptionController;

    .line 171
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance p3, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;

    sget-boolean p4, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    invoke-direct {p3, p0, p1, p4}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance p3, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;

    sget-boolean p4, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    invoke-direct {p3, p0, p1, p4}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance p3, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x10e013c

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    sget-boolean p5, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    invoke-direct {p3, p0, p1, p4, p5}, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;IZ)V

    .line 174
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private getContactAllowList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContact_exist_list()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mContactAllowList:Ljava/util/List;

    const/4 v1, 0x0

    .line 135
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mContactAllowList:Ljava/util/List;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mContactAllowList:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$getContactPickerIntent$0(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    const-string v0, ";"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onActivityResult$1(Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    const-string v0, ";"

    .line 325
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->CONTACT_ID:I

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->PHONE_NUMBER:I

    aget-object p0, p2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 327
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 154
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "path"

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 157
    sput-boolean v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 159
    sput-boolean v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    .line 162
    :goto_1
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    new-instance v7, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v7}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    move-object v2, p1

    move-object v5, p0

    .line 161
    invoke-static/range {v2 .. v7}, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getContactPickerIntent()Landroid/content/Intent;
    .locals 4

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "additional"

    const-string/jumbo v2, "phone-multi"

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "disable_selectall"

    const/4 v2, 0x1

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "has_additional"

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "maxRecipientCount"

    const/16 v3, 0x32

    .line 103
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "excludeProfile"

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "block-tab"

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :try_start_0
    sget-boolean v2, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    if-eqz v2, :cond_0

    .line 110
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 111
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->getContactAllowList()Ljava/util/List;

    move-result-object p0

    .line 116
    :goto_0
    new-instance v2, Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const-string/jumbo p0, "selected_id_list"

    .line 122
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 187
    sget-boolean p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/settings/notification/zen/ZenModeSettings;

    goto :goto_0

    :cond_0
    const-class p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenFragment;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x71f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 182
    sget p0, Lcom/android/settings/R$xml;->zen_mode_people_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 319
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 321
    iget p2, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->REQUEST_CODE_OK:I

    if-ne p1, p2, :cond_1

    .line 322
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo p2, "result"

    .line 323
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 324
    new-instance p3, Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/zen/ZenModePeopleSettings;Ljava/util/List;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 329
    sget-boolean p2, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    if-eqz p2, :cond_0

    .line 330
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/settings/notification/zen/ZenUtil;->setExceptionContact(Ljava/util/List;Landroid/content/Context;)V

    goto :goto_0

    .line 332
    :cond_0
    sget-object p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContact_exist_list(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAddItemClick()V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->getContactPickerIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mZenBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    .line 80
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    const-string/jumbo v0, "zen_contact"

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mSecRecyclerViewPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->getAppNotificationTypeAdapter()Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->setZenModeListener(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;)V

    :cond_0
    return-void
.end method

.method public onPerformRemoveClick(I)V
    .locals 0

    .line 142
    sget-object p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mZenModeContactExceptionController:Lcom/android/settings/notification/zen/ZenModeContactExceptionController;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->handleDelete(I)V

    return-void
.end method
