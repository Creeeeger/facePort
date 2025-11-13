.class public final Lcom/samsung/android/settings/cube/ControlResult$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public mErrorMsg:Ljava/lang/String;

.field public final mKey:Ljava/lang/String;

.field public mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mKey:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/settings/cube/ControlResult;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V

    return-object v0
.end method

.method public final setErrorMsg(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorMsg:Ljava/lang/String;

    return-void
.end method
