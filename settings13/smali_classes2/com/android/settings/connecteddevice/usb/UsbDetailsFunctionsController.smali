.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsFunctionsController.java"

# interfaces
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final FUNCTIONS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

.field mPreviousFunction:J

.field private mProfilesContainer:Landroidx/preference/PreferenceCategory;

.field private mTetheringManager:Landroid/net/TetheringManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UsbDetailsCtrlFunction"

    const/4 v1, 0x3

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->DEBUG:Z

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x4

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_file_transfers:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VPP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x20

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_tethering:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/32 v1, 0x80000

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_system_update:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-wide/16 v1, 0x8

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_MIDI:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x10

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_photo_transfers:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v1, 0x40000

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_charging_only:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_debugging_only:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 93
    const-class p2, Landroid/net/TetheringManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/TetheringManager;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mTetheringManager:Landroid/net/TetheringManager;

    .line 94
    new-instance p2, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    .line 95
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    .line 96
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getProfilePreference(Ljava/lang/String;I)Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 p1, 0x0

    .line 116
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 117
    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setOnClickListener(Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V

    .line 118
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-object v0
.end method

.method private isAccessoryMode(J)Z
    .locals 2

    const-wide/16 v0, 0x2

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isClickEventIgnored(JJ)Z
    .locals 0

    .line 256
    invoke-direct {p0, p3, p4}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->isAccessoryMode(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p3, 0x4

    cmp-long p0, p1, p3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    .line 101
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    .line 103
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDefaultUsbFunctions()J

    move-result-wide v2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->refresh(ZJII)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "usb_details_functions"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 265
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 8

    .line 196
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    .line 197
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v2

    .line 198
    sget-boolean v4, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->DEBUG:Z

    const-string v5, "UsbDetailsCtrlFunction"

    if-eqz v4, :cond_0

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRadioButtonClicked() function : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", toString() : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", previousFunction : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onClick() - UsbBackend.usbFunctionsFromString() - click current mode : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onClick() - mUsbBackend.getCurrentFunctions() - previousFunction : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 209
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-nez v4, :cond_6

    .line 210
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->isClickEventIgnored(JJ)Z

    move-result v4

    if-nez v4, :cond_6

    .line 211
    iput-wide v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    .line 221
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 223
    iget-object v5, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    .line 225
    check-cast v5, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    .line 226
    invoke-virtual {v5, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 229
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-wide/16 v4, 0x20

    cmp-long p1, v0, v4

    if-eqz p1, :cond_5

    const-wide/16 v4, 0x400

    cmp-long p1, v0, v4

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x4

    cmp-long p1, v0, v4

    if-nez p1, :cond_3

    .line 241
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "enable_mtp_settings"

    invoke-static {p1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    const-wide/32 v4, 0x40000

    cmp-long p1, v0, v4

    if-nez p1, :cond_4

    .line 245
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 246
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "adb_enabled"

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    :cond_4
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setCurrentFunctions(J)V

    goto :goto_2

    .line 235
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mTetheringManager:Landroid/net/TetheringManager;

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-virtual {p1, v2, v0, p0}, Landroid/net/TetheringManager;->startTethering(ILjava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected refresh(ZJII)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p5

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refresh() connected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", functions : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", powerRole : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", dataRole : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UsbDetailsCtrlFunction"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsbCtype()Z

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    const-string/jumbo v5, "support USBC()"

    .line 135
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq v4, v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v1, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 137
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 145
    iget-object v1, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 147
    :cond_3
    iget-object v1, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 154
    :goto_1
    iget-object v1, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isUsbTetheringEnabledByMdm(Landroid/content/Context;)Z

    move-result v1

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsbTetheringEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v4, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 158
    sget-object v5, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 159
    invoke-static {v9, v10}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11, v5}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->getProfilePreference(Ljava/lang/String;I)Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    move-result-object v5

    .line 161
    iget-object v11, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v11, v9, v10}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v11

    const-wide/16 v12, 0x20

    if-eqz v11, :cond_a

    .line 162
    invoke-direct {v0, v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->isAccessoryMode(J)Z

    move-result v11

    const-wide/16 v14, 0x4

    if-eqz v11, :cond_6

    cmp-long v11, v14, v9

    if-nez v11, :cond_5

    move v11, v8

    goto :goto_3

    :cond_5
    move v11, v7

    .line 163
    :goto_3
    invoke-virtual {v5, v11}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_6

    :cond_6
    const-wide/16 v16, 0x400

    cmp-long v11, v2, v16

    if-nez v11, :cond_8

    cmp-long v11, v12, v9

    if-nez v11, :cond_7

    move v11, v8

    goto :goto_4

    :cond_7
    move v11, v7

    .line 165
    :goto_4
    invoke-virtual {v5, v11}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_6

    :cond_8
    cmp-long v11, v2, v9

    if-nez v11, :cond_9

    move v11, v8

    goto :goto_5

    :cond_9
    move v11, v7

    .line 167
    :goto_5
    invoke-virtual {v5, v11}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_6
    cmp-long v11, v9, v14

    if-nez v11, :cond_b

    .line 170
    iget-object v11, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    const-string v14, "com.google.android.projection.gearhead"

    invoke-static {v11, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 171
    sget v11, Lcom/android/settings/R$string;->usb_use_file_transfers_android_auto:I

    invoke-virtual {v5, v11}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_7

    .line 175
    :cond_a
    iget-object v11, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v11, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_b
    :goto_7
    cmp-long v11, v9, v12

    if-nez v11, :cond_c

    if-nez v1, :cond_c

    .line 179
    iget-object v9, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v9, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_2

    :cond_c
    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_4

    .line 184
    iget-object v9, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-object v10, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->supportUSBDebuggingMenu(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "remove Debugging only"

    .line 185
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v9, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v9, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_2

    :cond_d
    return-void
.end method
