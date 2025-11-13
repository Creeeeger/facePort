.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider;"
    }
.end annotation


# instance fields
.field private final keyguardRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final scopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;->scopeProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;->keyguardRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;-><init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;->scopeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;->keyguardRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;->newInstance(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    move-result-object p0

    return-object p0
.end method
