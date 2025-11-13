.class public abstract Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;
.super Landroid/os/HwBinder;
.source "ISehRadio.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/V2_0/ISehRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/V2_0/ISehRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1554
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1557
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

    .line 1570
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1607
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1608
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1609
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1610
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1611
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

    .line 1582
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x68t
        0x4bt
        -0x5at
        0x4ft
        0x7bt
        -0x6ct
        0xct
        0x3et
        0x4ct
        -0xdt
        0x6dt
        -0x34t
        0x5et
        0x6ct
        0x11t
        -0x80t
        -0x46t
        -0x5dt
        0x5bt
        -0x6ct
        -0x22t
        -0x64t
        -0x30t
        -0x3ft
        -0x1ct
        -0x78t
        0x5dt
        0xft
        0x20t
        -0x2et
        0x7dt
        0x6bt
    .end array-data

    :array_1
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1562
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.samsung.hardware.radio@2.0::ISehRadio"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1576
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.0::ISehRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1595
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 1617
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1619
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 16
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1647
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string/jumbo v2, "vendor.samsung.hardware.radio@2.0::ISehRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2172
    :sswitch_0
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2174
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->notifySyspropsChanged()V

    .line 2175
    goto/16 :goto_1

    .line 2161
    :sswitch_1
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2163
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2164
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2165
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2166
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2167
    goto/16 :goto_1

    .line 2151
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2153
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->ping()V

    .line 2154
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2156
    goto/16 :goto_1

    .line 2146
    :sswitch_3
    goto/16 :goto_1

    .line 2138
    :sswitch_4
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2140
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->setHALInstrumentation()V

    .line 2141
    goto/16 :goto_1

    .line 2104
    :sswitch_5
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2106
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2107
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2109
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2111
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2112
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2113
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2114
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2115
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 2117
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2118
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 2120
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 2124
    invoke-virtual {v1, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2125
    nop

    .line 2115
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2121
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2128
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2130
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2132
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2133
    goto/16 :goto_1

    .line 2093
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2095
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2096
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2097
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2099
    goto/16 :goto_1

    .line 2081
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2083
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2084
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2085
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2086
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2087
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2088
    goto/16 :goto_1

    .line 2070
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2072
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2073
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2074
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2075
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2076
    goto/16 :goto_1

    .line 2060
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2063
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2064
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 2065
    goto/16 :goto_1

    .line 2050
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2052
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2053
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2054
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 2055
    goto/16 :goto_1

    .line 2039
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2041
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2042
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2043
    .local v1, "enabled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2044
    .local v2, "roamingEnabled":Z
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->setMobileDataSetting(IZZ)V

    .line 2045
    goto/16 :goto_1

    .line 2027
    .end local v0    # "serial":I
    .end local v1    # "enabled":Z
    .end local v2    # "roamingEnabled":Z
    :sswitch_c
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2029
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2030
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2031
    .local v1, "allow":Z
    new-instance v2, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;

    invoke-direct {v2}, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;-><init>()V

    .line 2032
    .local v2, "param":Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;
    invoke-virtual {v2, v8}, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2033
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->setDataAllowed(IZLvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;)V

    .line 2034
    goto/16 :goto_1

    .line 2016
    .end local v0    # "serial":I
    .end local v1    # "allow":Z
    .end local v2    # "param":Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;
    :sswitch_d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2019
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;-><init>()V

    .line 2020
    .local v1, "csgInfo":Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2021
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->selectCsgManual(ILvendor/samsung/hardware/radio/V2_0/SehCsgInfo;)V

    .line 2022
    goto/16 :goto_1

    .line 2007
    .end local v0    # "serial":I
    .end local v1    # "csgInfo":Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;
    :sswitch_e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2009
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2010
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getCsgList(I)V

    .line 2011
    goto/16 :goto_1

    .line 1996
    .end local v0    # "serial":I
    :sswitch_f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1999
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;-><init>()V

    .line 2000
    .local v1, "arg":Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2001
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->writeSmsToSim(ILvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;)V

    .line 2002
    goto/16 :goto_1

    .line 1986
    .end local v0    # "serial":I
    .end local v1    # "arg":Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;
    :sswitch_10
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1988
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1989
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1990
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->readSmsFromSim(II)V

    .line 1991
    goto/16 :goto_1

    .line 1977
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_11
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1979
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1980
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getStoredMsgCountFromSim(I)V

    .line 1981
    goto/16 :goto_1

    .line 1966
    .end local v0    # "serial":I
    :sswitch_12
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1968
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1969
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 1970
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1971
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 1972
    goto/16 :goto_1

    .line 1955
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_13
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1958
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1959
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1960
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1961
    goto/16 :goto_1

    .line 1944
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_14
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1946
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1947
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 1948
    .local v1, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1949
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 1950
    goto/16 :goto_1

    .line 1933
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_15
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1935
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1936
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 1937
    .restart local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1938
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 1939
    goto/16 :goto_1

    .line 1924
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_16
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1926
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1927
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getAtr(I)V

    .line 1928
    goto/16 :goto_1

    .line 1914
    .end local v0    # "serial":I
    :sswitch_17
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1916
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1917
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1918
    .local v1, "command":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->emergencyControl(II)V

    .line 1919
    goto/16 :goto_1

    .line 1905
    .end local v0    # "serial":I
    .end local v1    # "command":I
    :sswitch_18
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1907
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1908
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->emergencySearch(I)V

    .line 1909
    goto/16 :goto_1

    .line 1896
    .end local v0    # "serial":I
    :sswitch_19
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1898
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1899
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getCellBroadcastConfig(I)V

    .line 1900
    goto/16 :goto_1

    .line 1881
    .end local v0    # "serial":I
    :sswitch_1a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1883
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1884
    .local v10, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1885
    .local v11, "command":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1886
    .local v12, "fileId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1887
    .local v13, "index":I
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;-><init>()V

    move-object v14, v0

    .line 1888
    .local v14, "adnRecord":Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;
    invoke-virtual {v14, v8}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1889
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1890
    .local v15, "pin2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/V2_0/SehAdnRecord;Ljava/lang/String;)V

    .line 1891
    goto/16 :goto_1

    .line 1870
    .end local v10    # "serial":I
    .end local v11    # "command":I
    .end local v12    # "fileId":I
    .end local v13    # "index":I
    .end local v14    # "adnRecord":Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;
    .end local v15    # "pin2":Ljava/lang/String;
    :sswitch_1b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1872
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1873
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1874
    .local v1, "fileId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1875
    .local v2, "index":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getPhonebookEntry(III)V

    .line 1876
    goto/16 :goto_1

    .line 1859
    .end local v0    # "serial":I
    .end local v1    # "fileId":I
    .end local v2    # "index":I
    :sswitch_1c
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1861
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1862
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1863
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1864
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1865
    goto/16 :goto_1

    .line 1848
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_1d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1851
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1852
    .local v1, "oldPass":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1853
    .local v2, "newPass":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V

    .line 1854
    goto/16 :goto_1

    .line 1838
    .end local v0    # "serial":I
    .end local v1    # "oldPass":Ljava/lang/String;
    .end local v2    # "newPass":Ljava/lang/String;
    :sswitch_1e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1841
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1842
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->supplyIccPersonalization(ILjava/lang/String;)V

    .line 1843
    goto/16 :goto_1

    .line 1827
    .end local v0    # "serial":I
    .end local v1    # "pin":Ljava/lang/String;
    :sswitch_1f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1830
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1831
    .local v1, "numOfLockType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1832
    .local v2, "lockType":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getSimLockInfo(III)V

    .line 1833
    goto/16 :goto_1

    .line 1818
    .end local v0    # "serial":I
    .end local v1    # "numOfLockType":I
    .end local v2    # "lockType":I
    :sswitch_20
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1821
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->setSimInitEvent(I)V

    .line 1822
    goto/16 :goto_1

    .line 1808
    .end local v0    # "serial":I
    :sswitch_21
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1810
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1811
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1812
    .local v1, "mode":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->setSimOnOff(II)V

    .line 1813
    goto/16 :goto_1

    .line 1799
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_22
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1801
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1802
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getUsimPhonebookCapability(I)V

    .line 1803
    goto/16 :goto_1

    .line 1789
    .end local v0    # "serial":I
    :sswitch_23
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1792
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1793
    .local v1, "fileId":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getPhonebookStorageInfo(II)V

    .line 1794
    goto/16 :goto_1

    .line 1780
    .end local v0    # "serial":I
    .end local v1    # "fileId":I
    :sswitch_24
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1782
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1783
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getCnap(I)V

    .line 1784
    goto/16 :goto_1

    .line 1770
    .end local v0    # "serial":I
    :sswitch_25
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1773
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1774
    .local v1, "on":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->setDisable2g(II)V

    .line 1775
    goto/16 :goto_1

    .line 1761
    .end local v0    # "serial":I
    .end local v1    # "on":I
    :sswitch_26
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1764
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getDisable2g(I)V

    .line 1765
    goto/16 :goto_1

    .line 1750
    .end local v0    # "serial":I
    :sswitch_27
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1753
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;-><init>()V

    .line 1754
    .local v1, "encodedUssd":Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1755
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->sendEncodedUssd(ILvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;)V

    .line 1756
    goto/16 :goto_1

    .line 1739
    .end local v0    # "serial":I
    .end local v1    # "encodedUssd":Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;
    :sswitch_28
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1741
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1742
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;-><init>()V

    .line 1743
    .local v1, "info":Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1744
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->setPreferredNetworkList(ILvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;)V

    .line 1745
    goto/16 :goto_1

    .line 1730
    .end local v0    # "serial":I
    .end local v1    # "info":Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;
    :sswitch_29
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1733
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getPreferredNetworkList(I)V

    .line 1734
    goto/16 :goto_1

    .line 1720
    .end local v0    # "serial":I
    :sswitch_2a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1723
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1724
    .local v1, "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehImsCall;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->setImsCallList(ILjava/util/ArrayList;)V

    .line 1725
    goto :goto_1

    .line 1711
    .end local v0    # "serial":I
    .end local v1    # "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehImsCall;>;"
    :sswitch_2b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1714
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getAvailableNetworks(I)V

    .line 1715
    goto :goto_1

    .line 1702
    .end local v0    # "serial":I
    :sswitch_2c
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1705
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getImsRegistrationState(I)V

    .line 1706
    goto :goto_1

    .line 1693
    .end local v0    # "serial":I
    :sswitch_2d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1696
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getCurrentCalls(I)V

    .line 1697
    goto :goto_1

    .line 1682
    .end local v0    # "serial":I
    :sswitch_2e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1685
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehDial;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehDial;-><init>()V

    .line 1686
    .local v1, "dialInfo":Lvendor/samsung/hardware/radio/V2_0/SehDial;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1687
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->dial(ILvendor/samsung/hardware/radio/V2_0/SehDial;)V

    .line 1688
    goto :goto_1

    .line 1671
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Lvendor/samsung/hardware/radio/V2_0/SehDial;
    :sswitch_2f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1674
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1675
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1676
    .local v2, "subState":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;I)V

    .line 1677
    goto :goto_1

    .line 1662
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    .end local v2    # "subState":I
    :sswitch_30
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1664
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1665
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->getIccCardStatus(I)V

    .line 1666
    goto :goto_1

    .line 1650
    .end local v0    # "serial":I
    :sswitch_31
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;

    move-result-object v0

    .line 1653
    .local v0, "radioResponse":Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;

    move-result-object v2

    .line 1654
    .local v2, "radioIndication":Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;
    invoke-virtual {v7, v0, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->setResponseFunctions(Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;)V

    .line 1655
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1657
    nop

    .line 2184
    .end local v0    # "radioResponse":Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    .end local v2    # "radioIndication":Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_31
        0x2 -> :sswitch_30
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_2e
        0x5 -> :sswitch_2d
        0x6 -> :sswitch_2c
        0x7 -> :sswitch_2b
        0x8 -> :sswitch_2a
        0x9 -> :sswitch_29
        0xa -> :sswitch_28
        0xb -> :sswitch_27
        0xc -> :sswitch_26
        0xd -> :sswitch_25
        0xe -> :sswitch_24
        0xf -> :sswitch_23
        0x10 -> :sswitch_22
        0x11 -> :sswitch_21
        0x12 -> :sswitch_20
        0x13 -> :sswitch_1f
        0x14 -> :sswitch_1e
        0x15 -> :sswitch_1d
        0x16 -> :sswitch_1c
        0x17 -> :sswitch_1b
        0x18 -> :sswitch_1a
        0x19 -> :sswitch_19
        0x1a -> :sswitch_18
        0x1b -> :sswitch_17
        0x1c -> :sswitch_16
        0x1d -> :sswitch_15
        0x1e -> :sswitch_14
        0x1f -> :sswitch_13
        0x20 -> :sswitch_12
        0x21 -> :sswitch_11
        0x22 -> :sswitch_10
        0x23 -> :sswitch_f
        0x24 -> :sswitch_e
        0x25 -> :sswitch_d
        0x26 -> :sswitch_c
        0x27 -> :sswitch_b
        0x28 -> :sswitch_a
        0x29 -> :sswitch_9
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

    .line 1601
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1629
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.0::ISehRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    return-object p0

    .line 1632
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

    .line 1636
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 1637
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 1591
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1623
    const/4 v0, 0x1

    return v0
.end method
