.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;
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
.field private final commonNotifCollectionLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final shadeExpansionStateManagerProvider:Ljavax/inject/Provider;
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

.field private final summarizeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final systemSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->systemSettingsProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->commonNotifCollectionLazyProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->summarizeControllerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;"
        }
    .end annotation

    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/util/settings/SystemSettings;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/SummarizeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/settings/SystemSettings;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            "Lcom/android/systemui/statusbar/SummarizeController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;"
        }
    .end annotation

    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;-><init>(Landroid/content/Context;Lcom/android/systemui/util/settings/SystemSettings;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/SummarizeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->systemSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/util/settings/SystemSettings;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->commonNotifCollectionLazyProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->summarizeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/SummarizeController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/util/settings/SystemSettings;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/SummarizeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    move-result-object p0

    return-object p0
.end method
