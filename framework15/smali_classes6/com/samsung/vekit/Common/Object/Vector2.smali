.class public Lcom/samsung/vekit/Common/Object/Vector2;
.super Ljava/lang/Object;
.source "Vector2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist X:I

.field private final blacklist Y:I

.field blacklist data:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Object/Vector2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector2<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->X:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->Y:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector2;->getX()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector2;->getY()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/vekit/Common/Object/Vector2;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->X:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->Y:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->X:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/vekit/Common/Object/Vector2;->Y:I

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist getX()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getY()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setX(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setY(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist toArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Vector2;->data:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
