.class public final Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OtaMetadata"
.end annotation


# static fields
.field public static final blacklist AB:I = 0x1

.field public static final blacklist BLOCK:I = 0x2

.field public static final blacklist BRICK:I = 0x3

.field public static final blacklist UNKNOWN:I

.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;


# instance fields
.field public blacklist downgrade:Z

.field public blacklist postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

.field public blacklist precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

.field public blacklist propertyFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist requiredCache:J

.field public blacklist retrofitDynamicPartitions:Z

.field public blacklist splDowngrade:Z

.field public blacklist type:I

.field public blacklist wipe:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 753
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 754
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->clear()Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    .line 755
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;
    .locals 2

    .line 715
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    if-nez v0, :cond_1

    .line 716
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_0
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    if-nez v1, :cond_0

    .line 719
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    .line 721
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 723
    :cond_1
    :goto_0
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 936
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 930
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;
    .locals 3

    .line 758
    const/4 v0, 0x0

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->type:I

    .line 759
    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->wipe:Z

    .line 760
    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->downgrade:Z

    .line 761
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->propertyFiles:Ljava/util/Map;

    .line 762
    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 763
    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 764
    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->retrofitDynamicPartitions:Z

    .line 765
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->requiredCache:J

    .line 766
    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->splDowngrade:Z

    .line 767
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->cachedSize:I

    .line 768
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 7

    .line 809
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 810
    .local v0, "size":I
    iget v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->type:I

    if-eqz v1, :cond_0

    .line 811
    const/4 v2, 0x1

    .line 812
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 814
    :cond_0
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->wipe:Z

    if-eqz v1, :cond_1

    .line 815
    const/4 v2, 0x2

    .line 816
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 818
    :cond_1
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->downgrade:Z

    if-eqz v1, :cond_2

    .line 819
    const/4 v2, 0x3

    .line 820
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 822
    :cond_2
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->propertyFiles:Ljava/util/Map;

    const/16 v2, 0x9

    if-eqz v1, :cond_3

    .line 823
    const/4 v3, 0x4

    invoke-static {v1, v3, v2, v2}, Lcom/android/framework/protobuf/nano/InternalNano;->computeMapFieldSize(Ljava/util/Map;III)I

    move-result v1

    add-int/2addr v0, v1

    .line 828
    :cond_3
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-eqz v1, :cond_4

    .line 829
    const/4 v3, 0x5

    .line 830
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 832
    :cond_4
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-eqz v1, :cond_5

    .line 833
    const/4 v3, 0x6

    .line 834
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 836
    :cond_5
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->retrofitDynamicPartitions:Z

    if-eqz v1, :cond_6

    .line 837
    const/4 v3, 0x7

    .line 838
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 840
    :cond_6
    iget-wide v3, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->requiredCache:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    .line 841
    const/16 v1, 0x8

    .line 842
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 844
    :cond_7
    iget-boolean v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->splDowngrade:Z

    if-eqz v1, :cond_8

    .line 845
    nop

    .line 846
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 848
    :cond_8
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;
    .locals 10
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    invoke-static {}, Lcom/android/framework/protobuf/nano/MapFactories;->getMapFactory()Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;

    move-result-object v8

    .line 858
    .local v8, "mapFactory":Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v9

    .line 859
    .local v9, "tag":I
    sparse-switch v9, :sswitch_data_0

    .line 863
    invoke-static {p1, v9}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 864
    return-object p0

    .line 921
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->splDowngrade:Z

    goto :goto_2

    .line 917
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->requiredCache:J

    .line 918
    goto :goto_2

    .line 913
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->retrofitDynamicPartitions:Z

    .line 914
    goto :goto_2

    .line 906
    :sswitch_3
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-nez v0, :cond_0

    .line 907
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;-><init>()V

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 909
    :cond_0
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 910
    goto :goto_2

    .line 899
    :sswitch_4
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-nez v0, :cond_1

    .line 900
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;-><init>()V

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 902
    :cond_1
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 903
    goto :goto_2

    .line 889
    :sswitch_5
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->propertyFiles:Ljava/util/Map;

    const/16 v3, 0x9

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v7, 0x12

    move-object v0, p1

    move-object v2, v8

    invoke-static/range {v0 .. v7}, Lcom/android/framework/protobuf/nano/InternalNano;->mergeMapEntry(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;Ljava/util/Map;Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;IILjava/lang/Object;II)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->propertyFiles:Ljava/util/Map;

    .line 896
    goto :goto_2

    .line 885
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->downgrade:Z

    .line 886
    goto :goto_2

    .line 881
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->wipe:Z

    .line 882
    goto :goto_2

    .line 869
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 870
    .local v0, "value":I
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 875
    :pswitch_0
    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->type:I

    .line 878
    :goto_1
    goto :goto_2

    .line 861
    .end local v0    # "value":I
    :sswitch_9
    return-object p0

    .line 925
    .end local v9    # "tag":I
    :cond_2
    :goto_2
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x8 -> :sswitch_8
        0x10 -> :sswitch_7
        0x18 -> :sswitch_6
        0x22 -> :sswitch_5
        0x2a -> :sswitch_4
        0x32 -> :sswitch_3
        0x38 -> :sswitch_2
        0x40 -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    iget v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->type:I

    if-eqz v0, :cond_0

    .line 775
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 777
    :cond_0
    iget-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->wipe:Z

    if-eqz v0, :cond_1

    .line 778
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 780
    :cond_1
    iget-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->downgrade:Z

    if-eqz v0, :cond_2

    .line 781
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 783
    :cond_2
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->propertyFiles:Ljava/util/Map;

    const/16 v1, 0x9

    if-eqz v0, :cond_3

    .line 784
    const/4 v2, 0x4

    invoke-static {p1, v0, v2, v1, v1}, Lcom/android/framework/protobuf/nano/InternalNano;->serializeMapField(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;Ljava/util/Map;III)V

    .line 789
    :cond_3
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->precondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-eqz v0, :cond_4

    .line 790
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 792
    :cond_4
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->postcondition:Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-eqz v0, :cond_5

    .line 793
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 795
    :cond_5
    iget-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->retrofitDynamicPartitions:Z

    if-eqz v0, :cond_6

    .line 796
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 798
    :cond_6
    iget-wide v2, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->requiredCache:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 799
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 801
    :cond_7
    iget-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$OtaMetadata;->splDowngrade:Z

    if-eqz v0, :cond_8

    .line 802
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 804
    :cond_8
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 805
    return-void
.end method
