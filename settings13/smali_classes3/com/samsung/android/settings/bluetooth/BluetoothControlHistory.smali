.class public final Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "BluetoothControlHistory.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;
    }
.end annotation


# static fields
.field private static CLAUSE_ONLY_3RD_PARTY_APP:Ljava/lang/String;

.field private static final DBG:Z


# instance fields
.field private mApplicationCategory:Landroidx/preference/PreferenceGroup;

.field private mDateFormat:Ljava/text/DateFormat;

.field private mDescription:Landroidx/preference/Preference;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mScreenId:Ljava/lang/String;

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->DBG:Z

    const-string v0, "caller_name!= \'com.android.bluetooth\' AND caller_name!= \'com.android.nfc\' AND caller_name!= \'com.android.settings\' AND caller_name!= \'com.android.systemui\' AND caller_name!= \'com.samsung.android.easysetup\' AND caller_name!= \'com.samsung.android.oneconnect\' AND caller_name!= \'com.sec.android.easysettings\' AND caller_name!= \'com.sec.android.emergencymode.service\' AND caller_name!= \'com.samsung.android.bixby.agent\'"

    .line 76
    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->CLAUSE_ONLY_3RD_PARTY_APP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method

.method private addApplicationPreferences()V
    .locals 11

    const-string v0, "addApplicationPreferences :: will be cursor close"

    const-string v1, "BluetoothControlHistory"

    .line 204
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 205
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mDescription:Landroidx/preference/Preference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string v2, "content://com.samsung.bt.btservice/btservice"

    .line 206
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v2, 0x0

    .line 210
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->CLAUSE_ONLY_3RD_PARTY_APP:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "timestamp DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "addApplicationPreferences :: query return null"

    .line 213
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 244
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 217
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addApplicationPreferences :: cursor count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Columns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "caller_name"

    .line 221
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "last_event"

    .line 222
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "timestamp"

    .line 223
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 225
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    .line 226
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 228
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 229
    new-instance v10, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;

    invoke-direct {v10, v6, v7, v8, v9}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;-><init>(Ljava/lang/String;IJ)V

    .line 231
    invoke-direct {p0, v10}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->createApplicationPreference(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;)Landroidx/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 233
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 235
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addApplicationPreferences :: Can\'t get Application Information about : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    :try_start_2
    const-string v3, "addApplicationPreferences :: Occurs IllegalStateException"

    .line 241
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 244
    :cond_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ltz v0, :cond_7

    const/16 v1, 0xa

    if-gt v0, v1, :cond_5

    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x14

    if-gt v0, v1, :cond_6

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->detail_bluetooth_bcac_count_10_to_20:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 257
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->detail_bluetooth_bcac_count_more_20:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->event_bluetooth_bcac:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-static {v2, v3, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-nez v0, :cond_8

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->addNoApplicationsPreference()V

    :cond_8
    return-void

    :goto_3
    if-eqz v2, :cond_9

    .line 244
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_9
    throw p0
.end method

.method private addNoApplicationsPreference()V
    .locals 2

    const-string v0, "BluetoothControlHistory"

    const-string v1, "addNoApplicationsPreference :: Does not found Bluetooth control application"

    .line 308
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->createNoItemPreference()Landroidx/preference/Preference;

    move-result-object v0

    .line 312
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private createApplicationPreference(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;)Landroidx/preference/Preference;
    .locals 5

    .line 270
    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->DBG:Z

    const-string v1, "BluetoothControlHistory"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createApplicationPreference :: package name is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 279
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getLastEvent()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getLastEventTime()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getBtControlHistory(IJ)Ljava/lang/String;

    move-result-object v2

    .line 281
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    .line 283
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_1
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 291
    sget p0, Lcom/android/settings/R$layout;->sec_preference_bluetooth_control_app:I

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 292
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-object v1

    .line 286
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createApplicationPreference :: Occurs NameNotFoundException about "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getBtControlHistory(IJ)Ljava/lang/String;
    .locals 3

    .line 324
    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->DBG:Z

    const-string v1, "BluetoothControlHistory"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBtControlSummary :: event = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Timestamp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mDateFormat:Ljava/text/DateFormat;

    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTimeFormat:Ljava/text/DateFormat;

    .line 331
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 332
    invoke-virtual {v0, p2, p3}, Ljava/util/Date;->setTime(J)V

    .line 333
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " \u200e "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const-string p0, "getBtControlSummary :: Does not have on/off history"

    .line 343
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_bluetooth_control_app_enable_summary:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, p3

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_bluetooth_control_app_disable_summary:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, p3

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private refreshApplicationPreferences()V
    .locals 2

    const-string v0, "BluetoothControlHistory"

    const-string v1, "refreshApplicationPreferences :: "

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mDescription:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->addApplicationPreferences()V

    return-void
.end method


# virtual methods
.method createNoItemPreference()Landroidx/preference/Preference;
    .locals 1

    .line 316
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 317
    sget p0, Lcom/android/settings/R$layout;->sec_preference_bluetooth_list_no_item:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p0, "idle"

    .line 318
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 319
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothStateChanged :: Bluetooth State change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", it will update list"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothControlHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->refreshApplicationPreferences()V

    :cond_1
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sget p1, Lcom/android/settings/R$xml;->sec_bluetooth_control_history:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    .line 115
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string p1, "applications_list"

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x3

    .line 118
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const-string p1, "description"

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mDescription:Landroidx/preference/Preference;

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 126
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->screen_control_history:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 177
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    const-string p0, "BluetoothControlHistory"

    const-string v0, "onDestroyView::"

    .line 178
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreenId:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_control_history_navigate_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 183
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceTreeClick :: Launch Application info about"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothControlHistory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreenId:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_control_history_app_list:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    .line 192
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x18

    .line 195
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 196
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->application_info_label:I

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mResolver:Landroid/content/ContentResolver;

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->refreshApplicationPreferences()V

    .line 163
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "BluetoothControlHistory"

    const-string v0, "onCreate() :: mLocalManager is null"

    .line 153
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method
