.class public abstract Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "ISehRadioIndication.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v3, v1, [B

    fill-array-data v3, :array_1

    new-array v4, v1, [B

    fill-array-data v4, :array_2

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    filled-new-array {v2, v3, v4, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        -0x2ft
        -0x40t
        0x7at
        -0x79t
        -0x76t
        0x4ct
        -0x4ft
        -0x69t
        0x6ft
        -0x7ft
        0x43t
        0x45t
        -0x63t
        0x77t
        0x4t
        0x2ft
        0x1et
        -0x48t
        0x3ct
        0x30t
        -0x1ct
        0x2t
        -0x6et
        0x1at
        0x4t
        -0x1t
        -0x4bt
        0x76t
        0x72t
        -0x65t
        0x7at
        -0x41t
    .end array-data

    :array_1
    .array-data 1
        -0x5ct
        0x7dt
        -0x7t
        -0x3dt
        0x7t
        0x45t
        0x7at
        -0x6et
        0x4bt
        -0x40t
        -0x6at
        0x8t
        0x59t
        0x22t
        -0x67t
        0x42t
        -0x3t
        -0x34t
        -0x10t
        0x7bt
        0x5t
        -0x2ft
        -0x78t
        -0x6ft
        -0x4bt
        -0x3ct
        -0x74t
        0x19t
        -0x3bt
        0x4t
        -0x23t
        -0x67t
    .end array-data

    :array_2
    .array-data 1
        0x78t
        0xft
        -0x60t
        -0xbt
        -0x7bt
        -0x3et
        0x57t
        0x54t
        -0x34t
        0x63t
        0x43t
        -0x41t
        0x0t
        -0x22t
        -0x1bt
        0x15t
        0x7et
        -0x4t
        -0xat
        -0x8t
        0x52t
        0x6bt
        -0x3ft
        0x79t
        0x7at
        -0x54t
        -0x48t
        0x7et
        -0x73t
        0x37t
        0x5ft
        -0x5ct
    .end array-data

    :array_3
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final blacklist interfaceChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.samsung.hardware.radio@2.0::ISehRadioIndication"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "vendor.samsung.hardware.radio@2.2::ISehRadioIndication"

    const-string v4, "vendor.samsung.hardware.radio@2.1::ISehRadioIndication"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "vendor.samsung.hardware.radio@2.2::ISehRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.samsung.hardware.radio@2.2::ISehRadioIndication"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    const-string v3, "vendor.samsung.hardware.radio@2.0::ISehRadioIndication"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->ping()V

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_3
    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->setHALInstrumentation()V

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;-><init>()V

    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->eriInfoReceived(ILvendor/samsung/hardware/radio/V2_2/SehEriInfo;)V

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->vendorConfigurationChanged(ILjava/util/ArrayList;)V

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_0/SehCallDetails;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->callDetailsChanged(ILjava/util/ArrayList;)V

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "vendor.samsung.hardware.radio@2.1::ISehRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->nrIconTypeChanged(II)V

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub$1;-><init>(Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->needPacketUsage(Ljava/lang/String;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$needPacketUsageCallback;)V

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;-><init>()V

    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->extendedRegistrationState(ILvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;)V

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;-><init>()V

    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->signalLevelInfoChanged(ILvendor/samsung/hardware/radio/V2_0/SehSignalBar;)V

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->execute(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_11
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->needSettingValueIndication(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->needApnProfileIndication(Ljava/lang/String;)Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;

    move-result-object v1

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v1, p3}, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :sswitch_13
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;-><init>()V

    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->configModemCapabilityChangeNoti(ILvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;)V

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;-><init>()V

    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->rrcStateChanged(ILvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;)V

    goto/16 :goto_1

    :sswitch_15
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->nrNetworkTypeAdded(II)V

    goto/16 :goto_1

    :sswitch_16
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->nrBearerAllocationChanged(II)V

    goto/16 :goto_1

    :sswitch_17
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->sapNotify(ILjava/util/ArrayList;)V

    goto/16 :goto_1

    :sswitch_18
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;-><init>()V

    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->releaseCompleteMessageIndication(ILvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;)V

    goto/16 :goto_1

    :sswitch_19
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->simOnOffStateChangedNotify(II)V

    goto/16 :goto_1

    :sswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->simCountMismatchedIndication(II)V

    goto/16 :goto_1

    :sswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->simSwapStateChangedIndication(II)V

    goto/16 :goto_1

    :sswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->stkCallControlResultIndication(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->stkSmsSendResultIndication(II)V

    goto/16 :goto_1

    :sswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->deviceReadyNoti(I)V

    goto/16 :goto_1

    :sswitch_1f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->phonebookInitCompleteIndication(I)V

    goto/16 :goto_1

    :sswitch_20
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->simPhonebookReadyIndication(I)V

    goto :goto_1

    :sswitch_21
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->needTurnOnRadioIndication(I)V

    goto :goto_1

    :sswitch_22
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->modemCapabilityIndication(ILjava/util/ArrayList;)V

    goto :goto_1

    :sswitch_23
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->timerStatusChangedInd(ILjava/util/ArrayList;)V

    goto :goto_1

    :sswitch_24
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->voiceRadioBearerHandoverStatusChanged(II)V

    goto :goto_1

    :sswitch_25
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->imsPreferenceChanged(ILjava/util/ArrayList;)V

    goto :goto_1

    :sswitch_26
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->csFallback(II)V

    goto :goto_1

    :sswitch_27
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->acbInfoChanged(ILjava/util/ArrayList;)V

    nop

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_26
        0x3 -> :sswitch_25
        0x4 -> :sswitch_24
        0x5 -> :sswitch_23
        0x6 -> :sswitch_22
        0x7 -> :sswitch_21
        0x8 -> :sswitch_20
        0x9 -> :sswitch_1f
        0xa -> :sswitch_1e
        0xb -> :sswitch_1d
        0xc -> :sswitch_1c
        0xd -> :sswitch_1b
        0xe -> :sswitch_1a
        0xf -> :sswitch_19
        0x10 -> :sswitch_18
        0x11 -> :sswitch_17
        0x12 -> :sswitch_16
        0x13 -> :sswitch_15
        0x14 -> :sswitch_14
        0x15 -> :sswitch_13
        0x16 -> :sswitch_12
        0x17 -> :sswitch_11
        0x18 -> :sswitch_10
        0x19 -> :sswitch_f
        0x1a -> :sswitch_e
        0x1b -> :sswitch_d
        0x1c -> :sswitch_c
        0x1d -> :sswitch_b
        0x1e -> :sswitch_a
        0x1f -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .locals 0

    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "vendor.samsung.hardware.radio@2.2::ISehRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
