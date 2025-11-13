.class public final Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShelfManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    new-instance p1, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1$onConfigChanged$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1$onConfigChanged$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelfManager;)V

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelfManager;->access$updateRunnable(Lcom/android/systemui/statusbar/NotificationShelfManager;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1$onDensityOrFontScaleChanged$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1$onDensityOrFontScaleChanged$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelfManager;)V

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->access$updateRunnable(Lcom/android/systemui/statusbar/NotificationShelfManager;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1$onUiModeChanged$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1$onUiModeChanged$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelfManager;)V

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->access$updateRunnable(Lcom/android/systemui/statusbar/NotificationShelfManager;Ljava/lang/Runnable;)V

    return-void
.end method
