.class public final Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;
.super Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

.field public final guestUserId:I

.field public final isGuestEphemeral:Z

.field public final isKeyguardShowing:Z

.field public final onExitGuestUser:Lkotlin/jvm/functions/Function3;

.field public final targetUserId:I


# direct methods
.method public constructor <init>(IIZZLkotlin/jvm/functions/Function3;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ",
            "Lkotlin/jvm/functions/Function3;",
            "Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p6, v0, v1, v0}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;-><init>(Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;Lcom/android/systemui/animation/Expandable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    iput p2, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    iput-boolean p3, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

    iput-boolean p4, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    iput-object p5, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    iput-object p6, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    iget v1, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    iget v3, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    iget v3, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

    iget-boolean v3, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    iget-boolean v3, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    iget-object v3, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    iget-object p1, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDialogShower()Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v2, p0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShowExitGuestDialog(guestUserId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isGuestEphemeral="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isKeyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", onExitGuestUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogShower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
