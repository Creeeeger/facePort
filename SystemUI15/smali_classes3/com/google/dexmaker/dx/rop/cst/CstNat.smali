.class public final Lcom/google/dexmaker/dx/rop/cst/CstNat;
.super Lcom/google/dexmaker/dx/rop/cst/Constant;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final descriptor:Lcom/google/dexmaker/dx/rop/cst/CstString;

.field public final name:Lcom/google/dexmaker/dx/rop/cst/CstString;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/dexmaker/dx/rop/cst/CstNat;

    new-instance v1, Lcom/google/dexmaker/dx/rop/cst/CstString;

    const-string v2, "TYPE"

    invoke-direct {v1, v2}, Lcom/google/dexmaker/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/dexmaker/dx/rop/cst/CstString;

    const-string v3, "Ljava/lang/Class;"

    invoke-direct {v2, v3}, Lcom/google/dexmaker/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/dx/rop/cst/CstNat;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstString;Lcom/google/dexmaker/dx/rop/cst/CstString;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstString;Lcom/google/dexmaker/dx/rop/cst/CstString;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/dexmaker/dx/rop/cst/Constant;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/cst/CstNat;->name:Lcom/google/dexmaker/dx/rop/cst/CstString;

    iput-object p2, p0, Lcom/google/dexmaker/dx/rop/cst/CstNat;->descriptor:Lcom/google/dexmaker/dx/rop/cst/CstString;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "descriptor == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I
    .locals 2

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstNat;

    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstNat;->name:Lcom/google/dexmaker/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/google/dexmaker/dx/rop/cst/CstNat;->name:Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/dx/rop/cst/Constant;->compareTo(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstNat;->descriptor:Lcom/google/dexmaker/dx/rop/cst/CstString;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstNat;->descriptor:Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/Constant;->compareTo(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstNat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstNat;

    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstNat;->name:Lcom/google/dexmaker/dx/rop/cst/CstString;

    iget-object v2, p1, Lcom/google/dexmaker/dx/rop/cst/CstNat;->name:Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {v0, v2}, Lcom/google/dexmaker/dx/rop/cst/CstString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstNat;->descriptor:Lcom/google/dexmaker/dx/rop/cst/CstString;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstNat;->descriptor:Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/CstString;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstNat;->name:Lcom/google/dexmaker/dx/rop/cst/CstString;

    iget-object v0, v0, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstNat;->descriptor:Lcom/google/dexmaker/dx/rop/cst/CstString;

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/cst/CstNat;->name:Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstNat;->descriptor:Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
