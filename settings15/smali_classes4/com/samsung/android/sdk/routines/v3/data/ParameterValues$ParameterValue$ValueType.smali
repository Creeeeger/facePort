.class final enum Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOLEAN:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum NUMBER:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum STRING:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

.field public static final synthetic b:[Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->UNKNOWN:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    const-string v2, "BOOLEAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->BOOLEAN:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    const-string v3, "NUMBER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->NUMBER:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    new-instance v3, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    const-string v4, "STRING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->STRING:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    new-instance v4, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    const-string v5, "LIST{BOOLEAN}"

    const-string v6, "LIST_BOOLEAN"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    const-string v6, "LIST{NUMBER}"

    const-string v7, "LIST_NUMBER"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    const-string v7, "LIST{STRING}"

    const-string v8, "LIST_STRING"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->b:[Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->b:[Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    return-object v0
.end method
