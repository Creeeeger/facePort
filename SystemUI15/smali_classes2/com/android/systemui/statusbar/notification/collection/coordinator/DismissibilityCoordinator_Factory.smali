.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator_Factory;
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
.field private final keyguardStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final providerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator_Factory;->providerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator_Factory;->providerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator_Factory;->newInstance(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;

    move-result-object p0

    return-object p0
.end method
