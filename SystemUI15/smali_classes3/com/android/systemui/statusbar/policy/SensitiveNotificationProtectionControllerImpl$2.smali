.class public final Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;
.super Landroid/database/ExecutorContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

.field public final synthetic val$mainHandler:Landroid/os/Handler;

.field public final synthetic val$settings:Lcom/android/systemui/util/settings/GlobalSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/GlobalSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;->val$settings:Lcom/android/systemui/util/settings/GlobalSettings;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;->val$mainHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Landroid/database/ExecutorContentObserver;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ExecutorContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;->val$settings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v0, "disable_screen_share_protections_for_apps_and_notifications"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;->val$mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
