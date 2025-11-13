.class public final Lcom/google/dexmaker/dx/rop/type/Type;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/dexmaker/dx/util/ToHuman;
.implements Ljava/lang/Comparable;


# static fields
.field public static final BOOLEAN:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BOOLEAN_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BOOLEAN_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BYTE:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BYTE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BYTE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final CHAR:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final CHARACTER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final CHAR_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final DOUBLE:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final DOUBLE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final DOUBLE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final FLOAT:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final FLOAT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final FLOAT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final INT:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final INTEGER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final INT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final KNOWN_NULL:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final LONG:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final LONG_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final LONG_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final OBJECT:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final OBJECT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final RETURN_ADDRESS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final SHORT:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final SHORT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final SHORT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final STRING:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final THROWABLE:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final VOID:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final VOID_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final internTable:Ljava/util/HashMap;


# instance fields
.field public arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

.field public final basicType:I

.field public className:Ljava/lang/String;

.field public componentType:Lcom/google/dexmaker/dx/rop/type/Type;

.field public final descriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    new-instance v0, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v1, "Z"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN:Lcom/google/dexmaker/dx/rop/type/Type;

    new-instance v1, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v2, "B"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE:Lcom/google/dexmaker/dx/rop/type/Type;

    new-instance v2, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v3, "C"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/rop/type/Type;->CHAR:Lcom/google/dexmaker/dx/rop/type/Type;

    new-instance v3, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v4, "D"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE:Lcom/google/dexmaker/dx/rop/type/Type;

    new-instance v4, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v5, "F"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT:Lcom/google/dexmaker/dx/rop/type/Type;

    new-instance v5, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v6, "I"

    const/4 v7, 0x6

    invoke-direct {v5, v6, v7}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/dexmaker/dx/rop/type/Type;->INT:Lcom/google/dexmaker/dx/rop/type/Type;

    new-instance v6, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v7, "J"

    const/4 v8, 0x7

    invoke-direct {v6, v7, v8}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/dexmaker/dx/rop/type/Type;->LONG:Lcom/google/dexmaker/dx/rop/type/Type;

    new-instance v7, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v8, "S"

    const/16 v9, 0x8

    invoke-direct {v7, v8, v9}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT:Lcom/google/dexmaker/dx/rop/type/Type;

    new-instance v8, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "V"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;

    new-instance v8, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "<null>"

    const/16 v10, 0x9

    invoke-direct {v8, v9, v10}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->KNOWN_NULL:Lcom/google/dexmaker/dx/rop/type/Type;

    new-instance v8, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "<addr>"

    const/16 v10, 0xa

    invoke-direct {v8, v9, v10}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v1}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v2}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v3}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v4}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v5}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v6}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v7}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v8, "Ljava/lang/annotation/Annotation;"

    invoke-static {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v8, "Ljava/lang/Class;"

    invoke-static {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v8, "Ljava/lang/Cloneable;"

    invoke-static {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v8, "Ljava/lang/Object;"

    invoke-static {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v8

    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->OBJECT:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/io/Serializable;"

    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/String;"

    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->STRING:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Throwable;"

    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->THROWABLE:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Boolean;"

    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Byte;"

    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Character;"

    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->CHARACTER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Double;"

    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Float;"

    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Integer;"

    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->INTEGER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Long;"

    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->LONG_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Short;"

    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Void;"

    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->VOID_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->CHAR_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v4}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v5}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->INT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v6}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->LONG_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v7}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    const/16 v0, 0xb

    if-ge p2, v0, :cond_1

    const/4 v0, -0x1

    if-lt p3, v0, :cond_0

    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iput p2, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->componentType:Lcom/google/dexmaker/dx/rop/type/Type;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newAt < -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad basicType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "descriptor == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 7

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/dx/rop/type/Type;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v1, 0x5b

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x4c

    if-ne v0, v4, :cond_6

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_6

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_4

    const/16 v6, 0x29

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_2

    if-eq v5, v4, :cond_4

    if-eq v5, v1, :cond_4

    goto :goto_1

    :cond_2
    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_3

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/google/dexmaker/dx/rop/type/Type;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "descriptor is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 3

    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/dexmaker/dx/rop/type/Type;

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/dexmaker/dx/rop/type/Type;

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/type/Type;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    check-cast p1, Lcom/google/dexmaker/dx/rop/type/Type;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 3

    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/dexmaker/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x5b

    if-ne v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/dexmaker/dx/rop/type/Type;->componentType:Lcom/google/dexmaker/dx/rop/type/Type;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v1

    iput-object v1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->componentType:Lcom/google/dexmaker/dx/rop/type/Type;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not an array type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->componentType:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->className:Ljava/lang/String;

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->className:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->className:Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not an object type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->className:Ljava/lang/String;

    const-string v0, "/"

    const-string v1, "."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "short"

    return-object p0

    :pswitch_2
    const-string p0, "long"

    return-object p0

    :pswitch_3
    const-string p0, "int"

    return-object p0

    :pswitch_4
    const-string p0, "float"

    return-object p0

    :pswitch_5
    const-string p0, "double"

    return-object p0

    :pswitch_6
    const-string p0, "char"

    return-object p0

    :pswitch_7
    const-string p0, "byte"

    return-object p0

    :pswitch_8
    const-string p0, "boolean"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "void"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    return-object p0
.end method
