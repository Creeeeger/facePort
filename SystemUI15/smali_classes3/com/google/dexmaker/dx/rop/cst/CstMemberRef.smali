.class public abstract Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;
.super Lcom/google/dexmaker/dx/rop/cst/TypedConstant;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final definingClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

.field public final nat:Lcom/google/dexmaker/dx/rop/cst/CstNat;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstType;Lcom/google/dexmaker/dx/rop/cst/CstNat;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/dexmaker/dx/rop/cst/TypedConstant;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->definingClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    iput-object p2, p0, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->nat:Lcom/google/dexmaker/dx/rop/cst/CstNat;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nat == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "definingClass == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I
    .locals 2

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;

    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->definingClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    iget-object v1, p1, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->definingClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/dx/rop/cst/Constant;->compareTo(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->nat:Lcom/google/dexmaker/dx/rop/cst/CstNat;

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstNat;->name:Lcom/google/dexmaker/dx/rop/cst/CstString;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->nat:Lcom/google/dexmaker/dx/rop/cst/CstNat;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstNat;->name:Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/Constant;->compareTo(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;

    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->definingClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    iget-object v2, p1, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->definingClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-virtual {v1, v2}, Lcom/google/dexmaker/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->nat:Lcom/google/dexmaker/dx/rop/cst/CstNat;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->nat:Lcom/google/dexmaker/dx/rop/cst/CstNat;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/CstNat;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->definingClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->nat:Lcom/google/dexmaker/dx/rop/cst/CstNat;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstNat;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->definingClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    iget-object v1, v1, Lcom/google/dexmaker/dx/rop/cst/CstType;->type:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->nat:Lcom/google/dexmaker/dx/rop/cst/CstNat;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
