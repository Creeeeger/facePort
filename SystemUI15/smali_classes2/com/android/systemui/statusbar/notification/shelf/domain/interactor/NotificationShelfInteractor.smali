.class public final Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final deviceEntryFaceAuthRepository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepository;

.field public final keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

.field public final keyguardTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final shadeControllerImpl:Lcom/android/systemui/shade/ShadeControllerImpl;

.field public final statusBarStateControllerImpl:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepository;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Lcom/android/systemui/shade/ShadeControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->deviceEntryFaceAuthRepository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepository;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->keyguardTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->statusBarStateControllerImpl:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->shadeControllerImpl:Lcom/android/systemui/shade/ShadeControllerImpl;

    return-void
.end method


# virtual methods
.method public final isShelfStatic()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->deviceEntryFaceAuthRepository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepository;

    check-cast p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl;->isBypassEnabled:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor$isShelfStatic$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor$isShelfStatic$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v2, v0, p0, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    return-object v2
.end method
