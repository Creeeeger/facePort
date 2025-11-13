.class public Landroid/filterfw/core/SerializedFrame;
.super Landroid/filterfw/core/Frame;
.source "SerializedFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;,
        Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;
    }
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_CAPACITY:I = 0x40


# instance fields
.field private greylist-max-o mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

.field private greylist-max-o mObjectOut:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor greylist-max-o <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SerializedFrame;->setReusable(Z)V

    :try_start_0
    new-instance v0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, p0, v1}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;-><init>(Landroid/filterfw/core/SerializedFrame;I)V

    iput-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    new-instance v0, Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-virtual {v0}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->markHeaderEnd()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not create serialization streams for SerializedFrame!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final greylist-max-o deserializeObjectValue()Ljava/lang/Object;
    .locals 5

    const-string v0, "!"

    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-virtual {v1}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->getInputStream()Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;

    move-result-object v1

    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to deserialize object of unknown class in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not deserialize object in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final greylist-max-o serializeObjectValue(Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-virtual {v0}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->reset()V

    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not serialize object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static greylist-max-o wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SerializedFrame;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    new-instance v1, Landroid/filterfw/core/SerializedFrame;

    invoke-direct {v1, v0, p1}, Landroid/filterfw/core/SerializedFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    invoke-virtual {v1, p0}, Landroid/filterfw/core/SerializedFrame;->setObjectValue(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public greylist-max-o getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public greylist-max-o getData()Ljava/nio/ByteBuffer;
    .locals 2

    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public greylist-max-o getFloats()[F
    .locals 2

    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [F

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, [F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public greylist-max-o getInts()[I
    .locals 2

    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [I

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, [I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public greylist-max-o getObjectValue()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o hasNativeAllocation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o releaseNativeAllocation()V
    .locals 0

    return-void
.end method

.method public greylist-max-o setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist-max-o setData(Ljava/nio/ByteBuffer;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist-max-o setFloats([F)V
    .locals 0

    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected greylist-max-o setGenericObjectValue(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/filterfw/core/SerializedFrame;->serializeObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist-max-o setInts([I)V
    .locals 0

    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedFrame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
