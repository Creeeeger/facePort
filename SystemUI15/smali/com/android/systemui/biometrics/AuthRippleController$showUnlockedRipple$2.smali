.class public final Lcom/android/systemui/biometrics/AuthRippleController$showUnlockedRipple$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$showUnlockedRipple$2;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$showUnlockedRipple$2;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v1, 0x0

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setForcePluginOpen(Ljava/lang/Object;Z)V

    return-void
.end method
