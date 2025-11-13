.class public final Lcom/samsung/android/settings/cube/ControlResult;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public final mErrorMsg:Ljava/lang/String;

.field public final mKey:Ljava/lang/String;

.field public final mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlResult;->mKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlResult;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    iget-object v0, p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlResult;->mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    iget-object p1, p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorMsg:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlResult;->mErrorMsg:Ljava/lang/String;

    return-void
.end method
