.class public abstract Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;
.super Landroid/os/HwBinder;
.source "ISehRadio.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/V2_2/ISehRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/V2_2/ISehRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1243
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1246
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

    .line 1261
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1300
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1301
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1302
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1303
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1304
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

    .line 1273
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
        -0x4et
        -0x12t
        0x5bt
        0x1t
        -0x7ft
        -0x33t
        0x8t
        -0x25t
        0x20t
        0x0t
        0x6t
        0x7ft
        -0x3ft
        -0x3at
        -0x28t
        0x7t
        0x2t
        0x6at
        0x59t
        -0x49t
        -0x24t
        -0x1dt
        0x4ct
        0x6et
        -0x1at
        -0x6et
        -0x51t
        0x1et
        -0x79t
        0x68t
        0x13t
        0x60t
    .end array-data

    :array_1
    .array-data 1
        0x6t
        -0x59t
        0x68t
        0x7et
        0x2t
        0xft
        -0x7et
        0x8t
        -0x1at
        -0xet
        0x9t
        -0x9t
        -0x61t
        -0x3et
        -0x3ct
        -0x5t
        0x69t
        -0x15t
        0x12t
        0xet
        -0x7ft
        -0x1at
        -0x53t
        -0x6t
        -0x15t
        0x1at
        -0x45t
        -0x6et
        -0x54t
        0x2dt
        -0x53t
        -0x71t
    .end array-data

    :array_2
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

    .line 1251
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.samsung.hardware.radio@2.2::ISehRadio"

    const-string/jumbo v2, "vendor.samsung.hardware.radio@2.1::ISehRadio"

    const-string/jumbo v3, "vendor.samsung.hardware.radio@2.0::ISehRadio"

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

    .line 1267
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.2::ISehRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1288
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 1310
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1312
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

    .line 1340
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.2::ISehRadio"

    const-string/jumbo v1, "vendor.samsung.hardware.radio@2.1::ISehRadio"

    const-string v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x0

    const-string/jumbo v4, "vendor.samsung.hardware.radio@2.0::ISehRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1923
    :sswitch_0
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1925
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->notifySyspropsChanged()V

    .line 1926
    goto/16 :goto_1

    .line 1912
    :sswitch_1
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1914
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1915
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1916
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1918
    goto/16 :goto_1

    .line 1902
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1904
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->ping()V

    .line 1905
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1906
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1907
    goto/16 :goto_1

    .line 1897
    :sswitch_3
    goto/16 :goto_1

    .line 1889
    :sswitch_4
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1891
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setHALInstrumentation()V

    .line 1892
    goto/16 :goto_1

    .line 1855
    :sswitch_5
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1857
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1858
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1860
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1862
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1863
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1864
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1865
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1866
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1868
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1869
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 1871
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 1875
    invoke-virtual {v3, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1876
    nop

    .line 1866
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1872
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1879
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1881
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1883
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1884
    goto/16 :goto_1

    .line 1844
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1846
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1847
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1848
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1849
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1850
    goto/16 :goto_1

    .line 1832
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1835
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1836
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1837
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1838
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1839
    goto/16 :goto_1

    .line 1821
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1824
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1825
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1826
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1827
    goto/16 :goto_1

    .line 1811
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1813
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1814
    .local v0, "serial":I
    invoke-static/range {p2 .. p2}, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1815
    .local v1, "configurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setVendorSpecificConfiguration(ILjava/util/ArrayList;)V

    .line 1816
    goto/16 :goto_1

    .line 1802
    .end local v0    # "serial":I
    .end local v1    # "configurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;>;"
    :sswitch_a
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1805
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getVendorSpecificConfiguration(I)V

    .line 1806
    goto/16 :goto_1

    .line 1791
    .end local v0    # "serial":I
    :sswitch_b
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1793
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1794
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1795
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1796
    .local v2, "force":Z
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setNrMode_2_2(IIZ)V

    .line 1797
    goto/16 :goto_1

    .line 1782
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "force":Z
    :sswitch_c
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1784
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1785
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getNrIconType(I)V

    .line 1786
    goto/16 :goto_1

    .line 1773
    .end local v0    # "serial":I
    :sswitch_d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1776
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getNrMode(I)V

    .line 1777
    goto/16 :goto_1

    .line 1763
    .end local v0    # "serial":I
    :sswitch_e
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1766
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1767
    .restart local v1    # "mode":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setNrMode(II)V

    .line 1768
    goto/16 :goto_1

    .line 1753
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1756
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1757
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 1758
    goto/16 :goto_1

    .line 1743
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_10
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1746
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1747
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 1748
    goto/16 :goto_1

    .line 1732
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_11
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1735
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1736
    .local v1, "enabled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1737
    .local v2, "roamingEnabled":Z
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setMobileDataSetting(IZZ)V

    .line 1738
    goto/16 :goto_1

    .line 1720
    .end local v0    # "serial":I
    .end local v1    # "enabled":Z
    .end local v2    # "roamingEnabled":Z
    :sswitch_12
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1723
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1724
    .local v1, "allow":Z
    new-instance v2, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;

    invoke-direct {v2}, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;-><init>()V

    .line 1725
    .local v2, "param":Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;
    invoke-virtual {v2, v8}, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1726
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setDataAllowed(IZLvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;)V

    .line 1727
    goto/16 :goto_1

    .line 1709
    .end local v0    # "serial":I
    .end local v1    # "allow":Z
    .end local v2    # "param":Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;
    :sswitch_13
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1711
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1712
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;-><init>()V

    .line 1713
    .local v1, "csgInfo":Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1714
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->selectCsgManual(ILvendor/samsung/hardware/radio/V2_0/SehCsgInfo;)V

    .line 1715
    goto/16 :goto_1

    .line 1700
    .end local v0    # "serial":I
    .end local v1    # "csgInfo":Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;
    :sswitch_14
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1703
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getCsgList(I)V

    .line 1704
    goto/16 :goto_1

    .line 1689
    .end local v0    # "serial":I
    :sswitch_15
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1691
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1692
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;-><init>()V

    .line 1693
    .local v1, "arg":Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1694
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->writeSmsToSim(ILvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;)V

    .line 1695
    goto/16 :goto_1

    .line 1679
    .end local v0    # "serial":I
    .end local v1    # "arg":Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;
    :sswitch_16
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1682
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1683
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->readSmsFromSim(II)V

    .line 1684
    goto/16 :goto_1

    .line 1670
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_17
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1673
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getStoredMsgCountFromSim(I)V

    .line 1674
    goto/16 :goto_1

    .line 1659
    .end local v0    # "serial":I
    :sswitch_18
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1662
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 1663
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1664
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 1665
    goto/16 :goto_1

    .line 1648
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_19
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1650
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1651
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1652
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1653
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1654
    goto/16 :goto_1

    .line 1637
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_1a
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1639
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1640
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 1641
    .local v1, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1642
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 1643
    goto/16 :goto_1

    .line 1626
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_1b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1629
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 1630
    .restart local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1631
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 1632
    goto/16 :goto_1

    .line 1617
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_1c
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1619
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1620
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getAtr(I)V

    .line 1621
    goto/16 :goto_1

    .line 1607
    .end local v0    # "serial":I
    :sswitch_1d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1609
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1610
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1611
    .local v1, "command":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->emergencyControl(II)V

    .line 1612
    goto/16 :goto_1

    .line 1598
    .end local v0    # "serial":I
    .end local v1    # "command":I
    :sswitch_1e
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1600
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1601
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->emergencySearch(I)V

    .line 1602
    goto/16 :goto_1

    .line 1589
    .end local v0    # "serial":I
    :sswitch_1f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1592
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getCellBroadcastConfig(I)V

    .line 1593
    goto/16 :goto_1

    .line 1574
    .end local v0    # "serial":I
    :sswitch_20
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1577
    .local v10, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1578
    .local v11, "command":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1579
    .local v12, "fileId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1580
    .local v13, "index":I
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;-><init>()V

    move-object v14, v0

    .line 1581
    .local v14, "adnRecord":Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;
    invoke-virtual {v14, v8}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1582
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1583
    .local v15, "pin2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/V2_0/SehAdnRecord;Ljava/lang/String;)V

    .line 1584
    goto/16 :goto_1

    .line 1563
    .end local v10    # "serial":I
    .end local v11    # "command":I
    .end local v12    # "fileId":I
    .end local v13    # "index":I
    .end local v14    # "adnRecord":Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;
    .end local v15    # "pin2":Ljava/lang/String;
    :sswitch_21
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1565
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1566
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1567
    .local v1, "fileId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1568
    .local v2, "index":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getPhonebookEntry(III)V

    .line 1569
    goto/16 :goto_1

    .line 1552
    .end local v0    # "serial":I
    .end local v1    # "fileId":I
    .end local v2    # "index":I
    :sswitch_22
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1555
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1556
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1557
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1558
    goto/16 :goto_1

    .line 1541
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_23
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1544
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1545
    .local v1, "oldPass":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1546
    .local v2, "newPass":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V

    .line 1547
    goto/16 :goto_1

    .line 1531
    .end local v0    # "serial":I
    .end local v1    # "oldPass":Ljava/lang/String;
    .end local v2    # "newPass":Ljava/lang/String;
    :sswitch_24
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1533
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1534
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1535
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->supplyIccPersonalization(ILjava/lang/String;)V

    .line 1536
    goto/16 :goto_1

    .line 1520
    .end local v0    # "serial":I
    .end local v1    # "pin":Ljava/lang/String;
    :sswitch_25
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1523
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1524
    .local v1, "numOfLockType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1525
    .local v2, "lockType":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getSimLockInfo(III)V

    .line 1526
    goto/16 :goto_1

    .line 1511
    .end local v0    # "serial":I
    .end local v1    # "numOfLockType":I
    .end local v2    # "lockType":I
    :sswitch_26
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1514
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setSimInitEvent(I)V

    .line 1515
    goto/16 :goto_1

    .line 1501
    .end local v0    # "serial":I
    :sswitch_27
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1503
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1504
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1505
    .local v1, "mode":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setSimOnOff(II)V

    .line 1506
    goto/16 :goto_1

    .line 1492
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_28
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1494
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1495
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getUsimPhonebookCapability(I)V

    .line 1496
    goto/16 :goto_1

    .line 1482
    .end local v0    # "serial":I
    :sswitch_29
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1485
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1486
    .local v1, "fileId":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getPhonebookStorageInfo(II)V

    .line 1487
    goto/16 :goto_1

    .line 1473
    .end local v0    # "serial":I
    .end local v1    # "fileId":I
    :sswitch_2a
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1476
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getCnap(I)V

    .line 1477
    goto/16 :goto_1

    .line 1463
    .end local v0    # "serial":I
    :sswitch_2b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1466
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1467
    .local v1, "on":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setDisable2g(II)V

    .line 1468
    goto/16 :goto_1

    .line 1454
    .end local v0    # "serial":I
    .end local v1    # "on":I
    :sswitch_2c
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1457
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getDisable2g(I)V

    .line 1458
    goto/16 :goto_1

    .line 1443
    .end local v0    # "serial":I
    :sswitch_2d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1446
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;-><init>()V

    .line 1447
    .local v1, "encodedUssd":Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1448
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->sendEncodedUssd(ILvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;)V

    .line 1449
    goto/16 :goto_1

    .line 1432
    .end local v0    # "serial":I
    .end local v1    # "encodedUssd":Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;
    :sswitch_2e
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1435
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;-><init>()V

    .line 1436
    .local v1, "info":Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1437
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setPreferredNetworkList(ILvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;)V

    .line 1438
    goto/16 :goto_1

    .line 1423
    .end local v0    # "serial":I
    .end local v1    # "info":Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;
    :sswitch_2f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1426
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getPreferredNetworkList(I)V

    .line 1427
    goto/16 :goto_1

    .line 1413
    .end local v0    # "serial":I
    :sswitch_30
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1416
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1417
    .local v1, "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehImsCall;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setImsCallList(ILjava/util/ArrayList;)V

    .line 1418
    goto :goto_1

    .line 1404
    .end local v0    # "serial":I
    .end local v1    # "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehImsCall;>;"
    :sswitch_31
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1407
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getAvailableNetworks(I)V

    .line 1408
    goto :goto_1

    .line 1395
    .end local v0    # "serial":I
    :sswitch_32
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1398
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getImsRegistrationState(I)V

    .line 1399
    goto :goto_1

    .line 1386
    .end local v0    # "serial":I
    :sswitch_33
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1389
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getCurrentCalls(I)V

    .line 1390
    goto :goto_1

    .line 1375
    .end local v0    # "serial":I
    :sswitch_34
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1378
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehDial;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehDial;-><init>()V

    .line 1379
    .local v1, "dialInfo":Lvendor/samsung/hardware/radio/V2_0/SehDial;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1380
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->dial(ILvendor/samsung/hardware/radio/V2_0/SehDial;)V

    .line 1381
    goto :goto_1

    .line 1364
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Lvendor/samsung/hardware/radio/V2_0/SehDial;
    :sswitch_35
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1367
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1368
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1369
    .local v2, "subState":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;I)V

    .line 1370
    goto :goto_1

    .line 1355
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    .end local v2    # "subState":I
    :sswitch_36
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1358
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->getIccCardStatus(I)V

    .line 1359
    goto :goto_1

    .line 1343
    .end local v0    # "serial":I
    :sswitch_37
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1345
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;

    move-result-object v0

    .line 1346
    .local v0, "radioResponse":Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;

    move-result-object v1

    .line 1347
    .local v1, "radioIndication":Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->setResponseFunctions(Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;)V

    .line 1348
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1350
    nop

    .line 1935
    .end local v0    # "radioResponse":Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    .end local v1    # "radioIndication":Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_37
        0x2 -> :sswitch_36
        0x3 -> :sswitch_35
        0x4 -> :sswitch_34
        0x5 -> :sswitch_33
        0x6 -> :sswitch_32
        0x7 -> :sswitch_31
        0x8 -> :sswitch_30
        0x9 -> :sswitch_2f
        0xa -> :sswitch_2e
        0xb -> :sswitch_2d
        0xc -> :sswitch_2c
        0xd -> :sswitch_2b
        0xe -> :sswitch_2a
        0xf -> :sswitch_29
        0x10 -> :sswitch_28
        0x11 -> :sswitch_27
        0x12 -> :sswitch_26
        0x13 -> :sswitch_25
        0x14 -> :sswitch_24
        0x15 -> :sswitch_23
        0x16 -> :sswitch_22
        0x17 -> :sswitch_21
        0x18 -> :sswitch_20
        0x19 -> :sswitch_1f
        0x1a -> :sswitch_1e
        0x1b -> :sswitch_1d
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1b
        0x1e -> :sswitch_1a
        0x1f -> :sswitch_19
        0x20 -> :sswitch_18
        0x21 -> :sswitch_17
        0x22 -> :sswitch_16
        0x23 -> :sswitch_15
        0x24 -> :sswitch_14
        0x25 -> :sswitch_13
        0x26 -> :sswitch_12
        0x27 -> :sswitch_11
        0x28 -> :sswitch_10
        0x29 -> :sswitch_f
        0x2a -> :sswitch_e
        0x2b -> :sswitch_d
        0x2c -> :sswitch_c
        0x2d -> :sswitch_b
        0x2e -> :sswitch_a
        0x2f -> :sswitch_9
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

    .line 1294
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1322
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.2::ISehRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    return-object p0

    .line 1325
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

    .line 1329
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 1330
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 1284
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1316
    const/4 v0, 0x1

    return v0
.end method
