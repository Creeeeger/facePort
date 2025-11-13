.class public final Lcom/google/dexmaker/TypeList;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final ropTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

.field public final types:[Lcom/google/dexmaker/TypeId;


# direct methods
.method public constructor <init>([Lcom/google/dexmaker/TypeId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/dexmaker/TypeId;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [Lcom/google/dexmaker/TypeId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/dexmaker/TypeId;

    iput-object v0, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    new-instance v0, Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;-><init>(I)V

    iput-object v0, p0, Lcom/google/dexmaker/TypeList;->ropTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/dexmaker/TypeList;->ropTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/google/dexmaker/TypeId;->ropType:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->set(ILcom/google/dexmaker/dx/rop/type/Type;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/dexmaker/TypeList;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/dexmaker/TypeList;

    iget-object p1, p1, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    iget-object p0, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    if-lez v1, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
