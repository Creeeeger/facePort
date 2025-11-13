.class public final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isLargeClockVisible:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel$special$$inlined$map$1;

.field public final isSmallClockVisible:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel$special$$inlined$map$2;

.field public final previewClock:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$3;

.field public final selectedClockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;->selectedClockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel$special$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel;->isLargeClockVisible:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel$special$$inlined$map$1;

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel$special$$inlined$map$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel;->isSmallClockVisible:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel$special$$inlined$map$2;

    iget-object p0, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;->previewClock:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$3;

    return-void
.end method
