.class public final Lcom/google/common/collect/HashBiMap$EntryForKey;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public index:I

.field public final key:Ljava/lang/Object;

.field public final this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap;II)V
    .locals 0

    iput p3, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->index:I

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->index:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$EntryForKey;->updateIndex$1()V

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object p0, p0, v0

    :goto_0
    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$EntryForKey;->updateIndex()V

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object p0, p0, v0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$EntryForKey;->updateIndex$1()V

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/HashBiMap;->putInverse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget p0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->index:I

    invoke-virtual {v1, p0, p1}, Lcom/google/common/collect/HashBiMap;->replaceKeyInEntry(ILjava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$EntryForKey;->updateIndex()V

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget p0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->index:I

    invoke-virtual {v1, p0, p1}, Lcom/google/common/collect/HashBiMap;->replaceValueInEntry(ILjava/lang/Object;)V

    move-object p1, v0

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public updateIndex()V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget v2, v1, Lcom/google/common/collect/HashBiMap;->size:I

    if-gt v0, v2, :cond_0

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->index:I

    :cond_1
    return-void
.end method

.method public updateIndex$1()V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget v2, v1, Lcom/google/common/collect/HashBiMap;->size:I

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {v2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$EntryForKey;->index:I

    :cond_1
    return-void
.end method
