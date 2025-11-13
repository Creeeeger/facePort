.class public Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;
.super Ljava/lang/Object;
.source "BNRFile.java"


# instance fields
.field private checksum:Ljava/lang/String;

.field private fileKey:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private id:J

.field private isComplete:Z

.field private isExternal:Z

.field private nextKey:Ljava/lang/String;

.field private offset:J

.field private path:Ljava/lang/String;

.field private size:J

.field private startKey:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->startKey:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->nextKey:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 16
    iput-wide v1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->id:J

    .line 17
    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->checksum:Ljava/lang/String;

    .line 18
    iput-wide v1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->offset:J

    .line 19
    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->hash:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->fileKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "checksum",
            "startKey",
            "nextKey",
            "isComplete"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->id:J

    .line 18
    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->offset:J

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->hash:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->fileKey:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->checksum:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->startKey:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->nextKey:Ljava/lang/String;

    .line 66
    iput-boolean p5, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isComplete:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "startKey",
            "nextKey",
            "isComplete"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->id:J

    const-string v2, ""

    .line 17
    iput-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->checksum:Ljava/lang/String;

    .line 18
    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->offset:J

    .line 19
    iput-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->hash:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->fileKey:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->startKey:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->nextKey:Ljava/lang/String;

    .line 36
    iput-boolean p4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isComplete:Z

    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->checksum:Ljava/lang/String;

    return-object p0
.end method

.method public getNextKey()Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->nextKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->size:J

    return-wide v0
.end method

.method public getStartKey()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->startKey:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->timestamp:J

    return-wide v0
.end method

.method public getisExternal()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isExternal:Z

    return p0
.end method

.method public isComplete()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isComplete:Z

    return p0
.end method

.method public setOffset(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 175
    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->offset:J

    return-void
.end method

.method public setSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 127
    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->size:J

    return-void
.end method
