.class public Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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
.field private IS_SUPPORT_ADAPTIVE:Z

.field private IS_SUPPORT_AMBIENT:Z

.field private IS_SUPPORT_ANC:Z

.field private mBottomLayout:Landroid/widget/RelativeLayout;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mScreenId:Ljava/lang/String;

.field private mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

.field private mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;


# direct methods
.method public static synthetic $r8$lambda$pTwE27nqNxqpge3vtgRTCcvp0vg(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)Z
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

    sput-object v1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->OFF:[B

    new-array v1, v0, [B

    aput-byte v0, v1, v2

    sput-object v1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->ON:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "bluetooth_noise_controls"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ANC:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ADAPTIVE:Z

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p1, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f141fc6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mScreenId:Ljava/lang/String;

    if-eqz p5, :cond_0

    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private getWearingState()I
    .locals 4

    const/4 v0, 0x0

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

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getWearingState :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SecBluetoothDetailNoiseController"

    invoke-static {p0, v1, v2}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method

.method private synthetic lambda$setNoiseControlView$0(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)Z
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setMultiState(I)Z

    move-result p0

    return p0
.end method

.method private parseSupportedFeatures([B)V
    .locals 10

    const-string v0, "SecBluetoothDetailNoiseController"

    if-eqz p1, :cond_5

    array-length v1, p1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    const v4, 0xffff

    and-int/2addr v2, v4

    sget-object v5, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v5

    if-ne v2, v5, :cond_4

    const/4 v2, 0x2

    :goto_0
    :pswitch_0
    array-length v5, p1

    if-ge v2, v5, :cond_4

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    new-array v7, v6, [B

    add-int/lit8 v8, v2, 0x3

    invoke-static {p1, v8, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "parseSupportedFeatures :: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getSmepKey(I)Lcom/samsung/android/bluetooth/SmepTag;

    move-result-object v6

    sget-object v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    invoke-virtual {v6}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v6

    aget v6, v8, v6

    packed-switch v6, :pswitch_data_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "parseSupportedFeatures > NOT SUPPORTED FEATURE : "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    aget-byte v5, v7, v1

    if-ne v5, v3, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ADAPTIVE:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ADAPTIVE:Z

    goto :goto_0

    :pswitch_2
    aget-byte v5, v7, v1

    if-ne v5, v3, :cond_2

    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    goto :goto_0

    :pswitch_3
    aget-byte v5, v7, v1

    if-ne v5, v3, :cond_3

    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ANC:Z

    goto/16 :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ANC:Z

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string/jumbo p0, "parseSupportedFeatures :: DataPacket is too short."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
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

    instance-of p1, p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setButtonEnabled(IZ)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setButtonEnabled(IZ)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setButtonEnabled(IZ)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ADAPTIVE:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setButtonEnabled(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setMultiState(I)Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v3, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v3, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v5, Lcom/samsung/android/bluetooth/SmepTag;->STATE_RESPONSIVE_HEARING:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v5, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eqz v0, :cond_0

    array-length v9, v0

    if-le v9, v8, :cond_0

    aget-byte v0, v0, v8

    if-ne v0, v7, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    if-eqz v2, :cond_1

    array-length v9, v2

    if-le v9, v8, :cond_1

    aget-byte v2, v2, v8

    if-ne v2, v7, :cond_1

    move v2, v7

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    if-eqz v4, :cond_2

    array-length v9, v4

    if-le v9, v8, :cond_2

    aget-byte v4, v4, v8

    if-ne v4, v7, :cond_2

    move v4, v7

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    const/4 v9, 0x2

    if-nez p1, :cond_7

    iget-boolean v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ADAPTIVE:Z

    if-eqz v6, :cond_5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->OFF:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto/16 :goto_3

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->OFF:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto/16 :goto_3

    :cond_4
    if-eqz v4, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->OFF:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto/16 :goto_3

    :cond_5
    if-eqz v0, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->ON:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto/16 :goto_3

    :cond_7
    if-ne p1, v7, :cond_c

    iget-boolean v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ADAPTIVE:Z

    if-eqz v6, :cond_9

    if-eqz v2, :cond_8

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->ON:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto/16 :goto_3

    :cond_9
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->OFF:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto/16 :goto_3

    :cond_a
    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->OFF:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto :goto_3

    :cond_b
    if-eqz v4, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->OFF:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto :goto_3

    :cond_c
    if-ne p1, v9, :cond_10

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ADAPTIVE:Z

    if-eqz v0, :cond_e

    if-eqz v4, :cond_d

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->ON:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto :goto_3

    :cond_e
    if-eqz v2, :cond_f

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->ON:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto :goto_3

    :cond_10
    if-ne p1, v8, :cond_17

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ADAPTIVE:Z

    if-eqz v2, :cond_12

    if-eqz v0, :cond_11

    goto :goto_3

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->ON:[B

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto :goto_3

    :cond_12
    const-string v0, "SecBluetoothDetailNoiseController"

    const-string v1, "[setMultiState] Click on the fourth item that occurred in the buds3pro previous model."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_3
    if-nez p1, :cond_14

    const-string p1, "1"

    goto :goto_4

    :cond_14
    if-ne p1, v9, :cond_15

    const-string p1, "2"

    goto :goto_4

    :cond_15
    if-ne p1, v8, :cond_16

    const-string p1, "3"

    goto :goto_4

    :cond_16
    const-string p1, "0"

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mScreenId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140edf

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_17
    return v6
.end method

.method private setNoiseControlView()V
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    const/4 v1, 0x1

    const v2, 0x7f142200

    const v3, 0x7f1421ff

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ANC:Z

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ADAPTIVE:Z

    const v1, 0x7f080887

    const v5, 0x7f142179

    const v6, 0x7f142201

    const v7, 0x7f080885

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iput v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLow4Icon:I

    iput v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMid4Icon:I

    const v7, 0x7f080883

    iput v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHigh4Icon:I

    iput v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHigh4Icon:I

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLow4Text:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMid4Text:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHigh4Text:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHigh4Text:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iput v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHighVisible:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iput v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLow4Icon:I

    iput v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMid4Icon:I

    iput v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHigh4Icon:I

    iput v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHigh4Icon:I

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLow4Text:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMid4Text:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHigh4Text:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHigh4Text:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;)V

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mListener:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController$$ExternalSyntheticLambda0;

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ANC:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f080848

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0600c4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ANC:Z

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    return-void
.end method

.method private updateMultiState()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v3, Lcom/samsung/android/bluetooth/SmepTag;->STATE_RESPONSIVE_HEARING:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v3, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    const-string v3, "SecBluetoothDetailNoiseController"

    if-eqz v1, :cond_1

    array-length v4, v1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ambientData = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string v4, "ambientData = null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_3

    array-length v4, v0

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ancData = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_2
    const-string v4, "ancData = null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v2, :cond_5

    array-length v4, v2

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "adaptiveData = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    :goto_4
    const-string v4, "adaptiveData = null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_ADAPTIVE:Z

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-eqz v3, :cond_9

    if-eqz v0, :cond_6

    array-length v3, v0

    if-le v3, v7, :cond_6

    aget-byte v0, v0, v7

    if-ne v0, v6, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_6

    :cond_6
    if-eqz v1, :cond_7

    array-length v0, v1

    if-le v0, v7, :cond_7

    aget-byte v0, v1, v7

    if-ne v0, v6, :cond_7

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_6

    :cond_7
    if-eqz v2, :cond_8

    array-length v0, v2

    if-le v0, v7, :cond_8

    aget-byte v0, v2, v7

    if-ne v0, v6, :cond_8

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_6

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_6

    :cond_9
    if-eqz v0, :cond_a

    array-length v3, v0

    if-le v3, v7, :cond_a

    aget-byte v0, v0, v7

    if-ne v0, v6, :cond_a

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_b

    array-length v0, v1

    if-le v0, v7, :cond_b

    aget-byte v0, v1, v7

    if-ne v0, v6, :cond_b

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_6

    :cond_b
    if-eqz v2, :cond_c

    array-length v0, v2

    if-le v0, v7, :cond_c

    aget-byte v0, v2, v7

    if-ne v0, v6, :cond_c

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_6

    :cond_c
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->setSelectedPosition(I)V

    :goto_6
    return-void
.end method

.method private updateSwitchState()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v1

    const-string v2, "SecBluetoothDetailNoiseController"

    if-eqz v1, :cond_4

    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    array-length v0, v1

    const-string v3, "data = "

    const/4 v4, 0x3

    if-le v0, v4, :cond_3

    aget-byte v0, v1, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    :goto_3
    const-string p0, "data = null "

    invoke-static {v0, p0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public connectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

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

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/preference/Preference;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/preference/Preference;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "bluetooth_multi_mode"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    const-string v0, "bluetooth_switch_noice_canceling"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->parseSupportedFeatures([B)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setNoiseControlView()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_noise_controls"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->unRegisterCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const-string/jumbo p2, "onPreferenceChange :: "

    const-string v0, "SecBluetoothDetailNoiseController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p2, p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->OFF:[B

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->ON:[B

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v0

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    if-eqz p1, :cond_2

    const-string p1, "0"

    goto :goto_3

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->IS_SUPPORT_AMBIENT:Z

    if-eqz p1, :cond_3

    const-string p1, "2"

    goto :goto_3

    :cond_3
    const-string p1, "1"

    :goto_3
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mScreenId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140edf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "key = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->parseSupportedFeatures([B)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setNoiseControlView()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateMultiState()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateSwitchState()V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setBottomLayout(Landroid/widget/RelativeLayout;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBottomLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setDelayEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->parseSupportedFeatures([B)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setNoiseControlView()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateMultiState()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Landroidx/preference/Preference;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateSwitchState()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

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

.method public updateLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V

    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->updateMidBarSizeFlag:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
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

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mMultiBtn:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateMultiState()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->mSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateSwitchState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    const-string v0, "SecBluetoothDetailNoiseController"

    const-string/jumbo v1, "updateState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const/4 p0, 0x0

    return p0
.end method
