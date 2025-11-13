.class public final enum Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/routines/v3/data/ActionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAIL_INVALID_PARAMETER:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

.field public static final enum FAIL_NOT_AVAILABLE:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

.field public static final enum FAIL_NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

.field public static final enum SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

.field public static final enum SUSPENDED:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

.field public static final synthetic a:[Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    .line 2
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const-string v4, "FAIL_INVALID_PARAMETER"

    const/4 v5, -0x1

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_INVALID_PARAMETER:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    .line 3
    new-instance v4, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const-string v5, "FAIL_NOT_AVAILABLE"

    const/4 v6, 0x2

    const/4 v7, -0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_NOT_AVAILABLE:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    .line 4
    new-instance v5, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const-string v7, "FAIL_NOT_SUPPORTED"

    const/4 v8, 0x3

    const/4 v9, -0x3

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    .line 5
    new-instance v7, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const-string v9, "SUSPENDED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v6}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUSPENDED:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->a:[Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->a:[Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    return-object v0
.end method
