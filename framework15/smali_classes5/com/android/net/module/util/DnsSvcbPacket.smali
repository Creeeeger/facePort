.class public Lcom/android/net/module/util/DnsSvcbPacket;
.super Lcom/android/net/module/util/DnsPacket;
.source "DnsSvcbPacket.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist TYPE_SVCB:I = 0x40


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/net/module/util/DnsSvcbPacket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/DnsSvcbPacket;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket;-><init>([B)V

    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/net/module/util/DnsSvcbPacket;->mRecords:[Ljava/util/List;

    aget-object v2, v2, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    iget v1, v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected query type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected question count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist findSvcbRecord(Ljava/lang/String;)Lcom/android/net/module/util/DnsSvcbRecord;
    .locals 4

    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbPacket;->mRecords:[Ljava/util/List;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    instance-of v2, v1, Lcom/android/net/module/util/DnsSvcbRecord;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/net/module/util/DnsSvcbRecord;

    invoke-virtual {v2}, Lcom/android/net/module/util/DnsSvcbRecord;->getAlpns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist fromResponse([B)Lcom/android/net/module/util/DnsSvcbPacket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    new-instance v0, Lcom/android/net/module/util/DnsSvcbPacket;

    invoke-direct {v0, p0}, Lcom/android/net/module/util/DnsSvcbPacket;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbPacket;->isResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v2, "Not an answer packet"

    invoke-direct {v1, v2}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getAddressesFromAdditionalSection()Ljava/util/List;
    .locals 6
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

    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbPacket;->mRecords:[Ljava/util/List;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    iget v3, v2, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v2, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/android/net/module/util/DnsSvcbPacket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found type other than A/AAAA in Additional section: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/android/net/module/util/DnsPacket$DnsRecord;->getRR()[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/net/module/util/DnsSvcbPacket;->TAG:Ljava/lang/String;

    const-string v5, "Failed to parse address"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public blacklist getAddresses(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Lcom/android/net/module/util/DnsSvcbRecord;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/net/module/util/DnsSvcbPacket;->getAddressesFromAdditionalSection()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbRecord;->getAddresses()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getDohPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Lcom/android/net/module/util/DnsSvcbRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbRecord;->getDohPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public blacklist getPort(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Lcom/android/net/module/util/DnsSvcbRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbRecord;->getPort()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public blacklist getTargetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Lcom/android/net/module/util/DnsSvcbRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbRecord;->getTargetName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public blacklist isResponse()Z
    .locals 1

    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->isResponse()Z

    move-result v0

    return v0
.end method

.method public blacklist isSupported(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Lcom/android/net/module/util/DnsSvcbRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
