.class public abstract Lorg/simpleframework/xml/stream/NodeBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PROVIDER:Lorg/simpleframework/xml/stream/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/simpleframework/xml/stream/StreamProvider;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/StreamProvider;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    new-instance v0, Lorg/simpleframework/xml/stream/PullProvider;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/PullProvider;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    new-instance v0, Lorg/simpleframework/xml/stream/DocumentProvider;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/DocumentProvider;-><init>()V

    :goto_0
    sput-object v0, Lorg/simpleframework/xml/stream/NodeBuilder;->PROVIDER:Lorg/simpleframework/xml/stream/Provider;

    return-void
.end method

.method public static write(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)Lorg/simpleframework/xml/stream/OutputDocument;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;-><init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)V

    new-instance p0, Lorg/simpleframework/xml/stream/OutputDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-direct {p1, p0}, Lorg/simpleframework/xml/stream/OutputNodeMap;-><init>(Lorg/simpleframework/xml/stream/OutputNode;)V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    sget-object p1, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    iget-object p1, v0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    iget-object v0, p1, Lorg/simpleframework/xml/stream/Formatter;->prolog:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
