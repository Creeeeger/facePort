.class public final enum Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

.field public static final enum SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

.field public static final synthetic b:[Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    const-string v1, "SUPPORTED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    const-string v2, "NOT_SUPPORTED"

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->b:[Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->b:[Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    return-object v0
.end method
