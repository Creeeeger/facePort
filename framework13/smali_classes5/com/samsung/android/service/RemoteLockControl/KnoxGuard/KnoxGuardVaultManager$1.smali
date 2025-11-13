.class Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$1;
.super Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
.source "KnoxGuardVaultManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    .line 1153
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 2
    .param p1, "data"    # Lcom/android/internal/widget/RemoteLockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeRemoteLockState data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KgvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    return-void
.end method

.method public blacklist checkRemoteLockPassword([B)I
    .locals 5
    .param p1, "pass"    # [B

    .line 1163
    const-string v0, "KgvManager"

    const-string v1, "checkRemoteLockPassword"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1166
    .local v1, "password":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1170
    .local v2, "failureCount":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->-$$Nest$sfgetmIsSupportKg2()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1171
    iget-object v3, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->completeUnlocking(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    goto :goto_1

    .line 1174
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getFailureCount()I

    move-result v3

    move v2, v3

    .line 1175
    add-int/lit8 v2, v2, 0x1

    .line 1177
    iget-object v3, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->verifyteHOTPPasscode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1178
    const-string v3, "[HOTP] passcode is correct!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v3, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->completeUnlocking(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 1181
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HOTP] passcode is wrong!!! current failure count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->setFailureCount(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1185
    const-string v3, "Failed setFailureCount"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KGvK failureCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    if-nez v2, :cond_4

    .line 1190
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->-$$Nest$sfgetmKnoxGuardVaultListener()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1191
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->-$$Nest$sfgetmKnoxGuardVaultListener()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;->onUnlockedByPasscode()V

    goto :goto_2

    .line 1193
    :cond_3
    const-string v3, "KnoxGuardVaultListener is null, can\'t call onUnlockedByPasscode()"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1195
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-static {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->-$$Nest$msetRemoteLockToLockscreen(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    :goto_2
    goto :goto_3

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;->printStackTrace()V

    .line 1202
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->-$$Nest$sfgetmCompleteUnlockingDone()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1206
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    :goto_3
    return v2

    .line 1203
    .restart local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error in KGV Manager internally"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
