.class public Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SecBluetoothDetailNoiseController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;


# static fields
.field private static final KEY:Ljava/lang/String; = "bluetooth_noise_controls"

.field private static final KEY_SEC_BLUETOOTH_MULTI_MODE:Ljava/lang/String; = "bluetooth_multi_mode"

.field private static final KEY_SEC_BLUETOOTH_SWITCH_MODE:Ljava/lang/String; = "bluetooth_switch_noice_canceling"

.field private static final OFF:[B

.field private static final ON:[B

.field private static final TAG:Ljava/lang/String; = "SecBluetoothDetailNoiseController"

.field private static final WEARING_STATE_BOTH:I = 0x2

.field private static final WEARING_STATE_OFF:I = 0x0

.field private static final WEARING_STATE_ONE:I = 0x1


# instance fields
.field private IS_SUPPORT_AMBIENT:Z

.field private IS_SUPPORT_ANC:Z

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mScreenId:Ljava/lang/String;

.field private mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

.field private mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;


# direct methods
.method public static synthetic $r8$lambda$Hja8PTivyCxyfBykXQJBSQalWM8(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->lambda$setNoiseControlView$0(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 46
    sput-object v1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->OFF:[B

    new-array v1, v0, [B

    aput-byte v0, v1, v2

    .line 47
    sput-object v1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->ON:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "bluetooth_noise_controls"

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ANC:Z

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    .line 67
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 68
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 69
    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    .line 70
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->screen_device_profiles_setting:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mScreenId:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 73
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private getWearingState()I
    .locals 4

    const/4 v0, 0x0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->STATE_WEARING_L:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v1

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    .line 291
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v3, Lcom/samsung/android/bluetooth/SmepTag;->STATE_WEARING_R:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    aget-byte p0, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-ne p0, v2, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    if-eq v1, v2, :cond_2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v2

    :catch_0
    move-exception p0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWearingState :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SecBluetoothDetailNoiseController"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private synthetic lambda$setNoiseControlView$0(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)Z
    .locals 0

    .line 227
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setMultiState(I)Z

    move-result p0

    return p0
.end method

.method private parseSupportedFeatures([B)V
    .locals 10

    const-string v0, "SecBluetoothDetailNoiseController"

    if-eqz p1, :cond_4

    .line 307
    array-length v1, p1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 312
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    const v4, 0xffff

    and-int/2addr v2, v4

    .line 318
    sget-object v5, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v5

    if-ne v2, v5, :cond_3

    const/4 v2, 0x2

    .line 319
    :goto_0
    :pswitch_0
    array-length v5, p1

    if-ge v2, v5, :cond_3

    .line 320
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v6, v2, 0x2

    .line 321
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    .line 323
    new-array v7, v6, [B

    add-int/lit8 v8, v2, 0x3

    .line 324
    invoke-static {p1, v8, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSupportedFeatures :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getConstantName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v2, v6

    .line 330
    invoke-static {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getSmepKey(I)Lcom/samsung/android/bluetooth/SmepTag;

    move-result-object v6

    .line 331
    sget-object v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    invoke-virtual {v6}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v6

    aget v6, v8, v6

    packed-switch v6, :pswitch_data_0

    .line 369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseSupportedFeatures > NOT SUPPORTED FEATURE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    const-string v5, "%x"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :pswitch_1
    aget-byte v5, v7, v1

    if-ne v5, v3, :cond_1

    .line 342
    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    goto :goto_0

    .line 344
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    goto/16 :goto_0

    .line 333
    :pswitch_2
    aget-byte v5, v7, v1

    if-ne v5, v3, :cond_2

    .line 334
    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ANC:Z

    goto/16 :goto_0

    .line 336
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ANC:Z

    goto/16 :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "parseSupportedFeatures :: DataPacket is too short."

    .line 308
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setEnabled(Landroidx/preference/Preference;Z)V
    .locals 1

    .line 397
    instance-of p1, p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_0

    .line 398
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 401
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setButtonEnabled(IZ)V

    .line 402
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setButtonEnabled(IZ)V

    .line 403
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setButtonEnabled(IZ)V

    :goto_0
    return-void
.end method

.method private setMultiState(I)Z
    .locals 6

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 250
    array-length v5, v0

    if-le v5, v3, :cond_0

    aget-byte v0, v0, v3

    if-ne v0, v4, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 251
    array-length v5, v1

    if-le v5, v3, :cond_1

    aget-byte v1, v1, v3

    if-ne v1, v4, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v3, 0x2

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->ON:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto :goto_2

    :cond_3
    if-ne p1, v4, :cond_5

    if-nez v0, :cond_4

    if-eqz v1, :cond_7

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->OFF:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto :goto_2

    :cond_5
    if-ne p1, v3, :cond_a

    if-eqz v1, :cond_6

    goto :goto_2

    .line 269
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->ON:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    :cond_7
    :goto_2
    if-nez p1, :cond_8

    const-string p1, "1"

    goto :goto_3

    :cond_8
    if-ne p1, v3, :cond_9

    const-string p1, "2"

    goto :goto_3

    :cond_9
    const-string p1, "0"

    .line 281
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mScreenId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->event_device_profiles_setting_noise_control_switch:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 281
    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_a
    return v2
.end method

.method private setNoiseControlView()V
    .locals 7

    .line 215
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ANC:Z

    if-eqz v3, :cond_0

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const-string v3, "sec_bluetooth_lottie_anc.json"

    const-string v4, "sec_bluetooth_lottie_anc_off.json"

    const-string v5, "sec_bluetooth_lottie_anc_ambient.json"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setLottieIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_bluetooth_multi_mode_noise_cancelling:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_bluetooth_multi_mode_off:I

    .line 224
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->sec_bluetooth_multi_mode_ambient_sound:I

    .line 225
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setTextForButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    new-instance v3, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setOnButtonSelectedListener(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$OnButtonSelectedListener;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 229
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ANC:Z

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 236
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_bluetooth_multi_mode_ambient_sound:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_bluetooth_multi_mode_noise_cancelling:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_5

    .line 243
    iget-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    if-nez v3, :cond_4

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ANC:Z

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    return-void
.end method

.method private updateMultiState()V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v1

    const-string v2, "SecBluetoothDetailNoiseController"

    if-eqz v1, :cond_1

    .line 193
    array-length v3, v1

    if-nez v3, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ambientData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "ambientData = null"

    .line 194
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_3

    .line 199
    array-length v3, v0

    if-nez v3, :cond_2

    goto :goto_2

    .line 202
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ancData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_2
    const-string v3, "ancData = null"

    .line 200
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_4

    .line 205
    array-length v4, v0

    if-le v4, v3, :cond_4

    aget-byte v0, v0, v3

    if-ne v0, v2, :cond_4

    .line 206
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    .line 207
    array-length v0, v1

    if-le v0, v3, :cond_5

    aget-byte v0, v1, v3

    if-ne v0, v2, :cond_5

    .line 208
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_4

    .line 210
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setSelectedPosition(I)V

    :goto_4
    return-void
.end method

.method private updateSwitchState()V
    .locals 5

    .line 174
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v1

    const-string v2, "SecBluetoothDetailNoiseController"

    if-eqz v1, :cond_4

    .line 178
    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_2

    .line 180
    :cond_1
    array-length v0, v1

    const-string v3, "data = "

    const/4 v4, 0x3

    if-le v0, v4, :cond_3

    .line 181
    aget-byte v0, v1, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 182
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 185
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 179
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data = null "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public connectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 451
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/preference/Preference;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 452
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    goto :goto_1

    .line 454
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/preference/Preference;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 455
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 91
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "bluetooth_multi_mode"

    .line 92
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const-string v0, "bluetooth_switch_noice_canceling"

    .line 93
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->parseSupportedFeatures([B)V

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setNoiseControlView()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_noise_controls"

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

.method public initComponent()V
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz p0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->initLottieAnimation()V

    :cond_0
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

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->unRegisterCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const-string p2, "SecBluetoothDetailNoiseController"

    const-string v0, "onPreferenceChange :: "

    .line 147
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    instance-of v0, p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_4

    .line 149
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 150
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    sget-object p2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->OFF:[B

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->ON:[B

    .line 153
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    if-eqz p1, :cond_2

    const-string p1, "0"

    goto :goto_2

    .line 161
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    if-eqz p1, :cond_3

    const-string p1, "2"

    goto :goto_2

    :cond_3
    const-string p1, "1"

    .line 163
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mScreenId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->event_device_profiles_setting_noise_control_switch:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-static {p2, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 167
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v0

    .line 111
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->parseSupportedFeatures([B)V

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setNoiseControlView()V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateMultiState()V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateSwitchState()V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setDelayEnabled()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    .line 410
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 377
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 379
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p1

    .line 380
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->parseSupportedFeatures([B)V

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setNoiseControlView()V

    .line 382
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateMultiState()V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 392
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateSwitchState()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateBatteryState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    return-void
.end method

.method public updateNoiseControlState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 432
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 433
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateMultiState()V

    goto :goto_0

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateSwitchState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    const-string v0, "SecBluetoothDetailNoiseController"

    const-string v1, "updateState"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateTouchPadState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
