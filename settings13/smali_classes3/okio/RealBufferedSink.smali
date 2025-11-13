.class public final Lokio/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.kt"

# interfaces
.implements Lokio/BufferedSink;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealBufferedSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 2 RealBufferedSink.kt\nokio/internal/RealBufferedSinkKt\n*L\n1#1,141:1\n50#1:144\n50#1:149\n50#1:153\n50#1:157\n50#1:161\n50#1:165\n50#1:167\n50#1:168\n50#1:171\n50#1:175\n50#1:177\n50#1:181\n50#1:190\n50#1:198\n50#1:202\n50#1:206\n50#1:210\n50#1:214\n50#1:218\n50#1:222\n50#1:226\n50#1:230\n50#1:234\n50#1:236\n50#1:240\n50#1:242\n50#1:246\n50#1:248\n50#1:249\n50#1:259\n50#1:261\n50#1:262\n31#2,2:142\n33#2,2:145\n37#2,2:147\n39#2:150\n47#2,2:151\n49#2:154\n53#2,2:155\n55#2:158\n63#2,2:159\n65#2:162\n69#2,2:163\n71#2:166\n75#2,2:169\n77#2:172\n85#2,2:173\n87#2:176\n91#2,3:178\n94#2,5:182\n102#2,3:187\n105#2,5:191\n113#2,2:196\n115#2:199\n119#2,2:200\n121#2:203\n125#2,2:204\n127#2:207\n131#2,2:208\n133#2:211\n137#2,2:212\n139#2:215\n143#2,2:216\n145#2:219\n149#2,2:220\n151#2:223\n155#2,2:224\n157#2:227\n161#2,2:228\n163#2:231\n167#2,2:232\n169#2:235\n170#2:237\n174#2,2:238\n176#2:241\n177#2:243\n181#2,2:244\n183#2:247\n185#2,2:250\n189#2,7:252\n196#2:260\n198#2,14:263\n213#2:277\n215#2:278\n*E\n*S KotlinDebug\n*F\n+ 1 RealBufferedSink.kt\nokio/RealBufferedSink\n*L\n54#1:144\n55#1:149\n57#1:153\n58#1:157\n60#1:161\n62#1:165\n66#1:167\n77#1:168\n81#1:171\n83#1:175\n87#1:177\n92#1:181\n93#1:190\n94#1:198\n95#1:202\n96#1:206\n97#1:210\n98#1:214\n99#1:218\n100#1:222\n101#1:226\n102#1:230\n103#1:234\n103#1:236\n104#1:240\n104#1:242\n133#1:246\n133#1:248\n133#1:249\n137#1:259\n137#1:261\n137#1:262\n54#1,2:142\n54#1,2:145\n55#1,2:147\n55#1:150\n57#1,2:151\n57#1:154\n58#1,2:155\n58#1:158\n60#1,2:159\n60#1:162\n62#1,2:163\n62#1:166\n81#1,2:169\n81#1:172\n83#1,2:173\n83#1:176\n92#1,3:178\n92#1,5:182\n93#1,3:187\n93#1,5:191\n94#1,2:196\n94#1:199\n95#1,2:200\n95#1:203\n96#1,2:204\n96#1:207\n97#1,2:208\n97#1:211\n98#1,2:212\n98#1:215\n99#1,2:216\n99#1:219\n100#1,2:220\n100#1:223\n101#1,2:224\n101#1:227\n102#1,2:228\n102#1:231\n103#1,2:232\n103#1:235\n103#1:237\n104#1,2:238\n104#1:241\n104#1:243\n133#1,2:244\n133#1:247\n133#1,2:250\n137#1,7:252\n137#1:260\n137#1,14:263\n138#1:277\n139#1:278\n*E\n"
.end annotation


# instance fields
.field public final bufferField:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public closed:Z

.field public final sink:Lokio/Sink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .locals 1
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    .line 45
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    iget-object p0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    return-object p0
.end method

.method public close()V
    .locals 5

    .line 189
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 50
    :try_start_0
    iget-object v1, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 196
    iget-object v1, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    .line 50
    iget-object v2, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 50
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    .line 196
    invoke-interface {v1, v2, v3, v4}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 203
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 208
    iput-boolean v1, p0, Lokio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_3

    :goto_2
    return-void

    .line 210
    :cond_3
    throw v0
.end method

.method public emitCompleteSegments()Lokio/BufferedSink;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 167
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 168
    invoke-virtual {v0}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 169
    iget-object v2, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    .line 50
    iget-object v3, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 169
    invoke-interface {v2, v3, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_0
    return-object p0

    .line 167
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 4

    .line 181
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 183
    iget-object v0, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    .line 50
    iget-object v1, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 50
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 183
    invoke-interface {v0, v1, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 185
    :cond_0
    iget-object p0, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {p0}, Lokio/Sink;->flush()V

    return-void

    .line 181
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isOpen()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public timeout()Lokio/Timeout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 213
    iget-object p0, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {p0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 87
    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 88
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    return p1

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 38
    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 39
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write([B)Lokio/BufferedSink;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 76
    invoke-virtual {v0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    .line 77
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write([BII)Lokio/BufferedSink;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 86
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 87
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 1
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 32
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 33
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    return-void

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeByte(I)Lokio/BufferedSink;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 113
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 114
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 115
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeDecimalLong(J)Lokio/BufferedSink;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 155
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 156
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    .line 157
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 161
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 162
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    .line 163
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeInt(I)Lokio/BufferedSink;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 131
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 132
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 133
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 131
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeShort(I)Lokio/BufferedSink;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 119
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 120
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 121
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 54
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 55
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 64
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 65
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
