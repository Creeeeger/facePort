.class public final enum Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum VALID:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

.field public static final synthetic a:[Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    const-string v1, "VALID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->VALID:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    const-string v2, "INVALID_PARAMETER"

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    const/4 v3, 0x2

    const/4 v4, -0x2

    const-string v5, "NOT_AVAILABLE"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    const/4 v4, 0x3

    const/4 v5, -0x3

    const-string v6, "NOT_SUPPORTED"

    invoke-direct {v3, v6, v4, v5}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->a:[Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->a:[Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    return-object v0
.end method
