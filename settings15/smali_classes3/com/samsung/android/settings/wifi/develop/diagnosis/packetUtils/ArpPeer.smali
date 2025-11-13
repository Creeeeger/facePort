.class public final Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ETHER_ARP_TYPE:[B


# instance fields
.field public L2_BROADCAST:[B

.field public mSocketGArp:Ljava/io/FileDescriptor;


# direct methods
.method public static -$$Nest$mmacStringToByteArray(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x6

    new-array v0, p0, [B

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static -$$Nest$mmakeEthernet(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/nio/ByteBuffer;[B[B[B)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    const-string p0, "ArpPeer"

    const-string v0, "makeEthernet"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public static -$$Nest$mmakeGARP(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/nio/ByteBuffer;[B[B)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ArpPeer"

    const-string v1, "makeGARP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    sget v1, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->L2_BROADCAST:[B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->ETHER_ARP_TYPE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x8t
        0x6t
    .end array-data
.end method


# virtual methods
.method public final sendGArp(Landroid/net/LinkProperties;[BLjava/lang/String;)V
    .locals 3

    const-string v0, "ArpPeer"

    const-string/jumbo v1, "sendGarp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "myMac="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "     mMyAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$1;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Landroid/net/LinkProperties;Ljava/lang/String;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
