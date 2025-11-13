.class public Lgov/nist/core/NameValueList;
.super Ljava/lang/Object;
.source "NameValueList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lgov/nist/core/NameValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x611edb317cd0ac13L


# instance fields
.field private hmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ";"

    .line 67
    iput-object v0, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ";"

    .line 72
    iput-object v0, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 74
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 279
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 216
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    .line 217
    iget-object v1, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 218
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 219
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValue;

    invoke-virtual {v1}, Lgov/nist/core/NameValue;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValue;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 287
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 295
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    .line 94
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    instance-of v2, v1, Lgov/nist/core/GenericObject;

    if-eqz v2, :cond_0

    .line 100
    check-cast v1, Lgov/nist/core/GenericObject;

    .line 101
    invoke-virtual {v1, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 103
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lgov/nist/core/NameValue;",
            ">;>;"
        }
    .end annotation

    .line 303
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 150
    :cond_1
    check-cast p1, Lgov/nist/core/NameValueList;

    .line 152
    iget-object v1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p1, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    .line 155
    :cond_2
    iget-object v1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    invoke-virtual {p0, v2}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v3

    .line 160
    iget-object v4, p1, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/NameValue;

    if-nez v2, :cond_4

    return v0

    .line 163
    :cond_4
    invoke-virtual {v2, v3}, Lgov/nist/core/NameValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public get(Ljava/lang/Object;)Lgov/nist/core/NameValue;
    .locals 0

    .line 311
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/core/NameValue;

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->get(Ljava/lang/Object;)Lgov/nist/core/NameValue;

    move-result-object p0

    return-object p0
.end method

.method public getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;
    .locals 0

    .line 186
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/core/NameValue;

    return-object p0
.end method

.method public getNames()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 264
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 267
    :cond_0
    instance-of p1, p0, Lgov/nist/core/GenericObject;

    if-eqz p1, :cond_1

    .line 268
    check-cast p0, Lgov/nist/core/GenericObject;

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 270
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 175
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 352
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 236
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Lgov/nist/core/NameValue;)Lgov/nist/core/NameValue;
    .locals 0

    .line 327
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/core/NameValue;

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lgov/nist/core/NameValue;

    invoke-virtual {p0, p1, p2}, Lgov/nist/core/NameValueList;->put(Ljava/lang/String;Lgov/nist/core/NameValue;)Lgov/nist/core/NameValue;

    move-result-object p0

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Lgov/nist/core/NameValue;",
            ">;)V"
        }
    .end annotation

    .line 331
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Lgov/nist/core/NameValue;
    .locals 0

    .line 339
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/core/NameValue;

    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->remove(Ljava/lang/Object;)Lgov/nist/core/NameValue;

    move-result-object p0

    return-object p0
.end method

.method public set(Lgov/nist/core/NameValue;)V
    .locals 1

    .line 124
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 131
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 0

    .line 229
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 116
    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public values()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object p0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
