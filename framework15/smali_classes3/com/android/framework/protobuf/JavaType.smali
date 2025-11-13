.class public final enum Lcom/android/framework/protobuf/JavaType;
.super Ljava/lang/Enum;
.source "JavaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist BOOLEAN:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist BYTE_STRING:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist DOUBLE:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist ENUM:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist FLOAT:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist INT:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist LONG:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist MESSAGE:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist STRING:Lcom/android/framework/protobuf/JavaType;

.field public static final enum blacklist VOID:Lcom/android/framework/protobuf/JavaType;


# instance fields
.field private final blacklist boxedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist defaultDefault:Ljava/lang/Object;

.field private final blacklist type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/framework/protobuf/JavaType;
    .locals 10

    sget-object v0, Lcom/android/framework/protobuf/JavaType;->VOID:Lcom/android/framework/protobuf/JavaType;

    sget-object v1, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    sget-object v2, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    sget-object v3, Lcom/android/framework/protobuf/JavaType;->FLOAT:Lcom/android/framework/protobuf/JavaType;

    sget-object v4, Lcom/android/framework/protobuf/JavaType;->DOUBLE:Lcom/android/framework/protobuf/JavaType;

    sget-object v5, Lcom/android/framework/protobuf/JavaType;->BOOLEAN:Lcom/android/framework/protobuf/JavaType;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->STRING:Lcom/android/framework/protobuf/JavaType;

    sget-object v7, Lcom/android/framework/protobuf/JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/JavaType;

    sget-object v8, Lcom/android/framework/protobuf/JavaType;->ENUM:Lcom/android/framework/protobuf/JavaType;

    sget-object v9, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    filled-new-array/range {v0 .. v9}, [Lcom/android/framework/protobuf/JavaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 14

    new-instance v6, Lcom/android/framework/protobuf/JavaType;

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const/4 v5, 0x0

    const-string v1, "VOID"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lcom/android/framework/protobuf/JavaType;->VOID:Lcom/android/framework/protobuf/JavaType;

    new-instance v0, Lcom/android/framework/protobuf/JavaType;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v8, "INT"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    new-instance v0, Lcom/android/framework/protobuf/JavaType;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "LONG"

    const/4 v4, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    new-instance v0, Lcom/android/framework/protobuf/JavaType;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v9, "FLOAT"

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/JavaType;->FLOAT:Lcom/android/framework/protobuf/JavaType;

    new-instance v0, Lcom/android/framework/protobuf/JavaType;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v3, "DOUBLE"

    const/4 v4, 0x4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/JavaType;->DOUBLE:Lcom/android/framework/protobuf/JavaType;

    new-instance v0, Lcom/android/framework/protobuf/JavaType;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v9, "BOOLEAN"

    const/4 v10, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/JavaType;->BOOLEAN:Lcom/android/framework/protobuf/JavaType;

    new-instance v0, Lcom/android/framework/protobuf/JavaType;

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    const-string v6, ""

    const-string v2, "STRING"

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/JavaType;->STRING:Lcom/android/framework/protobuf/JavaType;

    new-instance v0, Lcom/android/framework/protobuf/JavaType;

    const-class v10, Lcom/android/framework/protobuf/ByteString;

    const-class v11, Lcom/android/framework/protobuf/ByteString;

    sget-object v12, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    const-string v8, "BYTE_STRING"

    const/4 v9, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/JavaType;

    new-instance v0, Lcom/android/framework/protobuf/JavaType;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    const-string v2, "ENUM"

    const/16 v3, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/JavaType;->ENUM:Lcom/android/framework/protobuf/JavaType;

    new-instance v0, Lcom/android/framework/protobuf/JavaType;

    const-class v10, Ljava/lang/Object;

    const-class v11, Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v8, "MESSAGE"

    const/16 v9, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    invoke-static {}, Lcom/android/framework/protobuf/JavaType;->$values()[Lcom/android/framework/protobuf/JavaType;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/JavaType;->$VALUES:[Lcom/android/framework/protobuf/JavaType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/framework/protobuf/JavaType;->type:Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/framework/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    iput-object p5, p0, Lcom/android/framework/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/android/framework/protobuf/JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/JavaType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/framework/protobuf/JavaType;
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/JavaType;->$VALUES:[Lcom/android/framework/protobuf/JavaType;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/JavaType;

    return-object v0
.end method


# virtual methods
.method public blacklist getBoxedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getDefaultDefault()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/JavaType;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist isValidType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/JavaType;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
