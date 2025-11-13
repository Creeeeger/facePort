.class Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;
.super Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;
.source "ProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetExecutor(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;)V
    .locals 0
    .param p1, "localCallback"    # Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    .line 1070
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;-><init>()V

    .line 1071
    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    .line 1072
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;)V

    return-void
.end method

.method private blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 1126
    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1127
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onAutoConfigurationErrorReceived$1$android-telephony-ims-ProvisioningManager$RcsProvisioningCallback$CallbackBinder(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 1088
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->onAutoConfigurationErrorReceived(ILjava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$onConfigurationChanged$0$android-telephony-ims-ProvisioningManager$RcsProvisioningCallback$CallbackBinder([B)V
    .locals 1
    .param p1, "configXml"    # [B

    .line 1078
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->onConfigurationChanged([B)V

    return-void
.end method

.method synthetic blacklist lambda$onConfigurationReset$2$android-telephony-ims-ProvisioningManager$RcsProvisioningCallback$CallbackBinder()V
    .locals 1

    .line 1099
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    invoke-virtual {v0}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->onConfigurationReset()V

    return-void
.end method

.method synthetic blacklist lambda$onPreProvisioningReceived$4$android-telephony-ims-ProvisioningManager$RcsProvisioningCallback$CallbackBinder([B)V
    .locals 1
    .param p1, "configXml"    # [B

    .line 1119
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->onPreProvisioningReceived([B)V

    return-void
.end method

.method synthetic blacklist lambda$onRemoved$3$android-telephony-ims-ProvisioningManager$RcsProvisioningCallback$CallbackBinder()V
    .locals 1

    .line 1109
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mLocalCallback:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;

    invoke-virtual {v0}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->onRemoved()V

    return-void
.end method

.method public blacklist onAutoConfigurationErrorReceived(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 1086
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1088
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1092
    nop

    .line 1093
    return-void

    .line 1091
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1092
    throw v2
.end method

.method public blacklist onConfigurationChanged([B)V
    .locals 4
    .param p1, "configXml"    # [B

    .line 1076
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1078
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;[B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1081
    nop

    .line 1082
    return-void

    .line 1080
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1081
    throw v2
.end method

.method public blacklist onConfigurationReset()V
    .locals 4

    .line 1097
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1099
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1102
    nop

    .line 1103
    return-void

    .line 1101
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1102
    throw v2
.end method

.method public blacklist onPreProvisioningReceived([B)V
    .locals 4
    .param p1, "configXml"    # [B

    .line 1117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1119
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;[B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1122
    nop

    .line 1123
    return-void

    .line 1121
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1122
    throw v2
.end method

.method public blacklist onRemoved()V
    .locals 4

    .line 1107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1109
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1112
    nop

    .line 1113
    return-void

    .line 1111
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1112
    throw v2
.end method
