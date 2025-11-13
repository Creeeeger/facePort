.class public final Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final biometricSettingsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;

.field public final faceAcquired:Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$special$$inlined$filterIsInstance$1;

.field public final faceHelp:Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$special$$inlined$filterIsInstance$2;

.field public final faceHelpMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;->biometricSettingsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;

    invoke-virtual {p4}, Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;->create()Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;->faceHelpMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    invoke-interface {p2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$special$$inlined$filterIsInstance$1;

    invoke-direct {p4, p3}, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$special$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p4, p0, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;->faceAcquired:Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$special$$inlined$filterIsInstance$1;

    invoke-interface {p2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$special$$inlined$filterIsInstance$2;

    invoke-direct {p3, p2}, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$special$$inlined$filterIsInstance$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p3, p0, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;->faceHelp:Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$special$$inlined$filterIsInstance$2;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    new-instance p2, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$startUpdatingFaceHelpMessageDeferral$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$startUpdatingFaceHelpMessageDeferral$1;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p2, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$startUpdatingFaceHelpMessageDeferral$2;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$startUpdatingFaceHelpMessageDeferral$2;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
