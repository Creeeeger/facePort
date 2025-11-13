.class public final Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipViewModel;


# static fields
.field public static final CAST_TO_OTHER_DEVICE_ICON:I

.field public static final Companion:Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel$Companion;


# instance fields
.field public final chip:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final endMediaProjectionDialogHelper:Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;

.field public final mediaProjectionChipInteractor:Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel;->Companion:Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel$Companion;

    const v0, 0x7f080857

    sput v0, Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel;->CAST_TO_OTHER_DEVICE_ICON:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel;->mediaProjectionChipInteractor:Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p4, p0, Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p5, p0, Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel;->endMediaProjectionDialogHelper:Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;

    iget-object p2, p2, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor;->projection:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel$special$$inlined$map$1;

    invoke-direct {p3, p2, p0}, Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p4, 0x3

    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    sget-object p4, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;

    invoke-static {p3, p1, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel;->chip:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
