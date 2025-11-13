.class public final Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public expectedModCount:I

.field public lastReturned:Lcom/google/gson/internal/LinkedTreeMap$Node;

.field public next:Lcom/google/gson/internal/LinkedTreeMap$Node;

.field public final synthetic this$0:Lcom/google/gson/internal/LinkedTreeMap;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;I)V
    .locals 0

    iput p2, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object p2, p1, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object p2, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object p2, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->lastReturned:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget p1, p1, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iput p1, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->next$com$google$gson$internal$LinkedTreeMap$LinkedTreeMapIterator()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->nextNode()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object p0

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next$com$google$gson$internal$LinkedTreeMap$LinkedTreeMapIterator()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->nextNode()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object p0

    return-object p0
.end method

.method public final nextNode()Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v2, v1, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iget v2, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->expectedModCount:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->lastReturned:Lcom/google/gson/internal/LinkedTreeMap$Node;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->lastReturned:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->lastReturned:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->expectedModCount:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
