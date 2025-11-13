.class public Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInit:Z

.field private mNearbyScanningObserver:Landroid/database/ContentObserver;

.field private mNearbyScanningSettingsSwitch:Landroidx/preference/SwitchPreferenceCompat;

.field private mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mOnMainSwitchChangeListener:Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

.field private mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNearbyScanningSettingsSwitch(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNearbyScanningSwitchBar(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendSALogging(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroidx/preference/SwitchPreferenceCompat;

    .line 41
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    .line 48
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    .line 62
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnMainSwitchChangeListener:Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

    .line 91
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 129
    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    .line 130
    instance-of p1, p2, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_0

    .line 131
    check-cast p2, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroidx/preference/SwitchPreferenceCompat;

    goto :goto_0

    .line 132
    :cond_0
    instance-of p1, p2, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_1

    .line 133
    check-cast p2, Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    :cond_1
    :goto_0
    return-void
.end method

.method private sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 242
    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNearbyScanningSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method public init()Z
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nsValue value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyScanningEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 145
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 146
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    iput-boolean v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    .line 149
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnMainSwitchChangeListener:Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 151
    iput-boolean v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    :cond_1
    :goto_0
    const-string v0, "Switch is null"

    .line 154
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-boolean p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    return p0
.end method

.method public onDestroyView()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnMainSwitchChangeListener:Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 234
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()Z
    .locals 3

    .line 209
    iget-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    const/4 v1, 0x0

    const-string v2, "NearbyScanningEnabler"

    if-nez v0, :cond_0

    const-string p0, "Init is failed"

    .line 210
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string p0, "Context is null"

    .line 214
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 217
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "ContentResolver is null"

    .line 219
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 223
    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()Z
    .locals 6

    .line 166
    iget-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    const-string v1, "NearbyScanningEnabler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Init is failed"

    .line 167
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string p0, "Context is null"

    .line 172
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 176
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "ContentResolver is null"

    .line 179
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v3, 0x1

    :try_start_0
    const-string v4, "nearby_scanning_enabled"

    .line 185
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    .line 184
    invoke-virtual {v0, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    .line 193
    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v4, :cond_4

    if-ne v0, v3, :cond_3

    move v2, v3

    .line 194
    :cond_3
    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return v3

    .line 196
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_6

    if-ne v0, v3, :cond_5

    move v2, v3

    .line 197
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return v3

    :cond_6
    const-string p0, "Switch is null"

    .line 200
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
