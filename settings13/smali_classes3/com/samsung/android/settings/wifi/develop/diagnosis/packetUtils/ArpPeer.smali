.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;
.super Ljava/lang/Object;
.source "ArpPeer.java"


# static fields
.field private static final ETHER_ARP_TYPE:[B


# instance fields
.field private L2_BROADCAST:[B

.field private mSocketGArp:Ljava/io/FileDescriptor;


# direct methods
.method static bridge synthetic -$$Nest$fgetL2_BROADCAST(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->L2_BROADCAST:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;)Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSocketGArp(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->mSocketGArp:Ljava/io/FileDescriptor;

    return-void
.end method

.method static bridge synthetic -$$Nest$mmacStringToByteArray(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/lang/String;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->macStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmakeEthernet(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/nio/ByteBuffer;[B[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmakeGARP(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Ljava/nio/ByteBuffer;[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->makeGARP(Ljava/nio/ByteBuffer;[B[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetETHER_ARP_TYPE()[B
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->ETHER_ARP_TYPE:[B

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 72
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

.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 71
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->L2_BROADCAST:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private macStringToByteArray(Ljava/lang/String;)[B
    .locals 4

    const/4 p0, 0x6

    new-array v0, p0, [B

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v3, v2, 0x2

    .line 326
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

.method private makeEthernet(Ljava/nio/ByteBuffer;[B[B[B)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "ArpPeer"

    const-string v0, "makeEthernet"

    .line 91
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    :goto_0
    return-void
.end method

.method private makeGARP(Ljava/nio/ByteBuffer;[B[B)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ArpPeer"

    const-string v1, "makeGARP"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 120
    sget v1, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    .line 121
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    .line 122
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->L2_BROADCAST:[B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public sendGArp(Landroid/net/LinkProperties;[BLjava/lang/String;)V
    .locals 3

    const-string v0, "ArpPeer"

    const-string v1, "sendGarp"

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myMac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "     mMyAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer$3;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;Landroid/net/LinkProperties;Ljava/lang/String;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 446
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
