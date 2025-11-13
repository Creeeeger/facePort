.class public interface abstract Lokio/BufferedSource;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lokio/Source;
.implements Ljava/nio/channels/ReadableByteChannel;


# virtual methods
.method public abstract buffer()Lokio/Buffer;
.end method

.method public abstract exhausted()Z
.end method

.method public abstract getBuffer()Lokio/Buffer;
.end method

.method public abstract indexOfElement(Lokio/ByteString;)J
.end method

.method public abstract inputStream()Ljava/io/InputStream;
.end method

.method public abstract readAll(Lokio/Buffer;)J
.end method

.method public abstract readByte()B
.end method

.method public abstract readByteString(J)Lokio/ByteString;
.end method

.method public abstract readHexadecimalUnsignedLong()J
.end method

.method public abstract readInt()I
.end method

.method public abstract readShort()S
.end method

.method public abstract readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract readUtf8LineStrict()Ljava/lang/String;
.end method

.method public abstract readUtf8LineStrict(J)Ljava/lang/String;
.end method

.method public abstract request(J)Z
.end method

.method public abstract require(J)V
.end method

.method public abstract select(Lokio/Options;)I
.end method

.method public abstract skip(J)V
.end method
