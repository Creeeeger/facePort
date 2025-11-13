.class public abstract Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;
.super Landroid/os/HwBinder;
.source "ISehIfaa.java"

# interfaces
.implements Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 530
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 533
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

    .line 546
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 583
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 584
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 585
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 586
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 587
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

    .line 558
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
        -0x2ft
        0x5dt
        -0x5dt
        -0x4t
        -0x4ct
        0x1t
        -0x55t
        0x1bt
        -0x37t
        -0x43t
        0x21t
        0x4ft
        0x1et
        -0x35t
        0x7ct
        -0x20t
        0x21t
        -0x7bt
        -0x1bt
        -0x47t
        0x3dt
        0x3at
        -0x1et
        -0x77t
        0x37t
        0x6ft
        -0x6t
        0x4et
        -0x36t
        -0x46t
        -0x32t
        -0x4t
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

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.samsung.hardware.ifaa@1.0::ISehIfaa"

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

    .line 552
    const-string/jumbo v0, "vendor.samsung.hardware.ifaa@1.0::ISehIfaa"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 571
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 593
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 595
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

    .line 623
    const-string/jumbo v0, "vendor.samsung.hardware.ifaa@1.0::ISehIfaa"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 784
    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->notifySyspropsChanged()V

    .line 787
    goto/16 :goto_1

    .line 773
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 776
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 777
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 778
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 779
    goto/16 :goto_1

    .line 763
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->ping()V

    .line 766
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 767
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 768
    goto/16 :goto_1

    .line 758
    :sswitch_3
    goto/16 :goto_1

    .line 750
    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->setHALInstrumentation()V

    .line 753
    goto/16 :goto_1

    .line 716
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 719
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 721
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 723
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 724
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 725
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 726
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 727
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 729
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 730
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 732
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 736
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 737
    nop

    .line 727
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 733
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 740
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 742
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 744
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 745
    goto/16 :goto_1

    .line 705
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 709
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 711
    goto :goto_1

    .line 693
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 696
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 697
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 698
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 699
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 700
    goto :goto_1

    .line 682
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 685
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 686
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 687
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 688
    goto :goto_1

    .line 665
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    new-instance v0, Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;

    invoke-direct {v0}, Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;-><init>()V

    .line 668
    .local v0, "in":Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;
    invoke-virtual {v0, p2}, Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 669
    new-instance v1, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub$2;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub$2;-><init>(Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->skpm_provisioning_cmd(Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$skpm_provisioning_cmdCallback;)V

    .line 677
    goto :goto_1

    .line 654
    .end local v0    # "in":Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->close_ifaa_ta()I

    move-result v0

    .line 657
    .local v0, "_hidl_out_res":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 658
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 659
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 660
    goto :goto_1

    .line 643
    .end local v0    # "_hidl_out_res":I
    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->open_ifaa_ta()I

    move-result v0

    .line 646
    .restart local v0    # "_hidl_out_res":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 647
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 648
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 649
    goto :goto_1

    .line 626
    .end local v0    # "_hidl_out_res":I
    :sswitch_c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    new-instance v0, Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;

    invoke-direct {v0}, Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;-><init>()V

    .line 629
    .local v0, "in":Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;
    invoke-virtual {v0, p2}, Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 630
    new-instance v1, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub$1;-><init>(Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->invoke_cmd(Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$invoke_cmdCallback;)V

    .line 638
    nop

    .line 796
    .end local v0    # "in":Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
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

    .line 577
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 605
    const-string/jumbo v0, "vendor.samsung.hardware.ifaa@1.0::ISehIfaa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    return-object p0

    .line 608
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

    .line 612
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->registerService(Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 567
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 599
    const/4 v0, 0x1

    return v0
.end method
