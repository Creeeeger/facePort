.class public final Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;
.super Landroid/database/ExecutorContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;

.field public final synthetic val$mainHandler:Landroid/os/Handler;

.field public final synthetic val$settings:Lcom/android/systemui/util/settings/SecureSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;->val$settings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;->val$mainHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Landroid/database/ExecutorContentObserver;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ExecutorContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;->val$settings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v0, "applock_locked_packages"

    invoke-interface {p1, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;->val$mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
