.class public final Lcom/android/settings/users/UserSettings$9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$9;->this$0:Lcom/android/settings/users/UserSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$9;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object v0, v0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$9;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object v2, v1, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v1, v1, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->removeUser(I)Z

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$9;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Lcom/android/settings/users/UserSettings$1;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
