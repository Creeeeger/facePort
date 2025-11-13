.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardOcclusionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;

.field public final keyguardRootViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

.field public final logger:Lcom/android/keyguard/logging/KeyguardLogger;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final sharedNotificationContainerViewModel:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/SharedNotificationContainerViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/SharedNotificationContainerViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;->logger:Lcom/android/keyguard/logging/KeyguardLogger;

    iput-object p5, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iput-object p6, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;->sharedNotificationContainerViewModel:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/SharedNotificationContainerViewModel;

    iput-object p7, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;->keyguardRootViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    iput-object p8, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p9, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;->keyguardOcclusionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;

    return-void
.end method
