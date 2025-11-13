.class public Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final exceptionUri:Landroid/net/Uri;

.field public static final isWipsEnabled:Z


# instance fields
.field public mContentObserver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$2;

.field public mContext:Landroid/content/Context;

.field public mExceptionList:Landroidx/preference/PreferenceGroup;

.field public mIntentFilter:Landroid/content/IntentFilter;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$1;

.field public mWIPSDesc:Landroidx/preference/Preference;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.server.wifi.mobilewips/allowedList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->exceptionUri:Landroid/net/Uri;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    invoke-static {}, Lcom/android/settings/Utils;->isWipsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->isWipsEnabled:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$3;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mReceiver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$1;

    return-void
.end method


# virtual methods
.method public final addPref(Ljava/util/ArrayList;)Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAC address : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-object v0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method public final getMobileWIPSException()Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "exception_type"

    const-string/jumbo v2, "ssid_name"

    const-string v3, "mac_addr"

    filled-new-array {v3, p0, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 p0, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->exceptionUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    if-eqz p0, :cond_1

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v1, "MobileWIPSExceptionList"

    const-string v2, "error getMobileWIPSException() can\'t get allowlist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2
    return-object v0

    :goto_3
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1702a3

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "wips_exception_up"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    const-string/jumbo p1, "wips_exception_desc"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWIPSDesc:Landroidx/preference/Preference;

    const v0, 0x7f1435d4

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    new-instance p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContentObserver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$2;

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v1, "MobileWIPSExceptionList"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Action bar up button"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    const-string p1, "open Exception List"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    const v1, 0x7f1435d3

    invoke-virtual {p1, v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/4 p0, 0x0

    iput p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v2
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "MobileWIPSExceptionList"

    const-string v1, "MobileWIPSExceptionList:onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContentObserver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$2;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mReceiver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$1;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 8

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "MobileWIPSExceptionList"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MobileWIPSExceptionList:finishMobileWipsException"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->setExceptionListUp()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mReceiver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$1;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v7, 0x2

    const-string v5, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->exceptionUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContentObserver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$2;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerContentObserver, Exception"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setExceptionListUp()V
    .locals 4

    const-string v0, "MobileWIPSExceptionList"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->getMobileWIPSException()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "ExceptionList is empty. Set No exception layout."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWIPSDesc:Landroidx/preference/Preference;

    const v1, 0x7f0d0c29

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWIPSDesc:Landroidx/preference/Preference;

    const v3, 0x7f0d0c2b

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWIPSDesc:Landroidx/preference/Preference;

    const v3, 0x7f1435d4

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->addPref(Ljava/util/ArrayList;)Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMobileWIPSException, Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
