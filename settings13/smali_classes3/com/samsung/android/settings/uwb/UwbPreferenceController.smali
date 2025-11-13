.class public Lcom/samsung/android/settings/uwb/UwbPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "UwbPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final AIRPLANE_SETTING_VALUE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UwbPreferenceController"

.field private static final UWB_SETTING_DEFAULT_VALUE:I = 0x0

.field private static final UWB_SETTING_VALUE_OFF:I = 0x0

.field private static final UWB_SETTING_VALUE_ON:I = 0x1


# instance fields
.field private mAdapterStateCallback:Landroid/uwb/UwbManager$AdapterStateCallback;

.field private final mAirplaneModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mAirplaneModeOn:Z

.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mRestrictModeOn:Z

.field private mUwbAdapter:Lsamsung/uwb/UwbAdapter;

.field private mUwbManager:Landroid/uwb/UwbManager;


# direct methods
.method public static synthetic $r8$lambda$CXjJsIZEY5bhrP0uUJVlVd6Ylk0(Lcom/samsung/android/settings/uwb/UwbPreferenceController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->lambda$new$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$WMxpjtFiyaKGikXcimUTsbSga-M(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->lambda$setChecked$1(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAirplaneModeOn(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUwbManager(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)Landroid/uwb/UwbManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAirplaneModeOn(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mRestrictModeOn:Z

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 58
    const-class v0, Landroid/uwb/UwbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/UwbManager;

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lsamsung/uwb/UwbAdapter;->getUwbAdapter(Landroid/content/Context;)Lsamsung/uwb/UwbAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbAdapter:Lsamsung/uwb/UwbAdapter;

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAdapterStateCallback:Landroid/uwb/UwbManager$AdapterStateCallback;

    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UWB framework is not ready. manager is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " adapter is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbAdapter:Lsamsung/uwb/UwbAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UwbPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    move p2, v0

    :cond_3
    iput-boolean p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeOn:Z

    .line 73
    new-instance p1, Lcom/samsung/android/settings/uwb/UwbPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController$1;-><init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initialize()V
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {v0}, Landroid/uwb/UwbManager;->isUwbEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->getUwbSettingDb()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 173
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeOn:Z

    if-nez v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 177
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->setUwbSettingDb(Z)V

    :cond_2
    move v1, v0

    .line 180
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initialize : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UwbPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static insertUwbSettingLogging(Z)V
    .locals 2

    const/16 v0, 0xbbd

    const/16 v1, 0xe56

    .line 241
    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method

.method private isRestrictedMode()Z
    .locals 3

    .line 224
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbAdapter:Lsamsung/uwb/UwbAdapter;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lsamsung/uwb/UwbAdapter;->checkRestrict()I

    move-result p0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restrict : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UwbPreferenceController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, p0, 0x2

    if-nez v1, :cond_2

    and-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_2

    and-int/lit8 v1, p0, 0x8

    if-nez v1, :cond_2

    and-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_2

    and-int/lit8 v1, p0, 0x20

    if-nez v1, :cond_2

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0(II)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isRestrictedMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mRestrictModeOn:Z

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Get adapter state callback. mRestrictModeOn : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mRestrictModeOn:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UwbPreferenceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->updateView()V

    return-void
.end method

.method private synthetic lambda$setChecked$1(Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->setUwbEnabled(Z)V

    return-void
.end method

.method private setUwbEnabled(Z)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Landroid/uwb/UwbManager;->setUwbEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** UWB State changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    invoke-virtual {p0}, Landroid/uwb/UwbManager;->isUwbEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UwbPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {p1}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->insertUwbSettingLogging(Z)V

    :cond_0
    return-void
.end method

.method private setUwbSettingDb(Z)V
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUwbSettingDb : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UwbPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "uwb_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateView()V
    .locals 4

    const-string v0, "UwbPreferenceController"

    const-string v1, "updateView"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "airplane : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " restriction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mRestrictModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController$2;-><init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v3, v2

    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeOn:Z

    if-nez v3, :cond_3

    .line 200
    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mRestrictModeOn:Z

    if-nez v0, :cond_3

    .line 201
    new-instance v0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController$3;-><init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->initialize()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeOn:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    return v1

    .line 90
    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mRestrictModeOn:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
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

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUwbSettingDb()Z
    .locals 3

    .line 250
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "uwb_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUwbSettingDb : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UwbPreferenceController"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
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

.method public isChecked()Z
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->getUwbSettingDb()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method isUwbSupportedOnDevice()Z
    .locals 2

    .line 256
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XXV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "UwbPreferenceController"

    const-string v0, "not support uwb for XXV"

    .line 257
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.uwb"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "UwbPreferenceController"

    const-string v1, "onStart"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAdapterStateCallback:Landroid/uwb/UwbManager$AdapterStateCallback;

    invoke-virtual {v0, v1, v2}, Landroid/uwb/UwbManager;->registerAdapterStateCallback(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdapterStateCallback;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "UwbPreferenceController"

    const-string v1, "onStop"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAdapterStateCallback:Landroid/uwb/UwbManager$AdapterStateCallback;

    invoke-virtual {v0, v1}, Landroid/uwb/UwbManager;->unregisterAdapterStateCallback(Landroid/uwb/UwbManager$AdapterStateCallback;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 145
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UwbPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Z)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeOn:Z

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState - airplane : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeOn:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " restriction : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mRestrictModeOn:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UwbPreferenceController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAirplaneModeOn:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mRestrictModeOn:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->getUwbSettingDb()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 163
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 165
    :cond_3
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 159
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 160
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
