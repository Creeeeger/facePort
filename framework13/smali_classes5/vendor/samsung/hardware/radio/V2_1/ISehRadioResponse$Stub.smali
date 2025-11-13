.class public abstract Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "ISehRadioResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1181
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1184
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

    .line 1198
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1236
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1237
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1238
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1239
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1240
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

    .line 1210
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

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

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x52t
        -0x74t
        0x10t
        -0x3t
        -0x28t
        0x48t
        -0xdt
        -0x1ft
        -0x2t
        0x37t
        -0x5at
        -0x76t
        -0x3t
        0x0t
        0x57t
        0x55t
        0x61t
        -0xdt
        0x50t
        -0x6bt
        0x1t
        0x6at
        0x26t
        0x4et
        -0x49t
        -0x31t
        0x14t
        -0x7bt
        0x65t
        -0x6ct
        -0x45t
        -0x75t
    .end array-data

    :array_1
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

    :array_2
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1189
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.samsung.hardware.radio@2.1::ISehRadioResponse"

    const-string/jumbo v2, "vendor.samsung.hardware.radio@2.0::ISehRadioResponse"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1204
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.1::ISehRadioResponse"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1224
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 1246
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1248
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

    .line 1276
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.1::ISehRadioResponse"

    const/4 v1, 0x0

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string/jumbo v3, "vendor.samsung.hardware.radio@2.0::ISehRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1864
    :sswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->notifySyspropsChanged()V

    .line 1867
    goto/16 :goto_1

    .line 1853
    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1855
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1856
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1857
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1858
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1859
    goto/16 :goto_1

    .line 1843
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->ping()V

    .line 1846
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1848
    goto/16 :goto_1

    .line 1838
    :sswitch_3
    goto/16 :goto_1

    .line 1830
    :sswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->setHALInstrumentation()V

    .line 1833
    goto/16 :goto_1

    .line 1796
    :sswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1799
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1801
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1803
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1804
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1805
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1806
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1807
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1809
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1810
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1812
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1816
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1817
    nop

    .line 1807
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1813
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1820
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1822
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1824
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1825
    goto/16 :goto_1

    .line 1785
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1788
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1789
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1791
    goto/16 :goto_1

    .line 1773
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1776
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1777
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1778
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1780
    goto/16 :goto_1

    .line 1762
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1765
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1766
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1767
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1768
    goto/16 :goto_1

    .line 1750
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1753
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1754
    new-instance v1, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;-><init>()V

    .line 1755
    .local v1, "cardStatus":Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1756
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getIccCardStatusResponse_2_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;)V

    .line 1757
    goto/16 :goto_1

    .line 1739
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1741
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1742
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1744
    .local v1, "nrIconType":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getNrIconTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1745
    goto/16 :goto_1

    .line 1728
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "nrIconType":I
    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1730
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1731
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1732
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1733
    .local v1, "nrMode":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getNrModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1734
    goto/16 :goto_1

    .line 1718
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "nrMode":I
    :sswitch_c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1721
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1722
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->setNrModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1723
    goto/16 :goto_1

    .line 1707
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1710
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1711
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1712
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1713
    goto/16 :goto_1

    .line 1696
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1698
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1699
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1700
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1701
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1702
    goto/16 :goto_1

    .line 1686
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1688
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1689
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1690
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->setMobileDataSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1691
    goto/16 :goto_1

    .line 1676
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1678
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1679
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1680
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->selectCsgManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1681
    goto/16 :goto_1

    .line 1665
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_11
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1667
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1668
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1669
    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1670
    .local v1, "csgInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getCsgListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1671
    goto/16 :goto_1

    .line 1655
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "csgInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;>;"
    :sswitch_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1658
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1659
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1660
    goto/16 :goto_1

    .line 1644
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_13
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1646
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1647
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1648
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1649
    .local v1, "index":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1650
    goto/16 :goto_1

    .line 1632
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "index":I
    :sswitch_14
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1634
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1635
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1636
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;-><init>()V

    .line 1637
    .local v1, "simMsg":Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1638
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->readSmsFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;)V

    .line 1639
    goto/16 :goto_1

    .line 1620
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simMsg":Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;
    :sswitch_15
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1623
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1624
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;-><init>()V

    .line 1625
    .local v1, "storedMsgInfo":Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1626
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getStoredMsgCountFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;)V

    .line 1627
    goto/16 :goto_1

    .line 1608
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "storedMsgInfo":Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;
    :sswitch_16
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1611
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1612
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;-><init>()V

    .line 1613
    .local v1, "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1614
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    .line 1615
    goto/16 :goto_1

    .line 1596
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    :sswitch_17
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1599
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1600
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;-><init>()V

    .line 1601
    .restart local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1602
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    .line 1603
    goto/16 :goto_1

    .line 1584
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    :sswitch_18
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1586
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1587
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1588
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;-><init>()V

    .line 1589
    .restart local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1590
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    .line 1591
    goto/16 :goto_1

    .line 1572
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    :sswitch_19
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1575
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1576
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;-><init>()V

    .line 1577
    .restart local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1578
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    .line 1579
    goto/16 :goto_1

    .line 1560
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    :sswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1562
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1563
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1564
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;-><init>()V

    .line 1565
    .restart local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1566
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    .line 1567
    goto/16 :goto_1

    .line 1549
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;
    :sswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1552
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1553
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1554
    .local v1, "atr":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getAtrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 1555
    goto/16 :goto_1

    .line 1539
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "atr":Ljava/lang/String;
    :sswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1542
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1543
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->emergencyControlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1544
    goto/16 :goto_1

    .line 1528
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1530
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1531
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1532
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1533
    .local v1, "respEmergencySearch":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->emergencySearchResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1534
    goto/16 :goto_1

    .line 1516
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "respEmergencySearch":I
    :sswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1519
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1520
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;-><init>()V

    .line 1521
    .local v1, "configs":Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1522
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getCellBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;)V

    .line 1523
    goto/16 :goto_1

    .line 1505
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "configs":Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;
    :sswitch_1f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1508
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1509
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1510
    .local v1, "SimPhonebookAccessResp":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->accessPhonebookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1511
    goto/16 :goto_1

    .line 1493
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "SimPhonebookAccessResp":I
    :sswitch_20
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1496
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1497
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;-><init>()V

    .line 1498
    .local v1, "simPhonebookResponseInfo":Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1499
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getPhonebookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;)V

    .line 1500
    goto/16 :goto_1

    .line 1483
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPhonebookResponseInfo":Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;
    :sswitch_21
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1486
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1487
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->changeIccPersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1488
    goto/16 :goto_1

    .line 1473
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_22
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1476
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1477
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->supplyIccPersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1478
    goto/16 :goto_1

    .line 1461
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_23
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1463
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1464
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1465
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;-><init>()V

    .line 1466
    .local v1, "simLockInfo":Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1467
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getSimLockInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;)V

    .line 1468
    goto/16 :goto_1

    .line 1451
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simLockInfo":Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;
    :sswitch_24
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1454
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1455
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->setSimInitEventResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1456
    goto/16 :goto_1

    .line 1441
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_25
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1444
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1445
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->setSimOnOffResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1446
    goto/16 :goto_1

    .line 1430
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_26
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1433
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1435
    .local v1, "phonebookCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getUsimPhonebookCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1436
    goto/16 :goto_1

    .line 1418
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phonebookCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_27
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1420
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1421
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1422
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;-><init>()V

    .line 1423
    .local v1, "phonebookInfo":Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1424
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getPhonebookStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;)V

    .line 1425
    goto/16 :goto_1

    .line 1407
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phonebookInfo":Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;
    :sswitch_28
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1409
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1410
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1411
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1412
    .local v1, "m":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1413
    goto/16 :goto_1

    .line 1397
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "m":I
    :sswitch_29
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1400
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1401
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->setDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1402
    goto/16 :goto_1

    .line 1386
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1389
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1390
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1391
    .local v1, "isDisable":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1392
    goto/16 :goto_1

    .line 1376
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "isDisable":I
    :sswitch_2b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1379
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1380
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->sendEncodedUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1381
    goto/16 :goto_1

    .line 1366
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1369
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1370
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->setPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1371
    goto/16 :goto_1

    .line 1355
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1358
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1359
    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1360
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1361
    goto/16 :goto_1

    .line 1345
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;>;"
    :sswitch_2e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1348
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1349
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->setImsCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1350
    goto :goto_1

    .line 1334
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1337
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1338
    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1339
    .local v1, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1340
    goto :goto_1

    .line 1323
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;>;"
    :sswitch_30
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1326
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1327
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1328
    .local v1, "regState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1329
    goto :goto_1

    .line 1312
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "regState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_31
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1315
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1316
    invoke-static {p2}, Lvendor/samsung/hardware/radio/V2_0/SehCall;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1317
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehCall;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1318
    goto :goto_1

    .line 1302
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehCall;>;"
    :sswitch_32
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1305
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1306
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1307
    goto :goto_1

    .line 1291
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_33
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1293
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1294
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1295
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1296
    .local v1, "remainingRetries":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1297
    goto :goto_1

    .line 1279
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_34
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1281
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1282
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1283
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;-><init>()V

    .line 1284
    .local v1, "cardStatus":Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;
    invoke-virtual {v1, p2}, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1285
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;)V

    .line 1286
    nop

    .line 1876
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_34
        0x2 -> :sswitch_33
        0x3 -> :sswitch_32
        0x4 -> :sswitch_31
        0x5 -> :sswitch_30
        0x6 -> :sswitch_2f
        0x7 -> :sswitch_2e
        0x8 -> :sswitch_2d
        0x9 -> :sswitch_2c
        0xa -> :sswitch_2b
        0xb -> :sswitch_2a
        0xc -> :sswitch_29
        0xd -> :sswitch_28
        0xe -> :sswitch_27
        0xf -> :sswitch_26
        0x10 -> :sswitch_25
        0x11 -> :sswitch_24
        0x12 -> :sswitch_23
        0x13 -> :sswitch_22
        0x14 -> :sswitch_21
        0x15 -> :sswitch_20
        0x16 -> :sswitch_1f
        0x17 -> :sswitch_1e
        0x18 -> :sswitch_1d
        0x19 -> :sswitch_1c
        0x1a -> :sswitch_1b
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_19
        0x1d -> :sswitch_18
        0x1e -> :sswitch_17
        0x1f -> :sswitch_16
        0x20 -> :sswitch_15
        0x21 -> :sswitch_14
        0x22 -> :sswitch_13
        0x23 -> :sswitch_12
        0x24 -> :sswitch_11
        0x25 -> :sswitch_10
        0x26 -> :sswitch_f
        0x27 -> :sswitch_e
        0x28 -> :sswitch_d
        0x29 -> :sswitch_c
        0x2a -> :sswitch_b
        0x2b -> :sswitch_a
        0x2c -> :sswitch_9
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

    .line 1230
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1258
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.1::ISehRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    return-object p0

    .line 1261
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

    .line 1265
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 1266
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 1220
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1252
    const/4 v0, 0x1

    return v0
.end method
