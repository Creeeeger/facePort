.class public Lcom/samsung/android/sdk/routines/v3/data/ActionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;,
        Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;,
        Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;
    }
.end annotation


# instance fields
.field public final customErrorCode:I

.field public final outputValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field public final resultCode:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;


# direct methods
.method public constructor <init>(ILcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v1, 0xffffff

    if-le p1, v1, :cond_1

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionResult: Out of range of custom code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RoutineSDK"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 13
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_NOT_AVAILABLE:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->resultCode:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->outputValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 15
    iput p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->customErrorCode:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/samsung/android/sdk/routines/v3/data/ParameterValues;Lcom/samsung/android/sdk/routines/v3/data/ActionResult$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;-><init>(ILcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->resultCode:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->outputValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->customErrorCode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Lcom/samsung/android/sdk/routines/v3/data/ActionResult$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    return-void
.end method
