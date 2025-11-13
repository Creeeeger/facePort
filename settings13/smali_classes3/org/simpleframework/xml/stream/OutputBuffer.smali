.class Lorg/simpleframework/xml/stream/OutputBuffer;
.super Ljava/lang/Object;
.source "OutputBuffer.java"


# instance fields
.field private text:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public append([C)V
    .locals 2

    .line 86
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 139
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public write(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method
