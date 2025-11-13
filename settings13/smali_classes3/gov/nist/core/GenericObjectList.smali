.class public abstract Lgov/nist/core/GenericObjectList;
.super Ljava/util/LinkedList;
.source "GenericObjectList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lgov/nist/core/GenericObject;",
        ">;"
    }
.end annotation


# instance fields
.field protected indentation:I

.field protected listName:Ljava/lang/String;

.field protected myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private myListIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "+",
            "Lgov/nist/core/GenericObject;",
            ">;"
        }
    .end annotation
.end field

.field protected separator:Ljava/lang/String;

.field private stringRep:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    const-string v0, ""

    .line 146
    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    const-string v0, ";"

    .line 147
    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    return-void
.end method

.method public static isMySubclass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 120
    const-class v0, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addFirst(Lgov/nist/core/GenericObject;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    goto :goto_0

    .line 309
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic addFirst(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lgov/nist/core/GenericObject;

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObjectList;->addFirst(Lgov/nist/core/GenericObject;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 128
    invoke-super {p0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/core/GenericObjectList;

    .line 129
    invoke-virtual {p0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/GenericObject;

    .line 131
    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/GenericObject;

    .line 132
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public encode()Ljava/lang/String;
    .locals 4

    .line 348
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 351
    invoke-virtual {p0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 352
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 355
    instance-of v3, v2, Lgov/nist/core/GenericObject;

    if-eqz v3, :cond_1

    .line 356
    check-cast v2, Lgov/nist/core/GenericObject;

    .line 357
    invoke-virtual {v2}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 359
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    iget-object v2, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 367
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 402
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 404
    :cond_1
    check-cast p1, Lgov/nist/core/GenericObjectList;

    .line 405
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    .line 407
    :cond_2
    invoke-virtual {p0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 408
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 409
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 410
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 413
    :cond_3
    :try_start_0
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 414
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    goto :goto_0

    :catch_0
    return v0

    .line 421
    :cond_4
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 422
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 423
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 424
    invoke-virtual {p0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 427
    :cond_5
    :try_start_1
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 428
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_5

    goto :goto_1

    :catch_1
    return v0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 374
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
