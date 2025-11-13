.class public abstract Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;
.super Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final prototype:Lcom/google/dexmaker/dx/rop/type/Prototype;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstType;Lcom/google/dexmaker/dx/rop/cst/CstNat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstType;Lcom/google/dexmaker/dx/rop/cst/CstNat;)V

    iget-object p1, p0, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->nat:Lcom/google/dexmaker/dx/rop/cst/CstNat;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstNat;->descriptor:Lcom/google/dexmaker/dx/rop/cst/CstString;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/dexmaker/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Prototype;

    move-result-object p1

    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/google/dexmaker/dx/rop/type/Prototype;

    return-void
.end method


# virtual methods
.method public final compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/google/dexmaker/dx/rop/type/Prototype;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/google/dexmaker/dx/rop/type/Prototype;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/type/Prototype;->compareTo(Lcom/google/dexmaker/dx/rop/type/Prototype;)I

    move-result p0

    return p0
.end method
