.class public final Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "BluetoothScanActivity.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mApplicationCategory:Landroidx/preference/PreferenceGroup;

.field private mDescription:Landroidx/preference/Preference;

.field private mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mScanServerityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    return-void
.end method

.method private addApplicationPreferences()V
    .locals 5

    .line 213
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mDescription:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getCurrentScanStats()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "BluetoothScanActivity"

    if-eqz v0, :cond_3

    .line 224
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->addToList(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const-string v0, "Added to list!! now creating pref"

    .line 230
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 232
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;

    .line 233
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->createApplicationPreference(Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 235
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_2
    const-string v3, "addApplicationPreferences :: Can\'t get Application Information about : "

    .line 237
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addApplicationPreferences :: listAppCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_6

    const/16 v1, 0xa

    if-gt v0, v1, :cond_4

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/16 v1, 0x14

    if-gt v0, v1, :cond_5

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->detail_bluetooth_bcac_count_10_to_20:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 252
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->detail_bluetooth_bcac_count_more_20:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->event_bluetooth_bsac:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-static {v2, v3, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-nez v0, :cond_7

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->addNoApplicationsPreference()V

    :cond_7
    return-void
.end method

.method private addNoApplicationsPreference()V
    .locals 2

    const-string v0, "BluetoothScanActivity"

    const-string v1, "addNoApplicationsPreference :: Does not found Bluetooth scan application"

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->createNoItemPreference()Landroidx/preference/Preference;

    move-result-object v0

    .line 320
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private createApplicationPreference(Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;)Landroidx/preference/Preference;
    .locals 5

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createApplicationPreference :: package name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothScanActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 274
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->getSeverity()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_bluetooth_scan_low_usage:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->getSeverity()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_bluetooth_scan_mid_usage:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->getSeverity()Ljava/lang/String;

    move-result-object v2

    const-string v3, "High"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_bluetooth_scan_high_usage:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const-string v2, ""

    .line 281
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    .line 283
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :cond_3
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 291
    sget p0, Lcom/android/settings/R$layout;->sec_preference_bluetooth_control_app:I

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 292
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->getPackageName()Ljava/lang/String;

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

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private refreshApplicationPreferences()V
    .locals 2

    const-string v0, "BluetoothScanActivity"

    const-string v1, "refreshApplicationPreferences :: "

    .line 309
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mDescription:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->addApplicationPreferences()V

    return-void
.end method


# virtual methods
.method public addToList(Lorg/json/JSONArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 191
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 192
    new-instance v3, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;

    aget-object v4, v2, v0

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-direct {v3, v4, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding to severity list:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "BluetoothScanActivity"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x2

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "High"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move v4, v8

    goto :goto_1

    :sswitch_1
    const-string v7, "Mid"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_1

    :sswitch_2
    const-string v7, "Low"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    packed-switch v4, :pswitch_data_0

    const-string v2, "addToList: Ignore none severity"

    .line 206
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 203
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 200
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 197
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x12b34 -> :sswitch_2
        0x12e28 -> :sswitch_1
        0x2251c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method createNoItemPreference()Landroidx/preference/Preference;
    .locals 1

    .line 301
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 302
    sget p0, Lcom/android/settings/R$layout;->sec_preference_bluetooth_list_no_item:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p0, "idle"

    .line 303
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 304
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

    .line 139
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    sget p1, Lcom/android/settings/R$xml;->sec_bluetooth_scan_activity:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mResolver:Landroid/content/ContentResolver;

    .line 114
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_scan_history_description:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "applications_list"

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x3

    .line 123
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const-string v0, "description"

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mDescription:Landroidx/preference/Preference;

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mDescription:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->screen_scan_activity:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    const-string p0, "BluetoothScanActivity"

    const-string v0, "onDestroyView::"

    .line 163
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

.method public onPause()V
    .locals 0

    .line 157
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 168
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceTreeClick :: Launch Application info about"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothScanActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScreenId:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_scan_activity_app_list:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    .line 177
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x18

    .line 180
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 181
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->application_info_label:I

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 144
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->refreshApplicationPreferences()V

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method
