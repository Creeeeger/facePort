.class public Lcom/samsung/android/sdk/routines/v3/data/ActionResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final customErrorCode:I

.field public final outputValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field public final resultCode:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;


# direct methods
.method public constructor <init>(ILcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v1, 0xffffff

    if-le p1, v1, :cond_1

    :cond_0
    const-string v1, "ActionResult: Out of range of custom code:"

    const-string v2, "RoutineSDK"

    invoke-static {p1, v1, v2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_NOT_AVAILABLE:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->resultCode:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->outputValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iput p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->customErrorCode:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/samsung/android/sdk/routines/v3/data/ParameterValues;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;-><init>(ILcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->resultCode:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->outputValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->customErrorCode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    return-void
.end method
