.class public Lcom/samsung/android/settings/cube/ControlResult$Builder;
.super Ljava/lang/Object;
.source "ControlResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/cube/ControlResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field private mErrorMsg:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;


# direct methods
.method static bridge synthetic -$$Nest$fgetmErrorCode(Lcom/samsung/android/settings/cube/ControlResult$Builder;)Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorMsg(Lcom/samsung/android/settings/cube/ControlResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKey(Lcom/samsung/android/settings/cube/ControlResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultCode(Lcom/samsung/android/settings/cube/ControlResult$Builder;)Lcom/samsung/android/settings/cube/ControlResult$ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ControlResult.Builder"

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->TAG:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mKey:Ljava/lang/String;

    const-string p1, ""

    .line 84
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/settings/cube/ControlResult;
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;Lcom/samsung/android/settings/cube/ControlResult-IA;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public isValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setErrorMsg(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$Builder;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    return-object p0
.end method

.method public setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    return-object p0
.end method
