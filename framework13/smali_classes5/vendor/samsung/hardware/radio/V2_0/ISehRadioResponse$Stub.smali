.class public abstract Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "ISehRadioResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1705
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1708
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

    .line 1721
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1758
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1759
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1760
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1761
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1762
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

    .line 1733
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
        -0x6dt
        -0x62t
        0x27t
        -0x12t
        -0x65t
        0x2dt
        -0x47t
        -0x30t
        0x44t
        -0xdt
        0x42t
        0x5ft
        0x6dt
        -0x43t
        -0x1bt
        -0x77t
        0x6bt
        -0x3bt
        0x61t
        0x15t
        0x51t
        0x26t
        0x55t
        0x1ft
        0x25t
        0x7at
        0xet
        0x6t
        -0x22t
        0x1t
        -0x20t
        -0x6et
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

    .line 1713
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.samsung.hardware.radio@2.0::ISehRadioResponse"

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

    .line 1727
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.0::ISehRadioResponse"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1746
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 1768
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1770
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

    .line 1798
    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string/jumbo v2, "vendor.samsung.hardware.radio@2.0::ISehRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2342
    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2344
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->notifySyspropsChanged()V

    .line 2345
    goto/16 :goto_1

    .line 2331
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2333
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 2334
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2335
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2336
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2337
    goto/16 :goto_1

    .line 2321
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2323
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->ping()V

    .line 2324
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2325
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2326
    goto/16 :goto_1

    .line 2316
    :sswitch_3
    goto/16 :goto_1

    .line 2308
    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->setHALInstrumentation()V

    .line 2311
    goto/16 :goto_1

    .line 2274
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 2277
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2279
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2281
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2282
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2283
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2284
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2285
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 2287
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2288
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 2290
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 2294
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2295
    nop

    .line 2285
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2291
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2298
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2300
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2302
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2303
    goto/16 :goto_1

    .line 2263
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2265
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 2266
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2267
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2268
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2269
    goto/16 :goto_1

    .line 2251
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 2254
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2255
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2256
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2257
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2258
    goto/16 :goto_1

    .line 2240
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2242
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 2243
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2244
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2245
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2246
    goto/16 :goto_1

    .line 2229
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2232
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2233
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2234
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 2235
    goto/16 :goto_1

    .line 2218
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2220
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2221
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2222
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2223
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 2224
    goto/16 :goto_1

    .line 2208
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2210
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2211
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2212
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->setMobileDataSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2213
    goto/16 :goto_1

    .line 2198
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2200
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2201
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2202
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->selectCsgManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2203
    goto/16 :goto_1

    .line 2187
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2189
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2190
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2191
    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2192
    .local v1, "csgInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getCsgListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 2193
    goto/16 :goto_1

    .line 2177
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "csgInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;>;"
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2179
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2180
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2181
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2182
    goto/16 :goto_1

    .line 2166
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2168
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2169
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2170
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2171
    .local v1, "index":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2172
    goto/16 :goto_1

    .line 2154
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "index":I
    :sswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2156
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2157
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2158
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;-><init>()V

    .line 2159
    .local v1, "simMsg":Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2160
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->readSmsFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;)V

    .line 2161
    goto/16 :goto_1

    .line 2142
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simMsg":Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;
    :sswitch_11
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2144
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2145
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2146
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;-><init>()V

    .line 2147
    .local v1, "storedMsgInfo":Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2148
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getStoredMsgCountFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;)V

    .line 2149
    goto/16 :goto_1

    .line 2130
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "storedMsgInfo":Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;
    :sswitch_12
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2132
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2133
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2134
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;-><init>()V

    .line 2135
    .local v1, "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2136
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    .line 2137
    goto/16 :goto_1

    .line 2118
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    :sswitch_13
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2120
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2121
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2122
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;-><init>()V

    .line 2123
    .restart local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2124
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    .line 2125
    goto/16 :goto_1

    .line 2106
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    :sswitch_14
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2108
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2109
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2110
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;-><init>()V

    .line 2111
    .restart local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2112
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    .line 2113
    goto/16 :goto_1

    .line 2094
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    :sswitch_15
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2097
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2098
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;-><init>()V

    .line 2099
    .restart local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2100
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    .line 2101
    goto/16 :goto_1

    .line 2082
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    :sswitch_16
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2084
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2085
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2086
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;-><init>()V

    .line 2087
    .restart local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2088
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    .line 2089
    goto/16 :goto_1

    .line 2071
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    :sswitch_17
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2073
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2074
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2076
    .local v1, "atr":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getAtrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 2077
    goto/16 :goto_1

    .line 2061
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "atr":Ljava/lang/String;
    :sswitch_18
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2063
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2064
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2065
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->emergencyControlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2066
    goto/16 :goto_1

    .line 2050
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_19
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2052
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2053
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2054
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2055
    .local v1, "respEmergencySearch":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->emergencySearchResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2056
    goto/16 :goto_1

    .line 2038
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "respEmergencySearch":I
    :sswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2040
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2041
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2042
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;-><init>()V

    .line 2043
    .local v1, "configs":Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2044
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getCellBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;)V

    .line 2045
    goto/16 :goto_1

    .line 2027
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "configs":Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;
    :sswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2029
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2030
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2031
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2032
    .local v1, "SimPhonebookAccessResp":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->accessPhonebookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2033
    goto/16 :goto_1

    .line 2015
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "SimPhonebookAccessResp":I
    :sswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2017
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2018
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2019
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;-><init>()V

    .line 2020
    .local v1, "simPhonebookResponseInfo":Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2021
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getPhonebookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;)V

    .line 2022
    goto/16 :goto_1

    .line 2005
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPhonebookResponseInfo":Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;
    :sswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2007
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2008
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2009
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->changeIccPersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2010
    goto/16 :goto_1

    .line 1995
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1997
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1998
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1999
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->supplyIccPersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2000
    goto/16 :goto_1

    .line 1983
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1985
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1986
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1987
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;-><init>()V

    .line 1988
    .local v1, "simLockInfo":Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1989
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getSimLockInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;)V

    .line 1990
    goto/16 :goto_1

    .line 1973
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simLockInfo":Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;
    :sswitch_20
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1975
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1976
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1977
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->setSimInitEventResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1978
    goto/16 :goto_1

    .line 1963
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_21
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1965
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1966
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1967
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->setSimOnOffResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1968
    goto/16 :goto_1

    .line 1952
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_22
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1954
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1955
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1956
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1957
    .local v1, "phonebookCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getUsimPhonebookCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1958
    goto/16 :goto_1

    .line 1940
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phonebookCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_23
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1942
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1943
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1944
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;-><init>()V

    .line 1945
    .local v1, "phonebookInfo":Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1946
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getPhonebookStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;)V

    .line 1947
    goto/16 :goto_1

    .line 1929
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phonebookInfo":Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;
    :sswitch_24
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1931
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1932
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1933
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1934
    .local v1, "m":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1935
    goto/16 :goto_1

    .line 1919
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "m":I
    :sswitch_25
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1921
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1922
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1923
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->setDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1924
    goto/16 :goto_1

    .line 1908
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_26
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1910
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1911
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1913
    .local v1, "isDisable":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1914
    goto/16 :goto_1

    .line 1898
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "isDisable":I
    :sswitch_27
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1900
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1901
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1902
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->sendEncodedUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1903
    goto/16 :goto_1

    .line 1888
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_28
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1890
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1891
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1892
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->setPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1893
    goto/16 :goto_1

    .line 1877
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_29
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1880
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1881
    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1882
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1883
    goto/16 :goto_1

    .line 1867
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;>;"
    :sswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1869
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1870
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1871
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->setImsCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1872
    goto :goto_1

    .line 1856
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1858
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1859
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1860
    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1861
    .local v1, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1862
    goto :goto_1

    .line 1845
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;>;"
    :sswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1847
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1848
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1849
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1850
    .local v1, "regState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1851
    goto :goto_1

    .line 1834
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "regState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1836
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1837
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1838
    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_0/SehCall;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1839
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehCall;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1840
    goto :goto_1

    .line 1824
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehCall;>;"
    :sswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1826
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1827
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1828
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1829
    goto :goto_1

    .line 1813
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1815
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1816
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1818
    .local v1, "remainingRetries":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1819
    goto :goto_1

    .line 1801
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_30
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1803
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1804
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1805
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;-><init>()V

    .line 1806
    .local v1, "cardStatus":Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1807
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;)V

    .line 1808
    nop

    .line 2354
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_30
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_2e
        0x4 -> :sswitch_2d
        0x5 -> :sswitch_2c
        0x6 -> :sswitch_2b
        0x7 -> :sswitch_2a
        0x8 -> :sswitch_29
        0x9 -> :sswitch_28
        0xa -> :sswitch_27
        0xb -> :sswitch_26
        0xc -> :sswitch_25
        0xd -> :sswitch_24
        0xe -> :sswitch_23
        0xf -> :sswitch_22
        0x10 -> :sswitch_21
        0x11 -> :sswitch_20
        0x12 -> :sswitch_1f
        0x13 -> :sswitch_1e
        0x14 -> :sswitch_1d
        0x15 -> :sswitch_1c
        0x16 -> :sswitch_1b
        0x17 -> :sswitch_1a
        0x18 -> :sswitch_19
        0x19 -> :sswitch_18
        0x1a -> :sswitch_17
        0x1b -> :sswitch_16
        0x1c -> :sswitch_15
        0x1d -> :sswitch_14
        0x1e -> :sswitch_13
        0x1f -> :sswitch_12
        0x20 -> :sswitch_11
        0x21 -> :sswitch_10
        0x22 -> :sswitch_f
        0x23 -> :sswitch_e
        0x24 -> :sswitch_d
        0x25 -> :sswitch_c
        0x26 -> :sswitch_b
        0x27 -> :sswitch_a
        0x28 -> :sswitch_9
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

    .line 1752
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1780
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.0::ISehRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1781
    return-object p0

    .line 1783
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

    .line 1787
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 1788
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 1742
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1774
    const/4 v0, 0x1

    return v0
.end method
