.class public final Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$startUpdatingFaceHelpMessageDeferral$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$startUpdatingFaceHelpMessageDeferral$1$2;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/deviceentry/shared/model/AcquiredFaceAuthenticationStatus;

    iget p2, p1, Lcom/android/systemui/deviceentry/shared/model/AcquiredFaceAuthenticationStatus;->acquiredInfo:I

    const/16 v0, 0x14

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor$startUpdatingFaceHelpMessageDeferral$1$2;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;->faceHelpMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    invoke-virtual {p2}, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->reset$1()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/FaceHelpMessageDeferralInteractor;->faceHelpMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    iget p1, p1, Lcom/android/systemui/deviceentry/shared/model/AcquiredFaceAuthenticationStatus;->acquiredInfo:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->processFrame(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
