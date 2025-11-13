.class public Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiControlPackagePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final AUTO_WIFI_PACKAGE_NAME:Ljava/lang/String; = "samsung.wifi.autowifi"

.field private static final DBG:Z

.field private static final LAST_CONTROL:Ljava/lang/String; = "last_control"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final TAG:Ljava/lang/String; = "WifiControlHistory"

.field private static final TIME_STAMP:Ljava/lang/String; = "time_stamp"

.field private static selectionArgs:Ljava/lang/String;


# instance fields
.field private mPreferenceGroup:Landroidx/preference/PreferenceCategory;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mScreenId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->DBG:Z

    const-string v0, "package_name!= \'system\' AND package_name!= \'android\' AND package_name!= \'com.android.systemui\' AND package_name!= \'com.sec.android.dexsystemui\' AND package_name!= \'com.android.settings\' AND package_name!= \'com.sec.android.app.SecSetupWizard\' AND package_name!= \'com.android.server.wifi.p2p\'"

    .line 72
    sput-object v0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->selectionArgs:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "WIFI_250"

    .line 80
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method private getPreferenceByHistory(Ljava/lang/String;IJ)Landroidx/preference/Preference;
    .locals 7

    .line 169
    new-instance v6, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 171
    new-instance p2, Landroid/view/ContextThemeWrapper;

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/settings/R$style;->PreferenceThemeOverlay:I

    invoke-direct {p2, p3, p4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 172
    new-instance p3, Landroidx/preference/Preference;

    invoke-direct {p3, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 173
    sget p2, Lcom/android/settings/R$layout;->sec_preference_wifi_control:I

    invoke-virtual {p3, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 174
    invoke-virtual {p3, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {p3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object p3
.end method

.method private setEmptyMessage()V
    .locals 3

    .line 184
    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/WifiHistoryNoItemsPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/advanced/WifiHistoryNoItemsPreference;-><init>(Landroid/content/Context;)V

    .line 185
    sget v1, Lcom/android/settings/R$string;->wifi_control_history_no:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 187
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 188
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 189
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    return-void
.end method

.method private updateHistory()V
    .locals 10

    const-string v0, "WifiControlHistory"

    .line 131
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const-string v1, "content://com.samsung.server.wifi/control"

    .line 133
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->selectionArgs:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "time_stamp DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    :try_start_1
    const-string v2, "updateHistory, cursor is null"

    .line 137
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->setEmptyMessage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 159
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    .line 142
    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHistory, cursor count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", columns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "package_name"

    .line 146
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "last_control"

    .line 147
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "time_stamp"

    .line 148
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 150
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 151
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 153
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 155
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->getPreferenceByHistory(Ljava/lang/String;IJ)Landroidx/preference/Preference;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 156
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 158
    :cond_2
    sget-boolean v2, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "updateHistory, close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    :cond_3
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 135
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    const-string v1, "updateHistory, IllegalStateException"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->setEmptyMessage()V

    :cond_5
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "samsung.wifi.autowifi"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x152

    if-eqz v0, :cond_1

    .line 111
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->wifi_intelligent_wifi_header:I

    .line 112
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;

    .line 113
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 114
    invoke-virtual {p0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "package"

    .line 118
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->application_info_label:I

    .line 120
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/android/settings/wifi/ChangeWifiStateDetails;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    const-string p0, "WIFI_250"

    const-string p1, "1252"

    .line 126
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public onResume()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->mResolver:Landroid/content/ContentResolver;

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->updateHistory()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
