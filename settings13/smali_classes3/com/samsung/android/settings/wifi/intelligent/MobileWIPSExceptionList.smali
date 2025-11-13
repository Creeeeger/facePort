.class public Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "MobileWIPSExceptionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;
    }
.end annotation


# static fields
.field private static final CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

.field private static DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field private static final exceptionUri:Landroid/net/Uri;

.field private static isJDMDevice:Z

.field private static isWipsDisabled:Z


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mExceptionList:Landroidx/preference/PreferenceGroup;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWIPSDesc:Landroidx/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExceptionList(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;)Landroidx/preference/PreferenceGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinishMobileWipsException(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->finishMobileWipsException()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetExceptionListUp(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->setExceptionListUp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCONFIG_SECURE_SVC_INTEGRATION()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetexceptionUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->exceptionUri:Landroid/net/Uri;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetisJDMDevice()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->isJDMDevice:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetisWipsDisabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->isWipsDisabled:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.samsung.android.server.wifi.mobilewips/allowedList"

    .line 64
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->exceptionUri:Landroid/net/Uri;

    .line 65
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->DBG:Z

    .line 68
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->isJDMDevice:Z

    .line 71
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisableMWIPS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->isWipsDisabled:Z

    .line 305
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    .line 74
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addPref(Ljava/util/ArrayList;)Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;"
        }
    .end annotation

    .line 226
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 228
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 229
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-object v0
.end method

.method private finishMobileWipsException()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MobileWIPSExceptionList"

    const-string v1, "MobileWIPSExceptionList:finishMobileWipsException"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private getMobileWIPSException()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "mac_addr"

    const-string v2, "exception_type"

    const-string v3, "ssid_name"

    .line 240
    filled-new-array {p0, v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 p0, 0x0

    .line 243
    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->exceptionUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 245
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 246
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 248
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 249
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 251
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 260
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    :try_start_1
    const-string v1, "MobileWIPSExceptionList"

    const-string v2, "error getMobileWIPSException() can\'t get allowlist"

    .line 257
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 264
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2
    return-object v0

    :goto_3
    if-eqz p0, :cond_3

    .line 260
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_3
    throw v0
.end method

.method private setExceptionListUp()V
    .locals 4

    const-string v0, "MobileWIPSExceptionList"

    .line 200
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->getMobileWIPSException()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWIPSDesc:Landroidx/preference/Preference;

    sget v3, Lcom/android/settings/R$layout;->wips_widget_preference_unclickable_with_exception:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 212
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWIPSDesc:Landroidx/preference/Preference;

    sget v3, Lcom/android/settings/R$string;->wifi_mobile_wips_exception_summary:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 213
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 214
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 215
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->addPref(Ljava/util/ArrayList;)Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    move-result-object v2

    .line 217
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "ExceptionList is empty. Set No exception layout."

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 208
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWIPSDesc:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$layout;->wips_widget_preference_unclickable_no_exception_list:I

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileWIPSException, Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 119
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget p1, Lcom/android/settings/R$xml;->wifi_wips_exception_networks_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "wips_exception_up"

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    const-string p1, "wips_exception_desc"

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWIPSDesc:Landroidx/preference/Preference;

    .line 96
    sget v0, Lcom/android/settings/R$string;->wifi_mobile_wips_exception_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    .line 99
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 107
    new-instance p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 160
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 142
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 170
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

    .line 172
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    const-string p1, "open Exception List"

    .line 175
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 181
    const-class p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 182
    sget p0, Lcom/android/settings/R$string;->wifi_mobile_wips_exception:I

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    const/4 p0, 0x0

    .line 183
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 184
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v2
.end method

.method public onPause()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "MobileWIPSExceptionList"

    const-string v1, "MobileWIPSExceptionList:onPause"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 124
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->finishMobileWipsException()V

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->setExceptionListUp()V

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->exceptionUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerContentObserver, Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MobileWIPSExceptionList"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 137
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 155
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method
