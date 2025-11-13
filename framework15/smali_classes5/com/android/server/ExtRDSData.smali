.class public Lcom/android/server/ExtRDSData;
.super Ljava/lang/Object;
.source "ExtRDSData.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ExtRDSData"


# instance fields
.field blacklist blera:I

.field blacklist blerb:I

.field blacklist blerc:I

.field blacklist blerd:I

.field blacklist rdsa:[B

.field blacklist rdsb:[B

.field blacklist rdsc:[B

.field blacklist rdsd:[B

.field private blacklist rssi:I


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/ExtRDSData;->rdsa:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/ExtRDSData;->rdsb:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/ExtRDSData;->rdsc:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/ExtRDSData;->rdsd:[B

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    const/4 v3, 0x6

    shr-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/ExtRDSData;->blera:I

    aget-byte v2, p1, v1

    const/4 v4, 0x4

    shr-int/2addr v2, v4

    const/4 v5, 0x3

    and-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/ExtRDSData;->blerb:I

    aget-byte v2, p1, v1

    shr-int/2addr v2, v0

    and-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/ExtRDSData;->blerc:I

    aget-byte v2, p1, v1

    and-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/ExtRDSData;->blerd:I

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/android/server/ExtRDSData;->rssi:I

    iget-object v0, p0, Lcom/android/server/ExtRDSData;->rdsa:[B

    aget-byte v2, p1, v4

    const/4 v4, 0x0

    aput-byte v2, v0, v4

    iget-object v0, p0, Lcom/android/server/ExtRDSData;->rdsa:[B

    aget-byte v2, p1, v5

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/server/ExtRDSData;->rdsb:[B

    aget-byte v2, p1, v3

    aput-byte v2, v0, v4

    iget-object v0, p0, Lcom/android/server/ExtRDSData;->rdsb:[B

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/server/ExtRDSData;->rdsc:[B

    const/16 v2, 0x8

    aget-byte v2, p1, v2

    aput-byte v2, v0, v4

    iget-object v0, p0, Lcom/android/server/ExtRDSData;->rdsc:[B

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/server/ExtRDSData;->rdsd:[B

    const/16 v2, 0xa

    aget-byte v2, p1, v2

    aput-byte v2, v0, v4

    iget-object v0, p0, Lcom/android/server/ExtRDSData;->rdsd:[B

    const/16 v2, 0x9

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private blacklist Log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ExtRDSData"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logPackage()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rdsa: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ExtRDSData;->rdsa:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ExtRDSData;->rdsa:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -- blersa: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/ExtRDSData;->blera:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ExtRDSData;->Log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rdsb: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ExtRDSData;->rdsb:[B

    aget-byte v3, v3, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ExtRDSData;->rdsb:[B

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -- blersb: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/ExtRDSData;->blerb:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ExtRDSData;->Log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rdsc: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v3, v3, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -- blersc: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/ExtRDSData;->blerc:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ExtRDSData;->Log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rdsd: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v2, v3, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v1, v1, v4

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- blersd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ExtRDSData;->blerd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ExtRDSData;->Log(Ljava/lang/String;)V

    return-void
.end method
