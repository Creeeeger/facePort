.class public Lcom/samsung/android/graphics/spr/document/SprInputStream;
.super Ljava/lang/Object;
.source "SprInputStream.java"


# instance fields
.field private blacklist in:Ljava/io/DataInputStream;

.field public blacklist mAnimationObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mMajorVersion:S

.field private blacklist mMark:J

.field public blacklist mMinorVersion:S

.field private blacklist mPosition:J


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 15
    iput-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMark:J

    .line 20
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getPosition()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    return-wide v0
.end method

.method public declared-synchronized blacklist mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->mark(I)V

    .line 25
    iget-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    iput-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    .line 23
    .end local p0    # "this":Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 30
    .local v0, "v":I
    if-ltz v0, :cond_0

    .line 31
    iget-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 33
    :cond_0
    return v0
.end method

.method public blacklist read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 38
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 39
    iget-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 42
    :cond_0
    return v0
.end method

.method public blacklist readByte()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 85
    .local v0, "value":B
    iget-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 86
    return v0
.end method

.method public blacklist readFloat()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 79
    .local v0, "value":F
    iget-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 80
    return v0
.end method

.method public blacklist readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 67
    .local v0, "value":I
    iget-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 68
    return v0
.end method

.method public blacklist readShort()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 73
    .local v0, "value":S
    iget-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 74
    return v0
.end method

.method public declared-synchronized blacklist reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->reset()V

    .line 50
    iget-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMark:J

    iput-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 47
    .end local p0    # "this":Lcom/samsung/android/graphics/spr/document/SprInputStream;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist skip(J)J
    .locals 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v0

    .line 55
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 56
    iget-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mPosition:J

    .line 58
    :cond_0
    return-wide v0
.end method
