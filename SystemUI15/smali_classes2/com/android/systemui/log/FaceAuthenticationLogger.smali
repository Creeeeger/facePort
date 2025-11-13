.class public final Lcom/android/systemui/log/FaceAuthenticationLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final addLockoutResetCallbackDone()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$addLockoutResetCallbackDone$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$addLockoutResetCallbackDone$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final attemptingRetryAfterHardwareError(I)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$attemptingRetryAfterHardwareError$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$attemptingRetryAfterHardwareError$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final authenticating(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$authenticating$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$authenticating$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final authenticationError(ILjava/lang/CharSequence;ZZ)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$authenticationError$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$authenticationError$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object p2, v0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, p2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean p3, p2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean p4, p2, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final canFaceAuthRunChanged(Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$canFaceAuthRunChanged$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$canFaceAuthRunChanged$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final cancelSignalNotReceived(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;ZZZ)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$cancelSignalNotReceived$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$cancelSignalNotReceived$2;

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p2, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object p2, v0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p3, p2, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean p4, p2, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final clearingPendingAuthRequest(Ljava/lang/String;Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;Ljava/lang/Boolean;)V
    .locals 4

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$clearingPendingAuthRequest$1$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$clearingPendingAuthRequest$1$2;

    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    move-result-object p2

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final detectionNotSupported(Landroid/hardware/face/FaceManager;Ljava/util/List;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$detectionNotSupported$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$detectionNotSupported$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    move-object v3, v0

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v1, p1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    if-eqz p2, :cond_3

    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    if-eqz p2, :cond_3

    iget-boolean v2, p2, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsFaceDetection:Z

    :cond_3
    iput-boolean v2, p1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final faceAuthSuccess(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$faceAuthSuccess$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$faceAuthSuccess$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager$AuthenticationResult;->getUserId()I

    move-result v1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput v1, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager$AuthenticationResult;->isStrongBiometric()Z

    move-result p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final hardwareError(Lcom/android/systemui/deviceentry/shared/model/ErrorFaceAuthenticationStatus;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$hardwareError$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$hardwareError$2;

    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/deviceentry/shared/model/ErrorFaceAuthenticationStatus;->msg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iget p1, p1, Lcom/android/systemui/deviceentry/shared/model/ErrorFaceAuthenticationStatus;->msgId:I

    iput p1, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final ignoredFaceAuthTrigger(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$ignoredFaceAuthTrigger$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$ignoredFaceAuthTrigger$2;

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final notProcessingRequestYet(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;ZZZ)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$notProcessingRequestYet$1$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$notProcessingRequestYet$1$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p2, p1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean p3, p1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean p4, p1, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final processingRequest(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$processingRequest$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$processingRequest$2;

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p2, p1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final queueingRequest(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$queueingRequest$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$queueingRequest$2;

    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final skippingDetection(ZZ)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/log/FaceAuthenticationLogger$skippingDetection$2;->INSTANCE:Lcom/android/systemui/log/FaceAuthenticationLogger$skippingDetection$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DeviceEntryFaceAuthRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p2, p1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
