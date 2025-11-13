.class public final Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;
.super Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

.field public final isKeyguardShowing:Z

.field public final showEphemeralMessage:Z

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;ZZLcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p4, v0, v1, v0}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;-><init>(Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;Lcom/android/systemui/animation/Expandable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->userHandle:Landroid/os/UserHandle;

    iput-boolean p2, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->isKeyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->showEphemeralMessage:Z

    iput-object p4, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;

    iget-object v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->userHandle:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->userHandle:Landroid/os/UserHandle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->isKeyguardShowing:Z

    iget-boolean v3, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->isKeyguardShowing:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->showEphemeralMessage:Z

    iget-boolean v3, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->showEphemeralMessage:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    iget-object p1, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDialogShower()Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->isKeyguardShowing:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->showEphemeralMessage:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->userHandle:Landroid/os/UserHandle;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShowAddUserDialog(userHandle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isKeyguardShowing="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->isKeyguardShowing:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showEphemeralMessage="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->showEphemeralMessage:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", dialogShower="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
