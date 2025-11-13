.class public Lcom/samsung/android/settings/cube/ControlResult;
.super Ljava/lang/Object;
.source "ControlResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/cube/ControlResult$Builder;,
        Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;,
        Lcom/samsung/android/settings/cube/ControlResult$ResultCode;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field private final mErrorMsg:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private final mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ControlResult"

    .line 6
    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlResult;->TAG:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->-$$Nest$fgetmKey(Lcom/samsung/android/settings/cube/ControlResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlResult;->mKey:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->-$$Nest$fgetmResultCode(Lcom/samsung/android/settings/cube/ControlResult$Builder;)Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlResult;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 53
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->-$$Nest$fgetmErrorCode(Lcom/samsung/android/settings/cube/ControlResult$Builder;)Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlResult;->mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 54
    invoke-static {p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->-$$Nest$fgetmErrorMsg(Lcom/samsung/android/settings/cube/ControlResult$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;Lcom/samsung/android/settings/cube/ControlResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlResult;->mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    return-object p0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlResult;->mErrorMsg:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlResult;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getResultCode()Lcom/samsung/android/settings/cube/ControlResult$ResultCode;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlResult;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    return-object p0
.end method
