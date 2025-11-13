.class public final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;

.field public final isLongPressHandlingEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;

    iget-object p0, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->isLongPressHandlingEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
