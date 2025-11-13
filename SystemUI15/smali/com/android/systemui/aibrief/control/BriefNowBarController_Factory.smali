.class public final Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;
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
.field private final configurationControllerProvider:Ljavax/inject/Provider;
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

.field private final faceWidgetNotificationControllerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final notificationShadeWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final powerInteractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final viewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->loggerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->viewControllerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->faceWidgetNotificationControllerWrapperProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->powerInteractorProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;"
        }
    .end annotation

    new-instance v9, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/aibrief/log/BriefLogger;Lcom/android/systemui/aibrief/ui/BriefViewController;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;)Lcom/android/systemui/aibrief/control/BriefNowBarController;
    .locals 10

    new-instance v9, Lcom/android/systemui/aibrief/control/BriefNowBarController;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/aibrief/control/BriefNowBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/aibrief/log/BriefLogger;Lcom/android/systemui/aibrief/ui/BriefViewController;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/android/systemui/aibrief/control/BriefNowBarController;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/aibrief/log/BriefLogger;

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->viewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/aibrief/ui/BriefViewController;

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->faceWidgetNotificationControllerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->powerInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Landroid/os/Handler;

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/aibrief/log/BriefLogger;Lcom/android/systemui/aibrief/ui/BriefViewController;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;)Lcom/android/systemui/aibrief/control/BriefNowBarController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController_Factory;->get()Lcom/android/systemui/aibrief/control/BriefNowBarController;

    move-result-object p0

    return-object p0
.end method
