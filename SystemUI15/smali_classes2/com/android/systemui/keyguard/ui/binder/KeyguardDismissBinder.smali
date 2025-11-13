.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardDismissBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor;

.field public final keyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final viewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardDismissBinder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardDismissBinder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardDismissInteractor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/ViewMediatorCallback;Lkotlinx/coroutines/CoroutineScope;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/flags/FeatureFlagsClassic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method
