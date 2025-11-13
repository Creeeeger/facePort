.class public abstract Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "ISehRadioIndication.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1126
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1129
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

    .line 1142
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1179
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1180
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1181
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1182
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1183
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

    .line 1154
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

    .line 1134
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.samsung.hardware.radio@2.0::ISehRadioIndication"

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

    .line 1148
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.0::ISehRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1167
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 1189
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1191
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

    .line 1219
    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string/jumbo v2, "vendor.samsung.hardware.radio@2.0::ISehRadioIndication"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1610
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->notifySyspropsChanged()V

    .line 1613
    goto/16 :goto_1

    .line 1599
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1602
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1603
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1605
    goto/16 :goto_1

    .line 1589
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->ping()V

    .line 1592
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1593
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1594
    goto/16 :goto_1

    .line 1584
    :sswitch_3
    goto/16 :goto_1

    .line 1576
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->setHALInstrumentation()V

    .line 1579
    goto/16 :goto_1

    .line 1542
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1545
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1547
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1549
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1550
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1551
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1552
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1553
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1555
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1556
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1558
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1562
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1563
    nop

    .line 1553
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1559
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1566
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1568
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1570
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1571
    goto/16 :goto_1

    .line 1531
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1534
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1535
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1537
    goto/16 :goto_1

    .line 1519
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1522
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1523
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1524
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1525
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1526
    goto/16 :goto_1

    .line 1508
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1511
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1512
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1513
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1514
    goto/16 :goto_1

    .line 1492
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, "iface":Ljava/lang/String;
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub$1;-><init>(Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->needPacketUsage(Ljava/lang/String;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$needPacketUsageCallback;)V

    .line 1503
    goto/16 :goto_1

    .line 1479
    .end local v0    # "iface":Ljava/lang/String;
    :sswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1482
    .local v0, "type":I
    new-instance v2, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;

    invoke-direct {v2}, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;-><init>()V

    .line 1483
    .local v2, "state":Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;
    invoke-virtual {v2, p2}, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1484
    invoke-virtual {p0, v0, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->extendedRegistrationState(ILvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;)V

    .line 1485
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1486
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1487
    goto/16 :goto_1

    .line 1466
    .end local v0    # "type":I
    .end local v2    # "state":Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1469
    .restart local v0    # "type":I
    new-instance v2, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;

    invoke-direct {v2}, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;-><init>()V

    .line 1470
    .local v2, "signalBarInfo":Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;
    invoke-virtual {v2, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1471
    invoke-virtual {p0, v0, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->signalLevelInfoChanged(ILvendor/samsung/hardware/radio/V2_0/SehSignalBar;)V

    .line 1472
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1473
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1474
    goto/16 :goto_1

    .line 1456
    .end local v0    # "type":I
    .end local v2    # "signalBarInfo":Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1459
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1460
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->execute(ILjava/lang/String;)V

    .line 1461
    goto/16 :goto_1

    .line 1443
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1447
    .local v2, "table":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->needSettingValueIndication(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1448
    .local v3, "_hidl_out_value":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1449
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1450
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1451
    goto/16 :goto_1

    .line 1431
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "table":Ljava/lang/String;
    .end local v3    # "_hidl_out_value":I
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, "select":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->needApnProfileIndication(Ljava/lang/String;)Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;

    move-result-object v2

    .line 1435
    .local v2, "_hidl_out_apnProf":Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1436
    invoke-virtual {v2, p3}, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1437
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1438
    goto/16 :goto_1

    .line 1420
    .end local v0    # "select":Ljava/lang/String;
    .end local v2    # "_hidl_out_apnProf":Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1422
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1423
    .local v0, "type":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;-><init>()V

    .line 1424
    .local v1, "configModemCapa":Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1425
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->configModemCapabilityChangeNoti(ILvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;)V

    .line 1426
    goto/16 :goto_1

    .line 1409
    .end local v0    # "type":I
    .end local v1    # "configModemCapa":Lvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;
    :sswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1412
    .restart local v0    # "type":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;-><init>()V

    .line 1413
    .local v1, "state":Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1414
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->rrcStateChanged(ILvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;)V

    .line 1415
    goto/16 :goto_1

    .line 1399
    .end local v0    # "type":I
    .end local v1    # "state":Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;
    :sswitch_11
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1402
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1403
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->nrNetworkTypeAdded(II)V

    .line 1404
    goto/16 :goto_1

    .line 1389
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_12
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1392
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1393
    .restart local v1    # "status":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->nrBearerAllocationChanged(II)V

    .line 1394
    goto/16 :goto_1

    .line 1379
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_13
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1382
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1383
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->sapNotify(ILjava/util/ArrayList;)V

    .line 1384
    goto/16 :goto_1

    .line 1368
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_14
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1371
    .restart local v0    # "type":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;-><init>()V

    .line 1372
    .local v1, "result":Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1373
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->releaseCompleteMessageIndication(ILvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;)V

    .line 1374
    goto/16 :goto_1

    .line 1358
    .end local v0    # "type":I
    .end local v1    # "result":Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;
    :sswitch_15
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1361
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1362
    .local v1, "mode":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->simOnOffStateChangedNotify(II)V

    .line 1363
    goto/16 :goto_1

    .line 1348
    .end local v0    # "type":I
    .end local v1    # "mode":I
    :sswitch_16
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1351
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1352
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->simCountMismatchedIndication(II)V

    .line 1353
    goto/16 :goto_1

    .line 1338
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_17
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1341
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1342
    .restart local v1    # "state":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->simSwapStateChangedIndication(II)V

    .line 1343
    goto/16 :goto_1

    .line 1328
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_18
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1331
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1332
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->stkCallControlResultIndication(ILjava/lang/String;)V

    .line 1333
    goto/16 :goto_1

    .line 1318
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_19
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1321
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1322
    .local v1, "result":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->stkSmsSendResultIndication(II)V

    .line 1323
    goto/16 :goto_1

    .line 1309
    .end local v0    # "type":I
    .end local v1    # "result":I
    :sswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1312
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->deviceReadyNoti(I)V

    .line 1313
    goto/16 :goto_1

    .line 1300
    .end local v0    # "type":I
    :sswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1303
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->phonebookInitCompleteIndication(I)V

    .line 1304
    goto/16 :goto_1

    .line 1291
    .end local v0    # "type":I
    :sswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1294
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->simPhonebookReadyIndication(I)V

    .line 1295
    goto :goto_1

    .line 1282
    .end local v0    # "type":I
    :sswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1285
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->needTurnOnRadioIndication(I)V

    .line 1286
    goto :goto_1

    .line 1272
    .end local v0    # "type":I
    :sswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1275
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1276
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->modemCapabilityIndication(ILjava/util/ArrayList;)V

    .line 1277
    goto :goto_1

    .line 1262
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1265
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1266
    .local v1, "eventNoti":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->timerStatusChangedInd(ILjava/util/ArrayList;)V

    .line 1267
    goto :goto_1

    .line 1252
    .end local v0    # "type":I
    .end local v1    # "eventNoti":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_20
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1255
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1256
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->voiceRadioBearerHandoverStatusChanged(II)V

    .line 1257
    goto :goto_1

    .line 1242
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_21
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1245
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1246
    .local v1, "imsPref":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->imsPreferenceChanged(ILjava/util/ArrayList;)V

    .line 1247
    goto :goto_1

    .line 1232
    .end local v0    # "type":I
    .end local v1    # "imsPref":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_22
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1235
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1236
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->csFallback(II)V

    .line 1237
    goto :goto_1

    .line 1222
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_23
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1225
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1226
    .local v1, "acbInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->acbInfoChanged(ILjava/util/ArrayList;)V

    .line 1227
    nop

    .line 1622
    .end local v0    # "type":I
    .end local v1    # "acbInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_22
        0x3 -> :sswitch_21
        0x4 -> :sswitch_20
        0x5 -> :sswitch_1f
        0x6 -> :sswitch_1e
        0x7 -> :sswitch_1d
        0x8 -> :sswitch_1c
        0x9 -> :sswitch_1b
        0xa -> :sswitch_1a
        0xb -> :sswitch_19
        0xc -> :sswitch_18
        0xd -> :sswitch_17
        0xe -> :sswitch_16
        0xf -> :sswitch_15
        0x10 -> :sswitch_14
        0x11 -> :sswitch_13
        0x12 -> :sswitch_12
        0x13 -> :sswitch_11
        0x14 -> :sswitch_10
        0x15 -> :sswitch_f
        0x16 -> :sswitch_e
        0x17 -> :sswitch_d
        0x18 -> :sswitch_c
        0x19 -> :sswitch_b
        0x1a -> :sswitch_a
        0x1b -> :sswitch_9
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

    .line 1173
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1201
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.0::ISehRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    return-object p0

    .line 1204
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

    .line 1208
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1209
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 1163
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1195
    const/4 v0, 0x1

    return v0
.end method
