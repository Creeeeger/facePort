.class public final synthetic Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

.field public final synthetic f$1:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/drawer/Tile;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->getSaLoggingId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1000"

    goto :goto_0

    :cond_1
    const-string v2, "0"

    :goto_0
    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p1, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x1

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    if-eqz v3, :cond_6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object p0, v4, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    const/4 p0, 0x0

    iput-object p0, v4, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    iput-object p0, v4, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    iput-boolean v2, v4, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    iput-boolean v1, v4, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    iput-boolean v1, v4, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    iget-object v2, v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    iget-object v2, v2, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v5, "SecDynamicMenuFeatureProviderImpl"

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    if-eqz v2, :cond_6

    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_4

    :cond_2
    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-class v6, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v6, "menu"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "checked_change"

    invoke-virtual {v2, v4, p0, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    :goto_2
    :try_start_2
    const-string v3, "can not call the provider"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_6

    goto :goto_1

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_3
    throw p0

    :cond_4
    const-string p0, "context or uri or DynamicMenuData is null"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    new-instance p0, Lcom/samsung/android/settings/external/DynamicMenuData$InvalidMenuDataException;

    const-string p1, "Key cannot be empty"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/external/DynamicMenuData$InvalidMenuDataException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iget-object p0, v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mPreferenceKeySettingsDbPMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return v1
.end method
