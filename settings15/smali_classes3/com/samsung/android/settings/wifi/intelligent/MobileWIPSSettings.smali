.class public Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final detectionUri:Landroid/net/Uri;


# instance fields
.field public mContentObserver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;

.field public mContext:Landroid/content/Context;

.field public mHistoryListUpside:Landroidx/preference/PreferenceCategory;

.field public mIntentFilter:Landroid/content/IntentFilter;

.field public mNewItemID:Ljava/util/ArrayList;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$1;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mWIPSDesc:Landroidx/preference/Preference;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWipsObserver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.server.wifi.mobilewips/detection"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->detectionUri:Landroid/net/Uri;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$4;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mReceiver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWipsObserver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;

    return-void
.end method

.method public static isYMDFormat()Z
    .locals 15

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyyMMMdd"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [C

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v4, v3, :cond_c

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x1

    const/16 v11, 0x4c

    const/16 v12, 0x79

    const/16 v13, 0x4d

    const/16 v14, 0x64

    if-eq v9, v14, :cond_7

    if-eq v9, v11, :cond_7

    if-eq v9, v13, :cond_7

    if-ne v9, v12, :cond_0

    goto :goto_2

    :cond_0
    const/16 v11, 0x47

    if-ne v9, v11, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v11, 0x61

    if-lt v9, v11, :cond_2

    const/16 v11, 0x7a

    if-le v9, v11, :cond_3

    :cond_2
    const/16 v11, 0x41

    if-lt v9, v11, :cond_4

    const/16 v11, 0x5a

    if-le v9, v11, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad pattern character \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    const/16 v11, 0x27

    if-ne v9, v11, :cond_b

    add-int/lit8 v9, v3, -0x1

    if-ge v4, v9, :cond_5

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v11, :cond_5

    move v4, v9

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad quoting in "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    if-ne v9, v14, :cond_8

    if-nez v6, :cond_8

    add-int/lit8 v6, v5, 0x1

    aput-char v14, v2, v5

    move v5, v6

    move v6, v10

    goto :goto_3

    :cond_8
    if-eq v9, v11, :cond_9

    if-ne v9, v13, :cond_a

    :cond_9
    if-nez v7, :cond_a

    add-int/lit8 v7, v5, 0x1

    aput-char v13, v2, v5

    move v5, v7

    move v7, v10

    goto :goto_3

    :cond_a
    if-ne v9, v12, :cond_b

    if-nez v8, :cond_b

    add-int/lit8 v8, v5, 0x1

    aput-char v12, v2, v5

    move v5, v8

    move v8, v10

    :cond_b
    :goto_3
    add-int/2addr v4, v10

    goto/16 :goto_0

    :cond_c
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    const-string v1, "YMD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final addPref(Ljava/util/ArrayList;)Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;
    .locals 9

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    new-instance v6, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d094c

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-boolean v1, v6, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;->newbadge:Z

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :try_start_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyMMddHHmmss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->isYMDFormat()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "dd/MM/yyyy"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy/MM/dd"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v7, 0xc8

    const-string v8, ", "

    if-lt v2, v7, :cond_2

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f1435ca

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/16 v7, 0x64

    if-lt v2, v7, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f1435d0

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mNewItemID:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-object v6
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method public final getMobileWIPSDetection()Ljava/util/ArrayList;
    .locals 8

    const-string v0, "MobileWIPSSettings"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo p0, "seen_time"

    const-string v3, "attack_type"

    const-string v4, "history_id"

    const-string/jumbo v5, "ssid_name"

    const-string/jumbo v6, "time_stamp"

    filled-new-array {v4, v5, v6, p0, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x0

    :try_start_0
    sget-object v3, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->detectionUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    const-string v3, "MobileWips don\'t have detection history"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v2, :cond_2

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v2, p0

    :goto_2
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error getMobileWIPSDetection() can\'t get detectionlist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-object p0

    :cond_3
    return-object v1

    :goto_4
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p1, "MobileWIPSSettings:onCheckedChanged -> isChecked = "

    const-string v0, "MobileWIPSSettings"

    invoke-static {p1, v0, p2}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const-string/jumbo v1, "wifi_mwips"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_1

    const-wide/16 p1, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    :goto_1
    const-string v0, "WIFI_205"

    const-string v1, "1343"

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    const p1, 0x7f1702a4

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "wips_history_up"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mHistoryListUpside:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setMobileWipsDescriptionTitle(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mNewItemID:Ljava/util/ArrayList;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;Landroid/os/Handler;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContentObserver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;

    return-void
.end method

.method public final onDestroyView()V
    .locals 9

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mNewItemID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "MobileWIPSSettings"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyMMddHHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "history_id=?"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "seen_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v4, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->detectionUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7, v6, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error getMobileWIPSDetection() can\'t get detectionlist"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "MobileWIPSSettings:onDestroyView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setMobileWipsSwitch()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "MobileWIPSSettings"

    const-string v1, "MobileWIPSSettings:onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWipsObserver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContentObserver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mReceiver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$1;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 10

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "MobileWIPSSettings"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MobileWIPSSettings:finishMobileWipsSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setHistoryListUp()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->detectionUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContentObserver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerContentObserver, Exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_mwips"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWipsObserver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mReceiver:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$1;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v9, 0x2

    const-string v7, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setMobileWipsSwitch()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    const-string p0, "WIFI_205"

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public final setHistoryListUp()V
    .locals 5

    const-string v0, "MobileWIPSSettings"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mHistoryListUpside:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->getMobileWIPSDetection()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWIPSDesc:Landroidx/preference/Preference;

    const v4, 0x7f0d0c2c

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setMobileWipsDescriptionTitle(Z)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->addPref(Ljava/util/ArrayList;)Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mHistoryListUpside:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v1, "History is empty. Set No history layout."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mHistoryListUpside:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDetectionLIST, Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public final setMobileWipsDescriptionTitle(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWIPSDesc:Landroidx/preference/Preference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f1435cb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.fast"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v1, "android"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f1435d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWIPSDesc:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string/jumbo p1, "wips_desc"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWIPSDesc:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setMobileWipsDescriptionTitle(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setMobileWipsSwitch()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_mwips"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "MobileWIPSSettings:setMobileWipsSwitch -> isEnabled = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MobileWIPSSettings"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :goto_2
    return-void
.end method
