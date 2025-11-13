.class public final Landroid/ota/nano/OtaPackageMetadata$DeviceState;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceState"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;


# instance fields
.field public blacklist build:[Ljava/lang/String;

.field public blacklist buildIncremental:Ljava/lang/String;

.field public blacklist device:[Ljava/lang/String;

.field public blacklist partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

.field public blacklist sdkLevel:Ljava/lang/String;

.field public blacklist securityPatchLevel:Ljava/lang/String;

.field public blacklist timestamp:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 232
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->clear()Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 233
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .locals 2

    .line 199
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-nez v0, :cond_1

    .line 200
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-nez v1, :cond_0

    .line 203
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 205
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 207
    :cond_1
    :goto_0
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 439
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .locals 3

    .line 236
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    .line 237
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    .line 238
    const-string v0, ""

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    .line 239
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    .line 240
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    .line 242
    invoke-static {}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->emptyArray()[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    move-result-object v0

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->cachedSize:I

    .line 244
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 7

    .line 291
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 292
    .local v0, "size":I
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "dataCount":I
    const/4 v2, 0x0

    .line 295
    .local v2, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 296
    aget-object v4, v4, v3

    .line 297
    .local v4, "element":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 298
    add-int/lit8 v1, v1, 0x1

    .line 299
    nop

    .line 300
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 295
    .end local v4    # "element":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    .end local v3    # "i":I
    :cond_1
    add-int/2addr v0, v2

    .line 304
    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    .line 306
    .end local v1    # "dataCount":I
    .end local v2    # "dataSize":I
    :cond_2
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    .line 307
    const/4 v1, 0x0

    .line 308
    .restart local v1    # "dataCount":I
    const/4 v2, 0x0

    .line 309
    .restart local v2    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 310
    aget-object v4, v4, v3

    .line 311
    .restart local v4    # "element":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 313
    nop

    .line 314
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 309
    .end local v4    # "element":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 317
    .end local v3    # "i":I
    :cond_4
    add-int/2addr v0, v2

    .line 318
    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    .line 320
    .end local v1    # "dataCount":I
    .end local v2    # "dataSize":I
    :cond_5
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 321
    const/4 v1, 0x3

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    .line 322
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_6
    iget-wide v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    .line 325
    const/4 v1, 0x4

    .line 326
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_7
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 329
    const/4 v1, 0x5

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    .line 330
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_8
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 333
    const/4 v1, 0x6

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    .line 334
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_9
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-eqz v1, :cond_b

    array-length v1, v1

    if-lez v1, :cond_b

    .line 337
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    array-length v3, v2

    if-ge v1, v3, :cond_b

    .line 338
    aget-object v2, v2, v1

    .line 339
    .local v2, "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    if-eqz v2, :cond_a

    .line 340
    const/4 v3, 0x7

    .line 341
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 337
    .end local v2    # "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 345
    .end local v1    # "i":I
    :cond_b
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 354
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 358
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 359
    return-object p0

    .line 414
    :sswitch_0
    const/16 v2, 0x3a

    .line 415
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 416
    .local v2, "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-nez v3, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    array-length v4, v3

    .line 417
    .local v4, "i":I
    :goto_1
    add-int v5, v4, v2

    new-array v5, v5, [Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 419
    .local v5, "newArray":[Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    if-eqz v4, :cond_1

    .line 420
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    :cond_1
    :goto_2
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_2

    .line 423
    new-instance v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v1}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    aput-object v1, v5, v4

    .line 424
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 425
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 422
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 428
    :cond_2
    new-instance v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v1}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    aput-object v1, v5, v4

    .line 429
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 430
    iput-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 431
    goto/16 :goto_7

    .line 410
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    .line 411
    goto/16 :goto_7

    .line 406
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    .line 407
    goto/16 :goto_7

    .line 402
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    .line 403
    goto/16 :goto_7

    .line 398
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    .line 399
    goto :goto_7

    .line 381
    :sswitch_5
    const/16 v2, 0x12

    .line 382
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 383
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    if-nez v3, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    array-length v4, v3

    .line 384
    .restart local v4    # "i":I
    :goto_3
    add-int v5, v4, v2

    new-array v5, v5, [Ljava/lang/String;

    .line 385
    .local v5, "newArray":[Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 386
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    :cond_4
    :goto_4
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_5

    .line 389
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 390
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 388
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 393
    :cond_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 394
    iput-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    .line 395
    goto :goto_7

    .line 364
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Ljava/lang/String;
    :sswitch_6
    const/16 v2, 0xa

    .line 365
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 366
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    if-nez v3, :cond_6

    move v4, v1

    goto :goto_5

    :cond_6
    array-length v4, v3

    .line 367
    .restart local v4    # "i":I
    :goto_5
    add-int v5, v4, v2

    new-array v5, v5, [Ljava/lang/String;

    .line 368
    .restart local v5    # "newArray":[Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 369
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    :cond_7
    :goto_6
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_8

    .line 372
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 373
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 371
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 376
    :cond_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 377
    iput-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    .line 378
    goto :goto_7

    .line 356
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Ljava/lang/String;
    :sswitch_7
    return-object p0

    .line 434
    .end local v0    # "tag":I
    :cond_9
    :goto_7
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0xa -> :sswitch_6
        0x12 -> :sswitch_5
        0x1a -> :sswitch_4
        0x20 -> :sswitch_3
        0x2a -> :sswitch_2
        0x32 -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;

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

    .line 250
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 252
    aget-object v1, v1, v0

    .line 253
    .local v1, "element":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 254
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 251
    .end local v1    # "element":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    .line 259
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 260
    aget-object v1, v1, v0

    .line 261
    .restart local v1    # "element":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 262
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 259
    .end local v1    # "element":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 267
    const/4 v0, 0x3

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 269
    :cond_4
    iget-wide v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 270
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 272
    :cond_5
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 273
    const/4 v0, 0x5

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 275
    :cond_6
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 276
    const/4 v0, 0x6

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 278
    :cond_7
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    .line 279
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    array-length v2, v1

    if-ge v0, v2, :cond_9

    .line 280
    aget-object v1, v1, v0

    .line 281
    .local v1, "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    if-eqz v1, :cond_8

    .line 282
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 279
    .end local v1    # "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 286
    .end local v0    # "i":I
    :cond_9
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 287
    return-void
.end method
