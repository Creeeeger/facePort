.class public final Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipViewModel;


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel$Companion;

.field public static final ICON:I


# instance fields
.field public final chip:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final endMediaProjectionDialogHelper:Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;

.field public final interactor:Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;->Companion:Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel$Companion;

    const v0, 0x7f080aef

    sput v0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;->ICON:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;Lcom/android/systemui/animation/DialogTransitionAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;->interactor:Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p4, p0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;->endMediaProjectionDialogHelper:Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;

    iput-object p5, p0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iget-object p2, p2, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor;->screenRecordState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel$special$$inlined$map$1;

    invoke-direct {p3, p2, p0}, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p4, 0x3

    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    sget-object p4, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;

    invoke-static {p3, p1, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;->chip:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
