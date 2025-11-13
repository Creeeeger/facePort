.class public final Lcom/android/net/module/util/DnsSvcbRecord;
.super Lcom/android/net/module/util/DnsPacket$DnsRecord;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Lcom/android/net/module/annotation/VisibleForTesting;
    visibility = .enum Lcom/android/net/module/annotation/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/net/module/annotation/VisibleForTesting$Visibility;
.end annotation


# instance fields
.field public final mAllSvcParams:Landroid/util/SparseArray;

.field public final mSvcPriority:I

.field public final mTargetName:Ljava/lang/String;


# direct methods
.method public static -$$Nest$smtoKeyName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "key"

    invoke-static {p0, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "dohpath"

    goto :goto_0

    :pswitch_1
    const-string p0, "ipv6hint"

    goto :goto_0

    :pswitch_2
    const-string p0, "ech"

    goto :goto_0

    :pswitch_3
    const-string p0, "ipv4hint"

    goto :goto_0

    :pswitch_4
    const-string p0, "port"

    goto :goto_0

    :pswitch_5
    const-string p0, "no-default-alpn"

    goto :goto_0

    :pswitch_6
    const-string p0, "alpn"

    goto :goto_0

    :pswitch_7
    const-string p0, "mandatory"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 2
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Lcom/android/net/module/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/android/net/module/annotation/VisibleForTesting;
        visibility = .enum Lcom/android/net/module/annotation/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/net/module/annotation/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/net/module/util/DnsPacket$DnsRecord;-><init>(ILjava/nio/ByteBuffer;)V

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    iget p2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    const/16 v0, 0x40

    if-ne p2, v0, :cond_9

    iget p2, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsClass:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mSvcPriority:I

    const-string p1, ""

    iput-object p1, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mSvcPriority:I

    invoke-static {p1, p2, p2}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_6

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;

    invoke-direct {v0, p2, p1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;-><init>(ILjava/nio/ByteBuffer;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :pswitch_0
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;

    invoke-direct {v0, p1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :pswitch_1
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;

    const/16 p2, 0x10

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1, p2}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;-><init>(ILjava/nio/ByteBuffer;I)V

    goto :goto_2

    :pswitch_2
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamEch;

    const/4 p2, 0x5

    invoke-direct {v0, p2, p1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;-><init>(ILjava/nio/ByteBuffer;)V

    goto :goto_2

    :pswitch_3
    new-instance p2, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;

    invoke-direct {p2, v0, p1, v0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;-><init>(ILjava/nio/ByteBuffer;I)V

    move-object v0, p2

    goto :goto_2

    :pswitch_4
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;

    invoke-direct {v0, p1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :pswitch_5
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;

    const/4 p2, 0x2

    invoke-direct {v0, p2}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "no-default-alpn value must be empty"

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;

    invoke-direct {v0, p1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :pswitch_7
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;

    invoke-direct {v0, p1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object p2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    iget v1, v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;->mKey:I

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "Invalid DnsSvcbRecord, key "

    const-string p2, " is repeated"

    invoke-static {v1, p1, p2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    new-instance p1, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p2, "Malformed packet"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p2, p1, Lcom/android/net/module/util/DnsPacket$ParseException;->reason:Ljava/lang/String;

    throw p1

    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p0

    if-nez p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid DnsSvcbRecord. Got "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " remaining bytes after parsing"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse SVCB target name, name size is too long: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "SVCB rdata is empty"

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p1, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "incorrect nsClass: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsClass:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "incorrect nsType: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sliceAndAdvance(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Lcom/android/net/module/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/android/net/module/annotation/VisibleForTesting;
        visibility = .enum Lcom/android/net/module/annotation/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/net/module/annotation/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getAddresses()Ljava/util/List;
    .locals 3
    .annotation build Lcom/android/net/module/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/net/module/annotation/VisibleForTesting;
        visibility = .enum Lcom/android/net/module/annotation/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/net/module/annotation/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;->mValue:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;->mValue:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public getAlpns()Ljava/util/List;
    .locals 1
    .annotation build Lcom/android/net/module/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/net/module/annotation/VisibleForTesting;
        visibility = .enum Lcom/android/net/module/annotation/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/net/module/annotation/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;->mValue:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDohPath()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/net/module/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/net/module/annotation/VisibleForTesting;
        visibility = .enum Lcom/android/net/module/annotation/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/net/module/annotation/VisibleForTesting$Visibility;
    .end annotation

    iget-object p0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;->mValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getPort()I
    .locals 1
    .annotation build Lcom/android/net/module/annotation/VisibleForTesting;
        visibility = .enum Lcom/android/net/module/annotation/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/net/module/annotation/VisibleForTesting$Visibility;
    .end annotation

    iget-object p0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;->mValue:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTargetName()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/net/module/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/net/module/annotation/VisibleForTesting;
        visibility = .enum Lcom/android/net/module/annotation/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/net/module/annotation/VisibleForTesting$Visibility;
    .end annotation

    iget-object p0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->rType:I

    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, " IN SVCB"

    invoke-static {v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " IN SVCB "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mSvcPriority:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
