.class public final Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final authenticateReason:I

.field public final faceAuthUiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

.field public final userId:I

.field public final wakeReason:I


# direct methods
.method public constructor <init>(ILcom/android/internal/logging/UiEventLogger$UiEventEnum;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->userId:I

    iput-object p2, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->faceAuthUiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    iput p3, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->wakeReason:I

    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STARTED_WAKING_UP:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN_OR_WILL_BE_SHOWN:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    if-ne p2, p1, :cond_2

    :goto_0
    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_ASSISTANT_VISIBILITY_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    if-ne p2, p1, :cond_3

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    if-ne p2, p1, :cond_4

    const/4 p1, 0x4

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_NOTIFICATION_PANEL_CLICKED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    if-ne p2, p1, :cond_5

    const/4 p1, 0x5

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    if-ne p2, p1, :cond_6

    const/4 p1, 0x6

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_PICK_UP_GESTURE_TRIGGERED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    if-ne p2, p1, :cond_7

    const/4 p1, 0x7

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_SWIPE_UP_ON_BOUNCER:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    if-ne p2, p1, :cond_8

    const/16 p1, 0x9

    goto :goto_1

    :cond_8
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_UDFPS_POINTER_DOWN:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    if-ne p2, p1, :cond_9

    const/16 p1, 0xa

    goto :goto_1

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " unmapped FaceAuthUiEvent "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceAuthenticateOptions"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->authenticateReason:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/android/internal/logging/UiEventLogger$UiEventEnum;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;-><init>(ILcom/android/internal/logging/UiEventLogger$UiEventEnum;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;

    iget v1, p1, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->userId:I

    iget v3, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->userId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->faceAuthUiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    iget-object v3, p1, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->faceAuthUiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->wakeReason:I

    iget p1, p1, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->wakeReason:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->faceAuthUiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->wakeReason:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->faceAuthUiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SysUiFaceAuthenticateOptions(userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", faceAuthUiEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", wakeReason="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/keyguard/shared/model/SysUiFaceAuthenticateOptions;->wakeReason:I

    const-string v0, ")"

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
