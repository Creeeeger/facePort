.class public final Lcom/google/dexmaker/TypeId;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BOOLEAN:Lcom/google/dexmaker/TypeId;

.field public static final BYTE:Lcom/google/dexmaker/TypeId;

.field public static final CHAR:Lcom/google/dexmaker/TypeId;

.field public static final DOUBLE:Lcom/google/dexmaker/TypeId;

.field public static final FLOAT:Lcom/google/dexmaker/TypeId;

.field public static final INT:Lcom/google/dexmaker/TypeId;

.field public static final LONG:Lcom/google/dexmaker/TypeId;

.field public static final PRIMITIVE_TO_TYPE:Ljava/util/Map;

.field public static final SHORT:Lcom/google/dexmaker/TypeId;


# instance fields
.field public final constant:Lcom/google/dexmaker/dx/rop/cst/CstType;

.field public final name:Ljava/lang/String;

.field public final ropType:Lcom/google/dexmaker/dx/rop/type/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sput-object v0, Lcom/google/dexmaker/TypeId;->BOOLEAN:Lcom/google/dexmaker/TypeId;

    new-instance v1, Lcom/google/dexmaker/TypeId;

    sget-object v2, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-direct {v1, v2}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sput-object v1, Lcom/google/dexmaker/TypeId;->BYTE:Lcom/google/dexmaker/TypeId;

    new-instance v2, Lcom/google/dexmaker/TypeId;

    sget-object v3, Lcom/google/dexmaker/dx/rop/type/Type;->CHAR:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-direct {v2, v3}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sput-object v2, Lcom/google/dexmaker/TypeId;->CHAR:Lcom/google/dexmaker/TypeId;

    new-instance v3, Lcom/google/dexmaker/TypeId;

    sget-object v4, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-direct {v3, v4}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sput-object v3, Lcom/google/dexmaker/TypeId;->DOUBLE:Lcom/google/dexmaker/TypeId;

    new-instance v4, Lcom/google/dexmaker/TypeId;

    sget-object v5, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-direct {v4, v5}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sput-object v4, Lcom/google/dexmaker/TypeId;->FLOAT:Lcom/google/dexmaker/TypeId;

    new-instance v5, Lcom/google/dexmaker/TypeId;

    sget-object v6, Lcom/google/dexmaker/dx/rop/type/Type;->INT:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-direct {v5, v6}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sput-object v5, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    new-instance v6, Lcom/google/dexmaker/TypeId;

    sget-object v7, Lcom/google/dexmaker/dx/rop/type/Type;->LONG:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-direct {v6, v7}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sput-object v6, Lcom/google/dexmaker/TypeId;->LONG:Lcom/google/dexmaker/TypeId;

    new-instance v7, Lcom/google/dexmaker/TypeId;

    sget-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-direct {v7, v8}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    sput-object v7, Lcom/google/dexmaker/TypeId;->SHORT:Lcom/google/dexmaker/TypeId;

    new-instance v8, Lcom/google/dexmaker/TypeId;

    sget-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-direct {v8, v9}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    new-instance v9, Lcom/google/dexmaker/TypeId;

    sget-object v10, Lcom/google/dexmaker/dx/rop/type/Type;->OBJECT:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-direct {v9, v10}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    new-instance v9, Lcom/google/dexmaker/TypeId;

    sget-object v10, Lcom/google/dexmaker/dx/rop/type/Type;->STRING:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-direct {v9, v10}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/dexmaker/dx/rop/type/Type;)V
    .locals 1

    iget-object v0, p1, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/google/dexmaker/TypeId;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/rop/type/Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/dexmaker/dx/rop/type/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {p2}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    move-result-object p1

    iput-object p1, p0, Lcom/google/dexmaker/TypeId;->constant:Lcom/google/dexmaker/dx/rop/cst/CstType;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/TypeId;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance p0, Lcom/google/dexmaker/TypeId;

    :try_start_0
    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/rop/type/Type;)V

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/dexmaker/TypeId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/dexmaker/TypeId;

    iget-object p1, p1, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final varargs getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;
    .locals 2

    new-instance v0, Lcom/google/dexmaker/MethodId;

    new-instance v1, Lcom/google/dexmaker/TypeList;

    invoke-direct {v1, p3}, Lcom/google/dexmaker/TypeList;-><init>([Lcom/google/dexmaker/TypeId;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/dexmaker/MethodId;-><init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;Lcom/google/dexmaker/TypeList;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    return-object p0
.end method
