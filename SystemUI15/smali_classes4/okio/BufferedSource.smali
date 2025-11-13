.class public interface abstract Lokio/BufferedSource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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

.method public abstract readByte()B
.end method

.method public abstract readByteString(J)Lokio/ByteString;
.end method

.method public abstract readHexadecimalUnsignedLong()J
.end method

.method public abstract readInt()I
.end method

.method public abstract readIntLe()I
.end method

.method public abstract readLongLe()J
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
