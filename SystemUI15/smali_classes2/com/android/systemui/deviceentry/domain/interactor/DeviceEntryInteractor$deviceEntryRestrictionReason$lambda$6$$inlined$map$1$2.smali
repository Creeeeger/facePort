.class public final Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $faceAuthInteractor$inlined:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic $trustEnabled$inlined:Z

.field public final synthetic this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iput-object p3, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2;->$faceAuthInteractor$inlined:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    iput-boolean p4, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2;->$trustEnabled$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/util/kotlin/Quad;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quad;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quad;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quad;->component3()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quad;->component4()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean v5, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredAfterReboot:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iget-object v5, v5, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->systemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "sys.boot.reason.last"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "reboot,mainline_update"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->DeviceNotUnlockedSinceMainlineUpdate:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto/16 :goto_1

    :cond_3
    iget-boolean v5, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredAfterReboot:Z

    if-eqz v5, :cond_4

    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->DeviceNotUnlockedSinceReboot:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto/16 :goto_1

    :cond_4
    iget-boolean v5, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredAfterDpmLockdown:Z

    if-eqz v5, :cond_5

    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->PolicyLockdown:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto :goto_1

    :cond_5
    iget-boolean v5, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isInUserLockdown:Z

    if-eqz v5, :cond_6

    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->UserLockdown:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto :goto_1

    :cond_6
    iget-boolean v5, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredForUnattendedUpdate:Z

    if-eqz v5, :cond_7

    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->UnattendedUpdate:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto :goto_1

    :cond_7
    iget-boolean v5, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredAfterTimeout:Z

    if-eqz v5, :cond_8

    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->SecurityTimeout:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto :goto_1

    :cond_8
    iget-boolean v5, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredAfterLockout:Z

    if-eqz v5, :cond_9

    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->BouncerLockedOut:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto :goto_1

    :cond_9
    if-eqz v4, :cond_a

    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->StrongBiometricsLockedOut:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto :goto_1

    :cond_a
    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2;->$faceAuthInteractor$inlined:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    invoke-interface {v4}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->isFaceAuthStrong()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->StrongBiometricsLockedOut:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto :goto_1

    :cond_b
    if-eqz v2, :cond_c

    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->NonStrongFaceLockedOut:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto :goto_1

    :cond_c
    iget-boolean v2, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isSomeAuthRequiredAfterAdaptiveAuthRequest:Z

    if-eqz v2, :cond_d

    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->AdaptiveAuthRequest:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto :goto_1

    :cond_d
    iget-boolean v2, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2;->$trustEnabled$inlined:Z

    if-eqz v2, :cond_f

    if-nez p1, :cond_f

    iget-boolean p1, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->someAuthRequiredAfterTrustAgentExpired:Z

    if-nez p1, :cond_e

    iget-boolean p1, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->someAuthRequiredAfterUserRequest:Z

    if-eqz p1, :cond_f

    :cond_e
    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->TrustAgentDisabled:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto :goto_1

    :cond_f
    iget-boolean p1, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->strongerAuthRequiredAfterNonStrongBiometricsTimeout:Z

    if-eqz p1, :cond_10

    sget-object p1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->NonStrongBiometricsSecurityTimeout:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    goto :goto_1

    :cond_10
    const/4 p1, 0x0

    :goto_1
    iput v3, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor$deviceEntryRestrictionReason$lambda$6$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_11

    return-object v1

    :cond_11
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
