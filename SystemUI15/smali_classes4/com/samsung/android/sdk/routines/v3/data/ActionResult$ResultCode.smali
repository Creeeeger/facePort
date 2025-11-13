.class public final enum Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAIL_NOT_AVAILABLE:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

.field public static final enum FAIL_NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

.field public static final enum FAIL_TIMEOUT:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

.field public static final enum SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

.field public static final synthetic a:[Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const-string v2, "SUSPENDED"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const-string v3, "FAIL_INVALID_PARAMETER"

    const/4 v5, -0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const/4 v4, 0x3

    const/4 v5, -0x2

    const-string v6, "FAIL_NOT_AVAILABLE"

    invoke-direct {v3, v6, v4, v5}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_NOT_AVAILABLE:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    new-instance v4, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const/4 v5, 0x4

    const/4 v6, -0x3

    const-string v7, "FAIL_NOT_SUPPORTED"

    invoke-direct {v4, v7, v5, v6}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    new-instance v5, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const/4 v6, 0x5

    const/4 v7, -0x4

    const-string v8, "FAIL_TIMEOUT"

    invoke-direct {v5, v8, v6, v7}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_TIMEOUT:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->a:[Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->a:[Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    return-object v0
.end method
