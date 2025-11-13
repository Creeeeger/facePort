.class public Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiApClientSetTimeLimitPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApClientSetTimeLimitPreferenceController"


# instance fields
.field private mConsumedTimeTodayTotal:J

.field private mMacAddress:Ljava/lang/String;

.field private mSeslTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

.field private mSetTimeLimitInMillis:J

.field private mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field private mTimePickerDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;


# direct methods
.method public static synthetic $r8$lambda$Aa9mzGKx9SJcN0f2UorgN1_Ec2Q(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->lambda$showChangeTimeDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YAKQOiqU337UokxCWwtK6jxPkTM(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->lambda$showChangeTimeDialog$0(Landroidx/picker/widget/SeslTimePicker;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmThisPreference(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showChangeTimeDialog$0(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 4

    .line 99
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v0, p3

    int-to-long p2, p2

    const-wide/16 v2, 0x3c

    mul-long/2addr p2, v2

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 100
    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientTodayTotalTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mConsumedTimeTodayTotal:J

    cmp-long p3, p1, v0

    if-gez p3, :cond_0

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    const-string p2, "Limit can\u2019t be less than the amount of time you\u2019ve already used today."

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    invoke-static {p3, p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApClientTimeLimit(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showChangeTimeDialog$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mTimePickerDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method private showChangeTimeDialog()V
    .locals 9

    .line 96
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mSetTimeLimitInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v7, v1, 0x3c

    .line 97
    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mSetTimeLimitInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    long-to-int v6, v0

    .line 98
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mTimePickerDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mTimePickerDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 111
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mTimePickerDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;

    .line 112
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mTimePickerDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 119
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mTimePickerDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    .line 48
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientTimeLimit(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mSetTimeLimitInMillis:J

    .line 49
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientTodayTotalTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mConsumedTimeTodayTotal:J

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "handlePreferenceTreeClick - Triggered"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mSeslTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Dialog is showing, ignore"

    .line 88
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->showChangeTimeDialog()V

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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setMacDetail(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 55
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientTimeLimit(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mSetTimeLimitInMillis:J

    .line 56
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientTodayTotalTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mConsumedTimeTodayTotal:J

    .line 57
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mSetTimeLimitInMillis:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setProgressBarVisibility(Z)V

    .line 59
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mMacAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->isWifiApClientDataPausedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->dw_data_type_1_disabled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setProgressBarColor(I)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->dw_data_type_1:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setProgressBarColor(I)V

    .line 64
    :goto_0
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mConsumedTimeTodayTotal:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mSetTimeLimitInMillis:J

    div-long/2addr v0, v2

    long-to-double v0, v0

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setProgress(I)V

    .line 66
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mSetTimeLimitInMillis:J

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertTimeToMinutes(J)I

    move-result p1

    .line 67
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mConsumedTimeTodayTotal:J

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertTimeToMinutes(J)I

    move-result v0

    .line 68
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertTimeToLocale(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertTimeToLocale(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p1, v0

    .line 70
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertTimeToLocale(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " remaining"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSummary2Text(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSummary2Text(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    sget v0, Lcom/android/settings/R$string;->none:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 76
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setProgressBarVisibility(Z)V

    .line 77
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setProgress(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
