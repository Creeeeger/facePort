.class public final enum Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALL_TYPE_ACTION:Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

.field public static final enum CALL_TYPE_CONDITION:Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

.field public static final synthetic b:[Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    const/4 v1, 0x0

    const-string v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;->UNKNOWN:Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    const/4 v2, 0x1

    const-string v3, "condition"

    const-string v4, "CALL_TYPE_CONDITION"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;->CALL_TYPE_CONDITION:Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    const/4 v3, 0x2

    const-string v4, "action"

    const-string v5, "CALL_TYPE_ACTION"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;->CALL_TYPE_ACTION:Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;->b:[Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;->b:[Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    return-object v0
.end method
