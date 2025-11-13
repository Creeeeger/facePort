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

    .line 978
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 981
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

    .line 996
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1035
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1036
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1037
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1038
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1039
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

    .line 1008
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

    .line 986
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.samsung.hardware.radio@2.2::ISehRadioIndication"

    const-string/jumbo v2, "vendor.samsung.hardware.radio@2.1::ISehRadioIndication"

    const-string/jumbo v3, "vendor.samsung.hardware.radio@2.0::ISehRadioIndication"

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

    .line 1002
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.2::ISehRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1023
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 1045
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1047
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

    .line 1075
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.2::ISehRadioIndication"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    const-string/jumbo v3, "vendor.samsung.hardware.radio@2.0::ISehRadioIndication"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1513
    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->notifySyspropsChanged()V

    .line 1516
    goto/16 :goto_1

    .line 1502
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1505
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1506
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1507
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1508
    goto/16 :goto_1

    .line 1492
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->ping()V

    .line 1495
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1496
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1497
    goto/16 :goto_1

    .line 1487
    :sswitch_3
    goto/16 :goto_1

    .line 1479
    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->setHALInstrumentation()V

    .line 1482
    goto/16 :goto_1

    .line 1445
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1448
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1450
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1452
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1453
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1454
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1455
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1456
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1458
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1459
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1461
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1465
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1466
    nop

    .line 1456
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1462
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1469
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1471
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1473
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1474
    goto/16 :goto_1

    .line 1434
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1438
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1440
    goto/16 :goto_1

    .line 1422
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1425
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1426
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1427
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1428
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1429
    goto/16 :goto_1

    .line 1411
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1414
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1415
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1416
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1417
    goto/16 :goto_1

    .line 1398
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1401
    .local v0, "type":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;-><init>()V

    .line 1402
    .local v1, "eriInfo":Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1403
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->eriInfoReceived(ILvendor/samsung/hardware/radio/V2_2/SehEriInfo;)V

    .line 1404
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1405
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1406
    goto/16 :goto_1

    .line 1386
    .end local v0    # "type":I
    .end local v1    # "eriInfo":Lvendor/samsung/hardware/radio/V2_2/SehEriInfo;
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1389
    .restart local v0    # "type":I
    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1390
    .local v1, "configurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->vendorConfigurationChanged(ILjava/util/ArrayList;)V

    .line 1391
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1392
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1393
    goto/16 :goto_1

    .line 1374
    .end local v0    # "type":I
    .end local v1    # "configurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;>;"
    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1377
    .restart local v0    # "type":I
    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_0/SehCallDetails;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1378
    .local v1, "callDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehCallDetails;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->callDetailsChanged(ILjava/util/ArrayList;)V

    .line 1379
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1380
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1381
    goto/16 :goto_1

    .line 1364
    .end local v0    # "type":I
    .end local v1    # "callDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehCallDetails;>;"
    :sswitch_c
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.1::ISehRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1367
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1368
    .local v1, "nrIconType":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->nrIconTypeChanged(II)V

    .line 1369
    goto/16 :goto_1

    .line 1348
    .end local v0    # "type":I
    .end local v1    # "nrIconType":I
    :sswitch_d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1351
    .local v0, "iface":Ljava/lang/String;
    new-instance v1, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub$1;-><init>(Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->needPacketUsage(Ljava/lang/String;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$needPacketUsageCallback;)V

    .line 1359
    goto/16 :goto_1

    .line 1335
    .end local v0    # "iface":Ljava/lang/String;
    :sswitch_e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1338
    .local v0, "type":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;-><init>()V

    .line 1339
    .local v1, "state":Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1340
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->extendedRegistrationState(ILvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;)V

    .line 1341
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1342
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1343
    goto/16 :goto_1

    .line 1322
    .end local v0    # "type":I
    .end local v1    # "state":Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;
    :sswitch_f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1325
    .restart local v0    # "type":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;-><init>()V

    .line 1326
    .local v1, "signalBarInfo":Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1327
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->signalLevelInfoChanged(ILvendor/samsung/hardware/radio/V2_0/SehSignalBar;)V

    .line 1328
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1329
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1330
    goto/16 :goto_1

    .line 1312
    .end local v0    # "type":I
    .end local v1    # "signalBarInfo":Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;
    :sswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1315
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1316
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->execute(ILjava/lang/String;)V

    .line 1317
    goto/16 :goto_1

    .line 1299
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_11
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1302
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1303
    .local v1, "table":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->needSettingValueIndication(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1304
    .local v3, "_hidl_out_value":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1305
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1306
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1307
    goto/16 :goto_1

    .line 1287
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "table":Ljava/lang/String;
    .end local v3    # "_hidl_out_value":I
    :sswitch_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1290
    .local v0, "select":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->needApnProfileIndication(Ljava/lang/String;)Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;

    move-result-object v1

    .line 1291
    .local v1, "_hidl_out_apnProf":Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1292
    invoke-virtual {v1, p3}, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1293
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1294
    goto/16 :goto_1

    .line 1276
    .end local v0    # "select":Ljava/lang/String;
    .end local v1    # "_hidl_out_apnProf":Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;
    :sswitch_13
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1279
    .local v0, "type":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;-><init>()V

    .line 1280
    .local v1, "configModemCapa":Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1281
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->configModemCapabilityChangeNoti(ILvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;)V

    .line 1282
    goto/16 :goto_1

    .line 1265
    .end local v0    # "type":I
    .end local v1    # "configModemCapa":Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;
    :sswitch_14
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1268
    .restart local v0    # "type":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;-><init>()V

    .line 1269
    .local v1, "state":Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1270
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->rrcStateChanged(ILvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;)V

    .line 1271
    goto/16 :goto_1

    .line 1255
    .end local v0    # "type":I
    .end local v1    # "state":Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;
    :sswitch_15
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1258
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1259
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->nrNetworkTypeAdded(II)V

    .line 1260
    goto/16 :goto_1

    .line 1245
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_16
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1248
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1249
    .restart local v1    # "status":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->nrBearerAllocationChanged(II)V

    .line 1250
    goto/16 :goto_1

    .line 1235
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_17
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1238
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1239
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->sapNotify(ILjava/util/ArrayList;)V

    .line 1240
    goto/16 :goto_1

    .line 1224
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_18
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1227
    .restart local v0    # "type":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;-><init>()V

    .line 1228
    .local v1, "result":Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1229
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->releaseCompleteMessageIndication(ILvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;)V

    .line 1230
    goto/16 :goto_1

    .line 1214
    .end local v0    # "type":I
    .end local v1    # "result":Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;
    :sswitch_19
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1217
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1218
    .local v1, "mode":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->simOnOffStateChangedNotify(II)V

    .line 1219
    goto/16 :goto_1

    .line 1204
    .end local v0    # "type":I
    .end local v1    # "mode":I
    :sswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1207
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1208
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->simCountMismatchedIndication(II)V

    .line 1209
    goto/16 :goto_1

    .line 1194
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1197
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1198
    .restart local v1    # "state":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->simSwapStateChangedIndication(II)V

    .line 1199
    goto/16 :goto_1

    .line 1184
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1187
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1188
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->stkCallControlResultIndication(ILjava/lang/String;)V

    .line 1189
    goto/16 :goto_1

    .line 1174
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1177
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1178
    .local v1, "result":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->stkSmsSendResultIndication(II)V

    .line 1179
    goto/16 :goto_1

    .line 1165
    .end local v0    # "type":I
    .end local v1    # "result":I
    :sswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1168
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->deviceReadyNoti(I)V

    .line 1169
    goto/16 :goto_1

    .line 1156
    .end local v0    # "type":I
    :sswitch_1f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1159
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->phonebookInitCompleteIndication(I)V

    .line 1160
    goto/16 :goto_1

    .line 1147
    .end local v0    # "type":I
    :sswitch_20
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1150
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->simPhonebookReadyIndication(I)V

    .line 1151
    goto :goto_1

    .line 1138
    .end local v0    # "type":I
    :sswitch_21
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1141
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->needTurnOnRadioIndication(I)V

    .line 1142
    goto :goto_1

    .line 1128
    .end local v0    # "type":I
    :sswitch_22
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1131
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1132
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->modemCapabilityIndication(ILjava/util/ArrayList;)V

    .line 1133
    goto :goto_1

    .line 1118
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_23
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1121
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1122
    .local v1, "eventNoti":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->timerStatusChangedInd(ILjava/util/ArrayList;)V

    .line 1123
    goto :goto_1

    .line 1108
    .end local v0    # "type":I
    .end local v1    # "eventNoti":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_24
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1111
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1112
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->voiceRadioBearerHandoverStatusChanged(II)V

    .line 1113
    goto :goto_1

    .line 1098
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_25
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1101
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1102
    .local v1, "imsPref":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->imsPreferenceChanged(ILjava/util/ArrayList;)V

    .line 1103
    goto :goto_1

    .line 1088
    .end local v0    # "type":I
    .end local v1    # "imsPref":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_26
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1091
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1092
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->csFallback(II)V

    .line 1093
    goto :goto_1

    .line 1078
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_27
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1081
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1082
    .local v1, "acbInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->acbInfoChanged(ILjava/util/ArrayList;)V

    .line 1083
    nop

    .line 1525
    .end local v0    # "type":I
    .end local v1    # "acbInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    return-void

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

    .line 1029
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1057
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.2::ISehRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    return-object p0

    .line 1060
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

    .line 1064
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1065
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 1019
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1069
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
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1051
    const/4 v0, 0x1

    return v0
.end method
