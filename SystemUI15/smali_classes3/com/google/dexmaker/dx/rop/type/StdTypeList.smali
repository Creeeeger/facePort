.class public final Lcom/google/dexmaker/dx/rop/type/StdTypeList;
.super Lcom/google/dexmaker/dx/util/FixedSizeList;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;-><init>(I)V

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->INT:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v1, Lcom/google/dexmaker/dx/rop/type/Type;->LONG:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v1}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v2, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v2}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v3, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v3}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v4, Lcom/google/dexmaker/dx/rop/type/Type;->OBJECT:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v4}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v5, Lcom/google/dexmaker/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v5}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v5, Lcom/google/dexmaker/dx/rop/type/Type;->THROWABLE:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v5}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v0, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v1, v1}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v2, v2}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v3, v3}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v4, v4}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v0, v4}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v1, v4}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v2, v4}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v3, v4}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v1, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v5, Lcom/google/dexmaker/dx/rop/type/Type;->INT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v5, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v6, Lcom/google/dexmaker/dx/rop/type/Type;->LONG_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v6, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v7, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v7, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v8, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v9, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v10, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v10, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v11, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v11, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v12, Lcom/google/dexmaker/dx/rop/type/Type;->CHAR_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v12, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    sget-object v13, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v13, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v0, v5, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v1, v6, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v2, v7, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v3, v8, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v4, v9, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v0, v10, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v0, v11, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v0, v12, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    invoke-static {v0, v13, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method public static make(Lcom/google/dexmaker/dx/rop/type/Type;)V
    .locals 2

    new-instance v0, Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->set(ILcom/google/dexmaker/dx/rop/type/Type;)V

    return-void
.end method

.method public static make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V
    .locals 2

    new-instance v0, Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->set(ILcom/google/dexmaker/dx/rop/type/Type;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->set(ILcom/google/dexmaker/dx/rop/type/Type;)V

    return-void
.end method

.method public static make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)V
    .locals 2

    new-instance v0, Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->set(ILcom/google/dexmaker/dx/rop/type/Type;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->set(ILcom/google/dexmaker/dx/rop/type/Type;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0, p2}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->set(ILcom/google/dexmaker/dx/rop/type/Type;)V

    return-void
.end method


# virtual methods
.method public final get(I)Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 2

    const-string/jumbo v0, "unset: "

    :try_start_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/dexmaker/dx/rop/type/Type;

    return-object p0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    if-gez p1, :cond_1

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "n < 0"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "n >= size()"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final set(ILcom/google/dexmaker/dx/rop/type/Type;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/dexmaker/dx/util/MutabilityControl;->mutable:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aput-object p2, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    if-gez p1, :cond_0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "n < 0"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "n >= size()"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/google/dexmaker/dx/util/MutabilityException;

    const-string p1, "immutable instance"

    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
