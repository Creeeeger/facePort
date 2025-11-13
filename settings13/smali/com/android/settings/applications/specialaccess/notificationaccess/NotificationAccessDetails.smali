.class public Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NotificationAccessDetails.java"


# instance fields
.field protected mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mAppsControlDisallowedBySystem:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mCreated:Z

.field private mIsNls:Z

.field private mNm:Landroid/app/NotificationManager;

.field protected mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field protected mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private mServiceName:Ljava/lang/CharSequence;

.field protected mUserId:I


# direct methods
.method public static synthetic $r8$lambda$3I9watyCdwAxou5vqR5Ew8Tq0dU(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Lcom/android/settings/notification/NotificationBackend;ILcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->lambda$onAttach$0(Lcom/android/settings/notification/NotificationBackend;ILcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eDyaXeFatGnudIi66S7WHaj3qzs(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Lcom/android/settings/notification/NotificationBackend;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->lambda$onAttach$1(Lcom/android/settings/notification/NotificationBackend;ILjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$psWYi9_BIn7we00XqNN-Fuw20Ak(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->lambda$disable$2(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tvGOVHPIZQ4oNfaIQ5FPyNfPuXg(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->lambda$updatePreference$3(Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$disable$2(Landroid/content/ComponentName;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mNm:Landroid/app/NotificationManager;

    .line 239
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAttach$0(Lcom/android/settings/notification/NotificationBackend;ILcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 117
    instance-of v0, p3, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    if-eqz v0, :cond_0

    .line 118
    check-cast p3, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    .line 120
    invoke-virtual {p3, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setNm(Lcom/android/settings/notification/NotificationBackend;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 121
    invoke-virtual {p1, p3}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setCn(Landroid/content/ComponentName;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 122
    invoke-virtual {p1, p3}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setServiceInfo(Landroid/content/pm/ServiceInfo;)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 123
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setUserId(I)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    move-result-object p0

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;->setTargetSdk(I)Lcom/android/settings/applications/specialaccess/notificationaccess/TypeFilterPreferenceController;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAttach$1(Lcom/android/settings/notification/NotificationBackend;ILjava/util/List;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Lcom/android/settings/notification/NotificationBackend;I)V

    invoke-interface {p3, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$updatePreference$3(Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 284
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 286
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->isGranted(Landroid/content/ComponentName;)Z

    move-result p2

    if-nez p2, :cond_0

    return p3

    .line 290
    :cond_0
    new-instance p2, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;-><init>()V

    iget-object p3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 291
    invoke-virtual {p2, p3, p1, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/notificationaccess/FriendlyWarningDialogFragment;

    move-result-object p1

    .line 292
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "friendlydialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v0

    .line 295
    :cond_1
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->isGranted(Landroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p3

    .line 299
    :cond_2
    new-instance p2, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;-><init>()V

    iget-object p3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 300
    invoke-virtual {p2, p3, p1, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;

    move-result-object p1

    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "dialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public disable(Landroid/content/ComponentName;)V
    .locals 2

    .line 235
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mNm:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 237
    new-instance v0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->refreshUi()Z

    return-void
.end method

.method protected enable(Landroid/content/ComponentName;)V
    .locals 2

    .line 246
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->refreshUi()Z

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NotifAccessDetails"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x70c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 310
    sget p0, Lcom/android/settings/R$xml;->notification_access_permission_details:I

    return p0
.end method

.method protected isGranted(Landroid/content/ComponentName;)Z
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method protected loadNotificationListenerService()V
    .locals 4

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mIsNls:Z

    .line 259
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.notification.NotificationListenerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x84

    iget v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 267
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 268
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mIsNls:Z

    .line 272
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mServiceName:Ljava/lang/CharSequence;

    .line 273
    iput-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    :cond_2
    return-void
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x308

    goto :goto_0

    :cond_0
    const/16 p1, 0x309

    .line 228
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mNm:Landroid/app/NotificationManager;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->retrieveAppEntry()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->loadNotificationListenerService()V

    .line 107
    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    const/16 v0, 0x1f

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :catch_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Lcom/android/settings/notification/NotificationBackend;I)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 159
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    const-string v2, "no_control_apps"

    .line 160
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 162
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mAppsControlDisallowedBySystem:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mCreated:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mCreated:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->loadNotificationListenerService()V

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    .line 174
    invoke-static {v1, p0, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    .line 175
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 177
    invoke-virtual {v3, v4}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 176
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 178
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mServiceName:Ljava/lang/CharSequence;

    .line 179
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 180
    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    .line 181
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 182
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v0, v2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 189
    new-instance v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 190
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 191
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method protected refreshUi()Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    const-string v2, "NotifAccessDetails"

    if-nez v0, :cond_0

    const-string p0, "No component name provided"

    .line 138
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mIsNls:Z

    if-nez v0, :cond_1

    const-string p0, "Provided component name is not an NLS"

    .line 143
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 146
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "NLSes aren\'t allowed in work profiles"

    .line 148
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v0, "notification_access_switch"

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->updatePreference(Landroidx/preference/SwitchPreference;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected retrieveAppEntry()V
    .locals 4

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "package"

    .line 199
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 202
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "android.intent.extra.user_handle"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 209
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    goto :goto_2

    .line 211
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    .line 215
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageName:Ljava/lang/String;

    const v2, 0x8001200

    iget v3, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mUserId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updatePreference(Landroidx/preference/SwitchPreference;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->isGranted(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 283
    new-instance v1, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
