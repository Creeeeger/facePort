.class public Landroid/app/admin/DeviceAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceAdminReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminReceiver$BugreportFailureCode;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_AFFILIATED_PROFILE_TRANSFER_OWNERSHIP_COMPLETE:Ljava/lang/String; = "android.app.action.AFFILIATED_PROFILE_TRANSFER_OWNERSHIP_COMPLETE"

.field public static final greylist-max-o ACTION_BUGREPORT_FAILED:Ljava/lang/String; = "android.app.action.BUGREPORT_FAILED"

.field public static final greylist-max-o ACTION_BUGREPORT_SHARE:Ljava/lang/String; = "android.app.action.BUGREPORT_SHARE"

.field public static final greylist-max-o ACTION_BUGREPORT_SHARING_DECLINED:Ljava/lang/String; = "android.app.action.BUGREPORT_SHARING_DECLINED"

.field public static final whitelist ACTION_CHOOSE_PRIVATE_KEY_ALIAS:Ljava/lang/String; = "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

.field public static final blacklist ACTION_COMPLIANCE_ACKNOWLEDGEMENT_REQUIRED:Ljava/lang/String; = "android.app.action.COMPLIANCE_ACKNOWLEDGEMENT_REQUIRED"

.field public static final whitelist ACTION_DEVICE_ADMIN_DISABLED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_DISABLED"

.field public static final whitelist ACTION_DEVICE_ADMIN_DISABLE_REQUESTED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

.field public static final whitelist ACTION_DEVICE_ADMIN_ENABLED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_ENABLED"

.field public static final whitelist ACTION_LOCK_TASK_ENTERING:Ljava/lang/String; = "android.app.action.LOCK_TASK_ENTERING"

.field public static final whitelist ACTION_LOCK_TASK_EXITING:Ljava/lang/String; = "android.app.action.LOCK_TASK_EXITING"

.field public static final whitelist ACTION_NETWORK_LOGS_AVAILABLE:Ljava/lang/String; = "android.app.action.NETWORK_LOGS_AVAILABLE"

.field public static final greylist-max-o ACTION_NOTIFY_PENDING_SYSTEM_UPDATE:Ljava/lang/String; = "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

.field public static final blacklist ACTION_OPERATION_SAFETY_STATE_CHANGED:Ljava/lang/String; = "android.app.action.OPERATION_SAFETY_STATE_CHANGED"

.field public static final whitelist ACTION_PASSWORD_CHANGED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_CHANGED"

.field public static final whitelist ACTION_PASSWORD_EXPIRING:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_EXPIRING"

.field public static final whitelist ACTION_PASSWORD_FAILED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_FAILED"

.field public static final whitelist ACTION_PASSWORD_SUCCEEDED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_SUCCEEDED"

.field public static final whitelist ACTION_PROFILE_PROVISIONING_COMPLETE:Ljava/lang/String; = "android.app.action.PROFILE_PROVISIONING_COMPLETE"

.field public static final blacklist ACTION_RECOVERY_PASSWORD_REQUESTED:Ljava/lang/String; = "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

.field public static final whitelist ACTION_SECURITY_LOGS_AVAILABLE:Ljava/lang/String; = "android.app.action.SECURITY_LOGS_AVAILABLE"

.field public static final greylist-max-o ACTION_TRANSFER_OWNERSHIP_COMPLETE:Ljava/lang/String; = "android.app.action.TRANSFER_OWNERSHIP_COMPLETE"

.field public static final greylist-max-o ACTION_USER_ADDED:Ljava/lang/String; = "android.app.action.USER_ADDED"

.field public static final greylist-max-o ACTION_USER_REMOVED:Ljava/lang/String; = "android.app.action.USER_REMOVED"

.field public static final greylist-max-o ACTION_USER_STARTED:Ljava/lang/String; = "android.app.action.USER_STARTED"

.field public static final greylist-max-o ACTION_USER_STOPPED:Ljava/lang/String; = "android.app.action.USER_STOPPED"

.field public static final greylist-max-o ACTION_USER_SWITCHED:Ljava/lang/String; = "android.app.action.USER_SWITCHED"

.field public static final whitelist BUGREPORT_FAILURE_FAILED_COMPLETING:I = 0x0

.field public static final whitelist BUGREPORT_FAILURE_FILE_NO_LONGER_AVAILABLE:I = 0x1

.field public static final whitelist DEVICE_ADMIN_META_DATA:Ljava/lang/String; = "android.app.device_admin"

.field public static final greylist-max-o EXTRA_BUGREPORT_FAILURE_REASON:Ljava/lang/String; = "android.app.extra.BUGREPORT_FAILURE_REASON"

.field public static final greylist-max-o EXTRA_BUGREPORT_HASH:Ljava/lang/String; = "android.app.extra.BUGREPORT_HASH"

.field public static final greylist-max-o EXTRA_CHOOSE_PRIVATE_KEY_ALIAS:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

.field public static final greylist-max-o EXTRA_CHOOSE_PRIVATE_KEY_RESPONSE:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_RESPONSE"

.field public static final greylist-max-o EXTRA_CHOOSE_PRIVATE_KEY_SENDER_UID:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

.field public static final greylist-max-o EXTRA_CHOOSE_PRIVATE_KEY_URI:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

.field public static final whitelist EXTRA_DISABLE_WARNING:Ljava/lang/String; = "android.app.extra.DISABLE_WARNING"

.field public static final whitelist EXTRA_LOCK_TASK_PACKAGE:Ljava/lang/String; = "android.app.extra.LOCK_TASK_PACKAGE"

.field public static final greylist-max-o EXTRA_NETWORK_LOGS_COUNT:Ljava/lang/String; = "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

.field public static final greylist-max-o EXTRA_NETWORK_LOGS_TOKEN:Ljava/lang/String; = "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

.field public static final blacklist EXTRA_OPERATION_SAFETY_REASON:Ljava/lang/String; = "android.app.extra.OPERATION_SAFETY_REASON"

.field public static final blacklist EXTRA_OPERATION_SAFETY_STATE:Ljava/lang/String; = "android.app.extra.OPERATION_SAFETY_STATE"

.field public static final greylist-max-o EXTRA_SYSTEM_UPDATE_RECEIVED_TIME:Ljava/lang/String; = "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

.field public static final whitelist EXTRA_TRANSFER_OWNERSHIP_ADMIN_EXTRAS_BUNDLE:Ljava/lang/String; = "android.app.extra.TRANSFER_OWNERSHIP_ADMIN_EXTRAS_BUNDLE"

.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DevicePolicy"


# instance fields
.field private greylist-max-o mManager:Landroid/app/admin/DevicePolicyManager;

.field private greylist-max-o mWho:Landroid/content/ComponentName;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private blacklist hasRequiredExtra(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "extra"    # Ljava/lang/String;

    .line 1192
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' on intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist onOperationSafetyStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1151
    const-string v0, "android.app.extra.OPERATION_SAFETY_REASON"

    invoke-direct {p0, p2, v0}, Landroid/app/admin/DeviceAdminReceiver;->hasRequiredExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "DevicePolicy"

    if-eqz v1, :cond_2

    .line 1152
    const-string v1, "android.app.extra.OPERATION_SAFETY_STATE"

    invoke-direct {p0, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->hasRequiredExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1157
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1159
    .local v0, "reason":I
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->isValidOperationSafetyReason(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received invalid reason on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void

    .line 1163
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1165
    .local v1, "isSafe":Z
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/admin/DeviceAdminReceiver;->onOperationSafetyStateChanged(Landroid/content/Context;IZ)V

    .line 1166
    return-void

    .line 1153
    .end local v0    # "reason":I
    .end local v1    # "isSafe":Z
    :cond_2
    :goto_0
    const-string v0, "Igoring intent that\'s missing required extras"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-void
.end method


# virtual methods
.method public whitelist getManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 576
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 577
    return-object v0

    .line 579
    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    .line 581
    return-object v0
.end method

.method public whitelist getWho(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 590
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 591
    return-object v0

    .line 593
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    .line 594
    return-object v0
.end method

.method public whitelist onBugreportFailed(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "failureCode"    # I

    .line 964
    return-void
.end method

.method public whitelist onBugreportShared(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bugreportHash"    # Ljava/lang/String;

    .line 948
    return-void
.end method

.method public whitelist onBugreportSharingDeclined(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 932
    return-void
.end method

.method public whitelist onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;

    .line 895
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onComplianceAcknowledgementRequired(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1188
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminReceiver;->getManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->acknowledgeDeviceCompliant()V

    .line 1189
    return-void
.end method

.method public whitelist onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 633
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 648
    return-void
.end method

.method public whitelist onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 614
    return-void
.end method

.method public whitelist onLockTaskModeEntering(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 865
    return-void
.end method

.method public whitelist onLockTaskModeExiting(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 874
    return-void
.end method

.method public whitelist onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "batchToken"    # J
    .param p5, "networkLogsCount"    # I

    .line 1013
    return-void
.end method

.method public whitelist onOperationSafetyStateChanged(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reason"    # I
    .param p3, "isSafe"    # Z

    .line 1148
    return-void
.end method

.method public whitelist onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 663
    return-void
.end method

.method public whitelist onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 678
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 679
    return-void
.end method

.method public whitelist onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    return-void
.end method

.method public whitelist onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 791
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V

    .line 792
    return-void
.end method

.method public whitelist onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    return-void
.end method

.method public whitelist onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 709
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 710
    return-void
.end method

.method public whitelist onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 725
    return-void
.end method

.method public whitelist onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 740
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V

    .line 741
    return-void
.end method

.method public whitelist onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 826
    return-void
.end method

.method public whitelist onReadyForUserInitialization(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 838
    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1211
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.app.action.ACTION_PASSWORD_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.USER"

    if-eqz v1, :cond_0

    .line 1212
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1213
    :cond_0
    const-string v1, "android.app.action.ACTION_PASSWORD_FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1214
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1215
    :cond_1
    const-string v1, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1216
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1217
    :cond_2
    const-string v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1218
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1219
    :cond_3
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1220
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1221
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    .line 1222
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/admin/DeviceAdminReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    .line 1223
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1225
    .end local v1    # "res":Ljava/lang/CharSequence;
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_4
    goto/16 :goto_0

    :cond_5
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1226
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1227
    :cond_6
    const-string v1, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1228
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1229
    :cond_7
    const-string v1, "android.app.action.PROFILE_PROVISIONING_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1230
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1231
    :cond_8
    const-string v1, "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1232
    const/4 v1, -0x1

    const-string v2, "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1233
    .local v1, "uid":I
    const-string v2, "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1234
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1235
    .local v9, "alias":Ljava/lang/String;
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, v1

    move-object v7, v2

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/app/admin/DeviceAdminReceiver;->onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1236
    .local v3, "chosenAlias":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/app/admin/DeviceAdminReceiver;->setResultData(Ljava/lang/String;)V

    .line 1237
    .end local v1    # "uid":I
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "chosenAlias":Ljava/lang/String;
    .end local v9    # "alias":Ljava/lang/String;
    goto/16 :goto_0

    :cond_9
    const-string v1, "android.app.action.LOCK_TASK_ENTERING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1238
    const-string v1, "android.app.extra.LOCK_TASK_PACKAGE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1239
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->onLockTaskModeEntering(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1240
    .end local v1    # "pkg":Ljava/lang/String;
    goto/16 :goto_0

    :cond_a
    const-string v1, "android.app.action.LOCK_TASK_EXITING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1241
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onLockTaskModeExiting(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1242
    :cond_b
    const-string v1, "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_c

    .line 1243
    const-string v1, "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

    invoke-virtual {p2, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1244
    .local v1, "receivedTime":J
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/app/admin/DeviceAdminReceiver;->onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 1245
    .end local v1    # "receivedTime":J
    goto/16 :goto_0

    :cond_c
    const-string v1, "android.app.action.BUGREPORT_SHARING_DECLINED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1246
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onBugreportSharingDeclined(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1247
    :cond_d
    const-string v1, "android.app.action.BUGREPORT_SHARE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1248
    const-string v1, "android.app.extra.BUGREPORT_HASH"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1249
    .local v1, "bugreportFileHash":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->onBugreportShared(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1250
    .end local v1    # "bugreportFileHash":Ljava/lang/String;
    goto/16 :goto_0

    :cond_e
    const-string v1, "android.app.action.BUGREPORT_FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_f

    .line 1251
    const-string v1, "android.app.extra.BUGREPORT_FAILURE_REASON"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1253
    .local v1, "failureCode":I
    invoke-virtual {p0, p1, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->onBugreportFailed(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 1254
    .end local v1    # "failureCode":I
    goto/16 :goto_0

    :cond_f
    const-string v1, "android.app.action.SECURITY_LOGS_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1255
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1256
    :cond_10
    const-string v1, "android.app.action.NETWORK_LOGS_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1257
    const-string v1, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    invoke-virtual {p2, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1258
    .local v1, "batchToken":J
    const-string v3, "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1259
    .local v3, "networkLogsCount":I
    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-wide v9, v1

    move v11, v3

    invoke-virtual/range {v6 .. v11}, Landroid/app/admin/DeviceAdminReceiver;->onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V

    .line 1260
    .end local v1    # "batchToken":J
    .end local v3    # "networkLogsCount":I
    goto/16 :goto_0

    :cond_11
    const-string v1, "android.app.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1261
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->onUserAdded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1262
    :cond_12
    const-string v1, "android.app.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1263
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->onUserRemoved(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1264
    :cond_13
    const-string v1, "android.app.action.USER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1265
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->onUserStarted(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1266
    :cond_14
    const-string v1, "android.app.action.USER_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1267
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->onUserStopped(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1268
    :cond_15
    const-string v1, "android.app.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1269
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->onUserSwitched(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1270
    :cond_16
    const-string v1, "android.app.action.TRANSFER_OWNERSHIP_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1271
    nop

    .line 1272
    const-string v1, "android.app.extra.TRANSFER_OWNERSHIP_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 1273
    .local v1, "bundle":Landroid/os/PersistableBundle;
    invoke-virtual {p0, p1, v1}, Landroid/app/admin/DeviceAdminReceiver;->onTransferOwnershipComplete(Landroid/content/Context;Landroid/os/PersistableBundle;)V

    .line 1274
    .end local v1    # "bundle":Landroid/os/PersistableBundle;
    goto :goto_0

    :cond_17
    const-string v1, "android.app.action.AFFILIATED_PROFILE_TRANSFER_OWNERSHIP_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1275
    nop

    .line 1276
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1275
    invoke-virtual {p0, p1, v1}, Landroid/app/admin/DeviceAdminReceiver;->onTransferAffiliatedProfileOwnershipComplete(Landroid/content/Context;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1277
    :cond_18
    const-string v1, "android.app.action.OPERATION_SAFETY_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1278
    invoke-direct {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onOperationSafetyStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1279
    :cond_19
    const-string v1, "android.app.action.COMPLIANCE_ACKNOWLEDGEMENT_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1280
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onComplianceAcknowledgementRequired(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1282
    :cond_1a
    :goto_0
    return-void
.end method

.method public blacklist onRecoveryPasswordRequested(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 853
    return-void
.end method

.method public whitelist onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 987
    return-void
.end method

.method public whitelist onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receivedTime"    # J

    .line 920
    return-void
.end method

.method public whitelist onTransferAffiliatedProfileOwnershipComplete(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1128
    return-void
.end method

.method public whitelist onTransferOwnershipComplete(Landroid/content/Context;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/PersistableBundle;

    .line 1107
    return-void
.end method

.method public whitelist onUserAdded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "addedUser"    # Landroid/os/UserHandle;

    .line 1029
    return-void
.end method

.method public whitelist onUserRemoved(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "removedUser"    # Landroid/os/UserHandle;

    .line 1045
    return-void
.end method

.method public whitelist onUserStarted(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "startedUser"    # Landroid/os/UserHandle;

    .line 1061
    return-void
.end method

.method public whitelist onUserStopped(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "stoppedUser"    # Landroid/os/UserHandle;

    .line 1077
    return-void
.end method

.method public whitelist onUserSwitched(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "switchedUser"    # Landroid/os/UserHandle;

    .line 1093
    return-void
.end method
