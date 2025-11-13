.class public final Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final customErrorCode:I

.field public final outputValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field public final resultCode:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    const v0, 0xffffff

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "ActionResult: Out of range of custom code:"

    const-string v1, "RoutineSDK"

    invoke-static {p1, v0, v1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move p1, p2

    :cond_1
    sget-object p2, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_NOT_AVAILABLE:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;->resultCode:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;->outputValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iput p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;->customErrorCode:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;->resultCode:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;->outputValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;->customErrorCode:I

    return-void
.end method
