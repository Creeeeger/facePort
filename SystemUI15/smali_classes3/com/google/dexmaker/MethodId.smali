.class public final Lcom/google/dexmaker/MethodId;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final declaringType:Lcom/google/dexmaker/TypeId;

.field public final name:Ljava/lang/String;

.field public final parameters:Lcom/google/dexmaker/TypeList;

.field public final returnType:Lcom/google/dexmaker/TypeId;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;Lcom/google/dexmaker/TypeList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId;",
            "Lcom/google/dexmaker/TypeId;",
            "Ljava/lang/String;",
            "Lcom/google/dexmaker/TypeList;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    iput-object p1, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    iput-object p2, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    iput-object p3, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    new-instance p2, Lcom/google/dexmaker/dx/rop/cst/CstNat;

    new-instance v0, Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-direct {v0, p3}, Lcom/google/dexmaker/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    new-instance p3, Lcom/google/dexmaker/dx/rop/cst/CstString;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p4, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    array-length v2, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p4, v3

    iget-object v4, v4, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p4, ")"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    iget-object p0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/google/dexmaker/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0, p3}, Lcom/google/dexmaker/dx/rop/cst/CstNat;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstString;Lcom/google/dexmaker/dx/rop/cst/CstString;)V

    new-instance p0, Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    iget-object p1, p1, Lcom/google/dexmaker/TypeId;->constant:Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstType;Lcom/google/dexmaker/dx/rop/cst/CstNat;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/dexmaker/MethodId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/dexmaker/MethodId;

    iget-object v0, p1, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    iget-object p0, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    invoke-virtual {p1, p0}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

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
    .locals 3

    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    const/16 v1, 0x20f

    const/16 v2, 0x1f

    invoke-static {v1, v2, v0}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    iget-object v1, v1, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    iget-object p0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
