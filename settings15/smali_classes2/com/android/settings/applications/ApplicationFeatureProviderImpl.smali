.class public final Lcom/android/settings/applications/ApplicationFeatureProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mPms:Landroid/content/pm/IPackageManager;

.field public final mSystemConfigManager:Landroid/os/SystemConfigManager;

.field public final mUm:Landroid/os/UserManager;

.field public final mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V
    .locals 2

    new-instance v0, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    iput-object p4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    const-class p2, Landroid/os/SystemConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/SystemConfigManager;

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mSystemConfigManager:Landroid/os/SystemConfigManager;

    return-void
.end method


# virtual methods
.method public findEuiccService(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;
    .locals 10

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.service.euicc.EuiccService"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10100040

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const-string v0, "AppFeatureProviderImpl"

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v2, -0x80000000

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v5, "Missing ComponentInfo!"

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v4, :cond_c

    :goto_1
    iget-object v6, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v7, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {p1, v7, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v8, "Package "

    if-eqz v7, :cond_3

    const-string v3, " does not declare WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-static {v8, v6, v3, v0}, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v7, v4, Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_4

    check-cast v4, Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_2

    :cond_4
    instance-of v7, v4, Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_b

    check-cast v4, Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    :goto_2
    const-string v7, "android.permission.BIND_EUICC_SERVICE"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v3, " does not require the BIND_EUICC_SERVICE permission"

    invoke-static {v8, v6, v3, v0}, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getPriority()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getPriority()I

    move-result v4

    if-le v4, v2, :cond_0

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_9

    :goto_3
    move-object v9, v2

    move v2, v1

    move-object v1, v9

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_4
    const-string v3, " does not specify a priority"

    invoke-static {v8, v6, v3, v0}, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can only verify services/activities"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    if-nez v1, :cond_e

    const-string p0, "No valid EuiccService implementation found"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-object v1
.end method

.method public final findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p2, v4

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v5, p1}, Landroid/content/pm/IPackageManager;->findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    new-instance v5, Lcom/android/settings/applications/UserAppInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, v2, v6}, Lcom/android/settings/applications/UserAppInfo;-><init>(Landroid/content/pm/UserInfo;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final getKeepEnabledPackages()Ljava/util/Set;
    .locals 5

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->findEuiccService(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Landroid/webkit/Flags;->updateServiceV2()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/webkit/WebViewUpdateManager;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/webkit/IWebViewUpdateService;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v3, "WVUSWrapper"

    const-string v4, "Exception when trying to fetch default WebView package Name"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_5

    iget-object v1, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f140a2b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f140a16

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getWellbeingPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getWellbeingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getExtraLocationControllerPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mSystemConfigManager:Landroid/os/SystemConfigManager;

    invoke-virtual {p0}, Landroid/os/SystemConfigManager;->getPreventUserDisablePackages()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const-string p0, "com.google.android.apps.setupwizard.searchselector"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
