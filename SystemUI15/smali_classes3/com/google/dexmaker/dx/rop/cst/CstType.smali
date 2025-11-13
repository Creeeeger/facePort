.class public final Lcom/google/dexmaker/dx/rop/cst/CstType;
.super Lcom/google/dexmaker/dx/rop/cst/TypedConstant;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final interns:Ljava/util/HashMap;


# instance fields
.field public final type:Lcom/google/dexmaker/dx/rop/type/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstType;->interns:Ljava/util/HashMap;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->OBJECT:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->CHARACTER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->LONG_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->INTEGER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->VOID_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->CHAR_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->LONG_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->INT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    return-void
.end method

.method public constructor <init>(Lcom/google/dexmaker/dx/rop/type/Type;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/dexmaker/dx/rop/cst/TypedConstant;-><init>()V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->KNOWN_NULL:Lcom/google/dexmaker/dx/rop/type/Type;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/cst/CstType;->type:Lcom/google/dexmaker/dx/rop/type/Type;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "KNOWN_NULL is not representable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;
    .locals 2

    sget-object v0, Lcom/google/dexmaker/dx/rop/cst/CstType;->interns:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/dx/rop/cst/CstType;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-direct {v1, p0}, Lcom/google/dexmaker/dx/rop/cst/CstType;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I
    .locals 0

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstType;->type:Lcom/google/dexmaker/dx/rop/type/Type;

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstType;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstType;->type:Lcom/google/dexmaker/dx/rop/type/Type;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstType;->type:Lcom/google/dexmaker/dx/rop/type/Type;

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstType;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstType;->type:Lcom/google/dexmaker/dx/rop/type/Type;

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstType;->type:Lcom/google/dexmaker/dx/rop/type/Type;

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstType;->type:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstType;->type:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
