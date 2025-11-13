.class public final Lcom/android/systemui/brightness/ui/viewmodel/BrightnessSliderViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final brightnessPolicyEnforcementInteractor:Lcom/android/systemui/brightness/domain/interactor/BrightnessPolicyEnforcementInteractor;

.field public final currentBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

.field public final label:Lcom/android/systemui/common/shared/model/Text$Resource;

.field public final maxBrightness:I

.field public final policyRestriction:Lkotlinx/coroutines/flow/Flow;

.field public final screenBrightnessInteractor:Lcom/android/systemui/brightness/domain/interactor/ScreenBrightnessInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/brightness/domain/interactor/ScreenBrightnessInteractor;Lcom/android/systemui/brightness/domain/interactor/BrightnessPolicyEnforcementInteractor;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p1, Lcom/android/systemui/brightness/domain/interactor/ScreenBrightnessInteractor;->gammaBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/systemui/brightness/shared/model/GammaBrightness;->box-impl(I)Lcom/android/systemui/brightness/shared/model/GammaBrightness;

    move-result-object v1

    invoke-static {p0, p3, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget p0, p1, Lcom/android/systemui/brightness/domain/interactor/ScreenBrightnessInteractor;->maxGammaBrightness:I

    new-instance p0, Lcom/android/systemui/common/shared/model/Text$Resource;

    const p1, 0x7f130ebb

    invoke-direct {p0, p1}, Lcom/android/systemui/common/shared/model/Text$Resource;-><init>(I)V

    new-instance p1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance p3, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    iget p0, p0, Lcom/android/systemui/common/shared/model/Text$Resource;->res:I

    invoke-direct {p3, p0}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const p0, 0x7f080834

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    iget-object p0, p2, Lcom/android/systemui/brightness/domain/interactor/BrightnessPolicyEnforcementInteractor;->brightnessPolicyRestriction:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
