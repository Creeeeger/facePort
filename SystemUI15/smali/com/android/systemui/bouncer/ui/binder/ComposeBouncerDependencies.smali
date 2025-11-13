.class public final Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

.field public final dialogFactory:Lcom/android/systemui/bouncer/ui/BouncerDialogFactory;

.field public final legacyInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final viewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field public final viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;Lcom/android/systemui/bouncer/ui/BouncerDialogFactory;Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->legacyInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iput-object p2, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;

    iput-object p3, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->dialogFactory:Lcom/android/systemui/bouncer/ui/BouncerDialogFactory;

    iput-object p4, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    iput-object p5, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->viewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iput-object p6, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;

    iget-object v1, p1, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->legacyInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object v3, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->legacyInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;

    iget-object v3, p1, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->dialogFactory:Lcom/android/systemui/bouncer/ui/BouncerDialogFactory;

    iget-object v3, p1, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->dialogFactory:Lcom/android/systemui/bouncer/ui/BouncerDialogFactory;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    iget-object v3, p1, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->viewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v3, p1, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->viewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object p1, p1, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->legacyInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->dialogFactory:Lcom/android/systemui/bouncer/ui/BouncerDialogFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->viewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComposeBouncerDependencies(legacyInteractor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->legacyInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->dialogFactory:Lcom/android/systemui/bouncer/ui/BouncerDialogFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authenticationInteractor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewMediatorCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->viewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedUserInteractor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/ComposeBouncerDependencies;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
