.class public abstract Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;
.super Landroid/os/HwBinder;
.source "ISehThermal.java"

# interfaces
.implements Lvendor/samsung/hardware/thermal/V1_0/ISehThermal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/thermal/V1_0/ISehThermal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 741
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 744
    return-object p0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 759
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 798
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 799
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 800
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 801
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 802
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

    .line 771
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7bt
        -0x74t
        -0x2at
        -0x73t
        0x69t
        -0x5at
        0x2et
        0x5ct
        0x6t
        -0x10t
        -0x70t
        -0x6t
        0x13t
        -0x39t
        -0x5ft
        -0x4dt
        0x6t
        0x2et
        -0x51t
        -0x10t
        0x1ct
        -0x53t
        0x1ft
        -0x76t
        0x6dt
        0x34t
        -0x73t
        0x32t
        0x9t
        0x32t
        0x3et
        -0x65t
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x78t
        -0x4ct
        -0x7at
        0x39t
        -0x36t
        -0x1dt
        0x9t
        -0x7et
        0x2t
        0x10t
        0x24t
        -0x1et
        0x23t
        0x71t
        0x7t
        0x6ct
        0x76t
        -0x6t
        -0x58t
        0x46t
        0x6et
        0x38t
        -0x36t
        0x59t
        -0x7bt
        0x29t
        0x45t
        0x2bt
        0x61t
        -0x72t
        -0x52t
    .end array-data

    :array_2
    .array-data 1
        -0x69t
        -0xft
        -0x14t
        0x44t
        0x60t
        0x43t
        -0x44t
        0x5at
        0x66t
        0x45t
        -0x49t
        0x45t
        0x29t
        -0x5at
        0x27t
        0x64t
        -0x6at
        -0x43t
        -0x4dt
        0x5et
        0xat
        -0x12t
        0x41t
        -0x13t
        -0x5bt
        0x5ct
        -0x47t
        0x2dt
        0x51t
        -0x15t
        0x78t
        0x2t
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

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.samsung.hardware.thermal@1.0::ISehThermal"

    const-string v2, "android.hardware.thermal@2.0::IThermal"

    const-string v3, "android.hardware.thermal@1.0::IThermal"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 765
    const-string/jumbo v0, "vendor.samsung.hardware.thermal@1.0::ISehThermal"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 786
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 808
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 810
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 838
    const-string v0, "android.hardware.thermal@1.0::IThermal"

    const-string/jumbo v1, "vendor.samsung.hardware.thermal@1.0::ISehThermal"

    const-string v2, "android.hardware.thermal@2.0::IThermal"

    const-string v3, "android.hidl.base@1.0::IBase"

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1120
    :sswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->notifySyspropsChanged()V

    .line 1123
    goto/16 :goto_1

    .line 1109
    :sswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1112
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1113
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1114
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1115
    goto/16 :goto_1

    .line 1099
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->ping()V

    .line 1102
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1103
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1104
    goto/16 :goto_1

    .line 1094
    :sswitch_3
    goto/16 :goto_1

    .line 1086
    :sswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->setHALInstrumentation()V

    .line 1089
    goto/16 :goto_1

    .line 1052
    :sswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1055
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1057
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1059
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1060
    .local v2, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1061
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1062
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1063
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1065
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1066
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1068
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1072
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1073
    nop

    .line 1063
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1069
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1076
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1078
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1080
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1081
    goto/16 :goto_1

    .line 1041
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1045
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1047
    goto/16 :goto_1

    .line 1029
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1032
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1033
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1034
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1035
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1036
    goto/16 :goto_1

    .line 1018
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1021
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1022
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1024
    goto/16 :goto_1

    .line 1006
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermalChangedCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/thermal/V1_0/ISehThermalChangedCallback;

    move-result-object v0

    .line 1009
    .local v0, "callback":Lvendor/samsung/hardware/thermal/V1_0/ISehThermalChangedCallback;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->sehUnregisterThermalChangedCallback(Lvendor/samsung/hardware/thermal/V1_0/ISehThermalChangedCallback;)Landroid/hardware/thermal/V1_0/ThermalStatus;

    move-result-object v1

    .line 1010
    .local v1, "_hidl_out_status":Landroid/hardware/thermal/V1_0/ThermalStatus;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1011
    invoke-virtual {v1, p3}, Landroid/hardware/thermal/V1_0/ThermalStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1012
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1013
    goto/16 :goto_1

    .line 994
    .end local v0    # "callback":Lvendor/samsung/hardware/thermal/V1_0/ISehThermalChangedCallback;
    .end local v1    # "_hidl_out_status":Landroid/hardware/thermal/V1_0/ThermalStatus;
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermalChangedCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/thermal/V1_0/ISehThermalChangedCallback;

    move-result-object v0

    .line 997
    .restart local v0    # "callback":Lvendor/samsung/hardware/thermal/V1_0/ISehThermalChangedCallback;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->sehRegisterThermalChangedCallback(Lvendor/samsung/hardware/thermal/V1_0/ISehThermalChangedCallback;)Landroid/hardware/thermal/V1_0/ThermalStatus;

    move-result-object v1

    .line 998
    .restart local v1    # "_hidl_out_status":Landroid/hardware/thermal/V1_0/ThermalStatus;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 999
    invoke-virtual {v1, p3}, Landroid/hardware/thermal/V1_0/ThermalStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1001
    goto/16 :goto_1

    .line 978
    .end local v0    # "callback":Lvendor/samsung/hardware/thermal/V1_0/ISehThermalChangedCallback;
    .end local v1    # "_hidl_out_status":Landroid/hardware/thermal/V1_0/ThermalStatus;
    :sswitch_b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 981
    .local v0, "type":I
    new-instance v1, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$8;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$8;-><init>(Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->sehGetTypeTemperatures(ILvendor/samsung/hardware/thermal/V1_0/ISehThermal$sehGetTypeTemperaturesCallback;)V

    .line 989
    goto/16 :goto_1

    .line 963
    .end local v0    # "type":I
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    new-instance v0, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$7;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$7;-><init>(Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->sehGetTemperatures(Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$sehGetTemperaturesCallback;)V

    .line 973
    goto/16 :goto_1

    .line 946
    :sswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 949
    .local v0, "filterType":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 950
    .local v1, "type":I
    new-instance v2, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$6;

    invoke-direct {v2, p0, p3}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$6;-><init>(Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->getCurrentCoolingDevices(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;)V

    .line 958
    goto/16 :goto_1

    .line 934
    .end local v0    # "filterType":Z
    .end local v1    # "type":I
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/thermal/V2_0/IThermalChangedCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/thermal/V2_0/IThermalChangedCallback;

    move-result-object v0

    .line 937
    .local v0, "callback":Landroid/hardware/thermal/V2_0/IThermalChangedCallback;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->unregisterThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;)Landroid/hardware/thermal/V1_0/ThermalStatus;

    move-result-object v1

    .line 938
    .local v1, "_hidl_out_status":Landroid/hardware/thermal/V1_0/ThermalStatus;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 939
    invoke-virtual {v1, p3}, Landroid/hardware/thermal/V1_0/ThermalStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 940
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 941
    goto :goto_1

    .line 920
    .end local v0    # "callback":Landroid/hardware/thermal/V2_0/IThermalChangedCallback;
    .end local v1    # "_hidl_out_status":Landroid/hardware/thermal/V1_0/ThermalStatus;
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/thermal/V2_0/IThermalChangedCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/thermal/V2_0/IThermalChangedCallback;

    move-result-object v0

    .line 923
    .restart local v0    # "callback":Landroid/hardware/thermal/V2_0/IThermalChangedCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 924
    .local v1, "filterType":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 925
    .local v2, "type":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->registerThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;ZI)Landroid/hardware/thermal/V1_0/ThermalStatus;

    move-result-object v3

    .line 926
    .local v3, "_hidl_out_status":Landroid/hardware/thermal/V1_0/ThermalStatus;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 927
    invoke-virtual {v3, p3}, Landroid/hardware/thermal/V1_0/ThermalStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 928
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 929
    goto :goto_1

    .line 903
    .end local v0    # "callback":Landroid/hardware/thermal/V2_0/IThermalChangedCallback;
    .end local v1    # "filterType":Z
    .end local v2    # "type":I
    .end local v3    # "_hidl_out_status":Landroid/hardware/thermal/V1_0/ThermalStatus;
    :sswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 906
    .local v0, "filterType":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 907
    .local v1, "type":I
    new-instance v2, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$5;

    invoke-direct {v2, p0, p3}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$5;-><init>(Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->getTemperatureThresholds(ZILandroid/hardware/thermal/V2_0/IThermal$getTemperatureThresholdsCallback;)V

    .line 915
    goto :goto_1

    .line 886
    .end local v0    # "filterType":Z
    .end local v1    # "type":I
    :sswitch_11
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 889
    .restart local v0    # "filterType":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 890
    .restart local v1    # "type":I
    new-instance v2, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$4;

    invoke-direct {v2, p0, p3}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$4;-><init>(Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->getCurrentTemperatures(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;)V

    .line 898
    goto :goto_1

    .line 871
    .end local v0    # "filterType":Z
    .end local v1    # "type":I
    :sswitch_12
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    new-instance v0, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$3;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$3;-><init>(Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->getCoolingDevices(Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;)V

    .line 881
    goto :goto_1

    .line 856
    :sswitch_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    new-instance v0, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$2;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$2;-><init>(Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->getCpuUsages(Landroid/hardware/thermal/V1_0/IThermal$getCpuUsagesCallback;)V

    .line 866
    goto :goto_1

    .line 841
    :sswitch_14
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    new-instance v0, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$1;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$1;-><init>(Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->getTemperatures(Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;)V

    .line 851
    nop

    .line 1132
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_13
        0x3 -> :sswitch_12
        0x4 -> :sswitch_11
        0x5 -> :sswitch_10
        0x6 -> :sswitch_f
        0x7 -> :sswitch_e
        0x8 -> :sswitch_d
        0x9 -> :sswitch_c
        0xa -> :sswitch_b
        0xb -> :sswitch_a
        0xc -> :sswitch_9
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

    .line 792
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 820
    const-string/jumbo v0, "vendor.samsung.hardware.thermal@1.0::ISehThermal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    return-object p0

    .line 823
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->registerService(Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 782
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 814
    const/4 v0, 0x1

    return v0
.end method
