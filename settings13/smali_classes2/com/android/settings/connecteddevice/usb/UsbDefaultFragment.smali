.class public Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "UsbDefaultFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;
    }
.end annotation


# instance fields
.field mCurrentFunctions:J

.field mHandler:Landroid/os/Handler;

.field private mIsConnected:Z

.field mIsStartTethering:Z

.field mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;

.field mPreviousFunctions:J

.field mTetheringManager:Landroid/net/TetheringManager;

.field mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

.field mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

.field private mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$1miThqvc140wUw9J1h76W_YOjq0(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;ZJIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->lambda$new$0(ZJIIZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsStartTethering:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsConnected:Z

    .line 75
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    return-void
.end method

.method private synthetic lambda$new$0(ZJIIZ)V
    .locals 2

    .line 78
    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p4}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDefaultUsbFunctions()J

    move-result-wide p4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbConnectionListener() connected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", functions : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", defaultFunctions : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mIsStartTethering : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsStartTethering:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUsbConfigured : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbDefaultFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsConnected:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x20

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x400

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    :cond_0
    cmp-long v0, p4, p2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsStartTethering:Z

    if-nez v0, :cond_1

    .line 87
    iput-wide p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mCurrentFunctions:J

    .line 88
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->startTethering()V

    .line 91
    :cond_1
    iget-boolean p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsStartTethering:Z

    if-nez p4, :cond_2

    if-eqz p6, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    .line 92
    iput-wide p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mCurrentFunctions:J

    .line 93
    invoke-direct {p0, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->refresh(J)V

    const/4 p2, 0x0

    .line 94
    iput-boolean p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsStartTethering:Z

    .line 96
    :cond_3
    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsConnected:Z

    return-void
.end method

.method private refresh(J)V
    .locals 13

    .line 256
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isUsbTetheringEnabledByMdm(Landroid/content/Context;)Z

    move-result v1

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refresh() current functions : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", TetheringEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsbDefaultFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v2, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 264
    invoke-static {v4, v5}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v6, :cond_0

    .line 266
    iget-object v7, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v7, v4, v5}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v7

    .line 267
    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-wide/16 v8, 0x20

    const/4 v10, 0x0

    if-eqz v7, :cond_4

    const-wide/16 v11, 0x400

    cmp-long v7, p1, v11

    const/4 v11, 0x1

    if-nez v7, :cond_2

    cmp-long v7, v8, v4

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move v11, v10

    .line 270
    :goto_1
    invoke-virtual {v6, v11}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_2
    cmp-long v7, p1, v4

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    move v11, v10

    .line 272
    :goto_2
    invoke-virtual {v6, v11}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    :goto_3
    const-wide/16 v11, 0x4

    cmp-long v7, v4, v11

    if-nez v7, :cond_5

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-string v11, "com.google.android.projection.gearhead"

    invoke-static {v7, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 279
    sget v7, Lcom/android/settings/R$string;->usb_use_file_transfers_android_auto:I

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_5
    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refresh() UsbTethering disabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v6, v10}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private startTethering()V
    .locals 4

    const-string v0, "UsbDefaultFragment"

    const-string/jumbo v1, "startTethering()"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsStartTethering:Z

    .line 223
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mTetheringManager:Landroid/net/TetheringManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;

    invoke-virtual {v1, v0, v2, p0}, Landroid/net/TetheringManager;->startTethering(ILjava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    .line 139
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 138
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-static {v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    .line 144
    iget-object v6, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->supportUSBDebuggingMenu(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v2, "UsbDefaultFragment"

    const-string v3, "Skip Debugging only"

    .line 145
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_1
    iget-object v6, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v6, v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    new-instance v2, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 4

    .line 176
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDefaultUsbFunctions()J

    move-result-wide v0

    const-wide/32 v2, 0x400004

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x4

    .line 182
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultKey : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "UsbDefaultFragment"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x400

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    const-wide/16 v0, 0x20

    .line 186
    :cond_1
    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x520

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 131
    sget p0, Lcom/android/settings/R$xml;->usb_default_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 102
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 103
    const-class v0, Landroid/net/TetheringManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mTetheringManager:Landroid/net/TetheringManager;

    .line 104
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mHandler:Landroid/os/Handler;

    .line 107
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 108
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDefaultUsbFunctions()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mCurrentFunctions:J

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 116
    new-instance p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;)V

    .line 117
    sget p2, Lcom/android/settings/R$string;->usb_default_info:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 118
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 229
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 230
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mCurrentFunctions:J

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPause() : current functions : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mCurrentFunctions:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbDefaultFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-wide v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mCurrentFunctions:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDefaultUsbFunctions(J)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 6

    .line 192
    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultKey start : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UsbDefaultFragment"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mPreviousFunctions:J

    .line 197
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_3

    const-wide/16 v4, 0x20

    cmp-long p1, v0, v4

    if-eqz p1, :cond_2

    const-wide/16 v4, 0x400

    cmp-long p1, v0, v4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 204
    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsStartTethering:Z

    .line 205
    iput-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mCurrentFunctions:J

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefault function : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x4

    cmp-long p1, v0, v4

    if-nez p1, :cond_1

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "enable_mtp_settings"

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    :cond_1
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDefaultUsbFunctions(J)V

    goto :goto_1

    .line 201
    :cond_2
    :goto_0
    iput-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mCurrentFunctions:J

    .line 202
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->startTethering()V

    :cond_3
    :goto_1
    return v3
.end method
