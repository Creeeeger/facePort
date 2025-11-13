.class public final Lorg/simpleframework/xml/stream/OutputStack$Sequence;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public cursor:I

.field public final synthetic this$0:Lorg/simpleframework/xml/stream/OutputStack;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputStack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->this$0:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->cursor:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->cursor:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->this$0:Lorg/simpleframework/xml/stream/OutputStack;

    iget v1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->cursor:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/stream/OutputNode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final remove()V
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->this$0:Lorg/simpleframework/xml/stream/OutputStack;

    iget p0, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->cursor:I

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/OutputStack;->purge(I)Lorg/simpleframework/xml/stream/OutputNode;

    return-void
.end method
