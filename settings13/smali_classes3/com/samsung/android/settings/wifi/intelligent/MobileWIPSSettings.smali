.class public Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MobileWIPSSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;
    }
.end annotation


# static fields
.field private static DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field private static final detectionUri:Landroid/net/Uri;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mHistoryListUpside:Landroidx/preference/PreferenceCategory;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNewItemID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSAScreenId:Ljava/lang/String;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mWIPSDesc:Landroidx/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWipsObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinishMobileWipsSettings(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->finishMobileWipsSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHistoryListUp(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setHistoryListUp()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.server.wifi.mobilewips/detection"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->detectionUri:Landroid/net/Uri;

    .line 76
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->DBG:Z

    .line 445
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "WIFI_205"

    .line 77
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSAScreenId:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWipsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private addPref(Ljava/util/ArrayList;)Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 349
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

    .line 350
    :goto_0
    new-instance v6, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7, v1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;Landroid/content/Context;Z)V

    .line 353
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 355
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x4

    .line 358
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 359
    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    :try_start_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyMMddHHmmss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 362
    invoke-static {}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->isYMDFormat()Z

    move-result v7

    if-nez v7, :cond_1

    .line 363
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "dd/MM/yyyy"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 365
    :cond_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy/MM/dd"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v7, 0xc8

    const-string v8, ", "

    if-lt v2, v7, :cond_2

    .line 368
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->wifi_mobile_wips_added_to_exception:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/16 v7, 0x64

    if-lt v2, v7, :cond_3

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->wifi_mobile_wips_disconnected:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    :cond_3
    :goto_2
    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    :catch_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    .line 377
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mNewItemID:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_4
    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-object v6
.end method

.method private deleteBadge(Ljava/lang/String;)V
    .locals 5

    .line 299
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 301
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 302
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "history_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 307
    :try_start_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "seen_time"

    .line 308
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 309
    sget-object v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->detectionUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error getMobileWIPSDetection() can\'t get detectionlist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileWIPSSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private finishMobileWipsSettings()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MobileWIPSSettings"

    const-string v1, "MobileWIPSSettings:finishMobileWipsSettings"

    .line 317
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static getDateFormatOrder()[C
    .locals 2

    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyyMMMdd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormatOrder(Ljava/lang/String;)[C
    .locals 13

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v2, v1, :cond_c

    .line 127
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x4c

    const/16 v9, 0x79

    const/16 v10, 0x4d

    const/16 v11, 0x64

    const/4 v12, 0x1

    if-eq v7, v11, :cond_7

    if-eq v7, v8, :cond_7

    if-eq v7, v10, :cond_7

    if-ne v7, v9, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v8, 0x47

    if-ne v7, v8, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v8, 0x61

    if-lt v7, v8, :cond_2

    const/16 v8, 0x7a

    if-le v7, v8, :cond_3

    :cond_2
    const/16 v8, 0x41

    if-lt v7, v8, :cond_4

    const/16 v8, 0x5a

    if-le v7, v8, :cond_3

    goto :goto_1

    .line 142
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad pattern character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    const/16 v8, 0x27

    if-ne v7, v8, :cond_b

    add-int/lit8 v7, v1, -0x1

    if-ge v2, v7, :cond_5

    add-int/lit8 v7, v2, 0x1

    .line 145
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_5

    move v2, v7

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 148
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 150
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad quoting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    if-ne v7, v11, :cond_8

    if-nez v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 130
    aput-char v11, v0, v3

    move v3, v4

    move v4, v12

    goto :goto_3

    :cond_8
    if-eq v7, v8, :cond_9

    if-ne v7, v10, :cond_a

    :cond_9
    if-nez v5, :cond_a

    add-int/lit8 v5, v3, 0x1

    .line 133
    aput-char v10, v0, v3

    move v3, v5

    move v5, v12

    goto :goto_3

    :cond_a
    if-ne v7, v9, :cond_b

    if-nez v6, :cond_b

    add-int/lit8 v6, v3, 0x1

    .line 136
    aput-char v9, v0, v3

    move v3, v6

    move v6, v12

    :cond_b
    :goto_3
    add-int/2addr v2, v12

    goto/16 :goto_0

    :cond_c
    return-object v0
.end method

.method private getMobileWIPSDetection()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "MobileWIPSSettings"

    .line 385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 386
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "history_id"

    const-string v3, "ssid_name"

    const-string v4, "time_stamp"

    const-string v5, "seen_time"

    const-string v6, "attack_type"

    .line 388
    filled-new-array {p0, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x0

    .line 391
    :try_start_0
    sget-object v3, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->detectionUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 393
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 394
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 395
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 396
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    .line 397
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    .line 398
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    .line 399
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    .line 400
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 402
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    const-string v3, "MobileWips don\'t have detection history"

    .line 405
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-eqz v2, :cond_2

    .line 411
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v2, p0

    .line 408
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
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_1

    .line 414
    :cond_2
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-object p0

    :cond_3
    return-object v1

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v2, :cond_4

    .line 411
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_4
    throw p0
.end method

.method public static isYMDFormat()Z
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->getDateFormatOrder()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "YMD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setHistoryListUp()V
    .locals 5

    const-string v0, "MobileWIPSSettings"

    .line 323
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mHistoryListUpside:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 327
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->getMobileWIPSDetection()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWIPSDesc:Landroidx/preference/Preference;

    sget v4, Lcom/android/settings/R$layout;->wips_widget_preference_unclickable_with_history:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v3, 0x1

    .line 334
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setMobileWipsDescriptionTitle(Z)V

    .line 335
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 337
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->addPref(Ljava/util/ArrayList;)Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$MWIPSHistoryPreference;

    move-result-object v3

    .line 339
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mHistoryListUpside:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "History is empty. Set No history layout."

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mHistoryListUpside:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDetectionLIST, Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private setMobileWipsDescriptionTitle(Z)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWIPSDesc:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_mobile_wips_detail:I

    .line 290
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_mobile_wips_with_securewifi:I

    .line 291
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "wips_desc"

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWIPSDesc:Landroidx/preference/Preference;

    const/4 p1, 0x0

    .line 294
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setMobileWipsDescriptionTitle(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 191
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 192
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 194
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBackKey()V
    .locals 2

    const-string v0, "MobileWIPSSettings"

    const-string v1, "MobileWIPSSettings:onBackKey"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V

    .line 273
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 161
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    .line 163
    sget p1, Lcom/android/settings/R$xml;->wifi_wips_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "wips_history_up"

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mHistoryListUpside:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setMobileWipsDescriptionTitle(Z)V

    .line 167
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mNewItemID:Ljava/util/ArrayList;

    .line 169
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V

    .line 179
    new-instance p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$3;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$3;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 255
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mNewItemID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->deleteBadge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "MobileWIPSSettings"

    const-string v1, "MobileWIPSSettings:onDestroyView"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 234
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setMobileWipsSwitch()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 240
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "MobileWIPSSettings"

    const-string v1, "MobileWIPSSettings:onPause"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWipsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 199
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->finishMobileWipsSettings()V

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setHistoryListUp()V

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->detectionUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerContentObserver, Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileWIPSSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_mwips"

    .line 208
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mWipsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    const-string v4, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setMobileWipsSwitch()V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 218
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    const-string p0, "WIFI_205"

    .line 219
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 250
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MobileWIPSSettings:onSwitchChanged -> isChecked = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileWIPSSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const-string v1, "wifi_mwips"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_1

    const-wide/16 p1, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    :goto_1
    const-string v0, "WIFI_205"

    const-string v1, "1343"

    .line 227
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 229
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    return-void
.end method

.method public setMobileWipsSwitch()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_mwips"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileWIPSSettings:setMobileWipsSwitch -> isEnabled = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MobileWIPSSettings"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 283
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_2

    .line 281
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :goto_2
    return-void
.end method
