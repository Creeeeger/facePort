.class public abstract Landroid/app/admin/PolicyUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PolicyUpdateReceiver.java"


# static fields
.field public static final whitelist ACTION_DEVICE_POLICY_CHANGED:Ljava/lang/String; = "android.app.admin.action.DEVICE_POLICY_CHANGED"

.field public static final whitelist ACTION_DEVICE_POLICY_SET_RESULT:Ljava/lang/String; = "android.app.admin.action.DEVICE_POLICY_SET_RESULT"

.field public static final whitelist EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "android.app.admin.extra.ACCOUNT_TYPE"

.field public static final whitelist EXTRA_INTENT_FILTER:Ljava/lang/String; = "android.app.admin.extra.INTENT_FILTER"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.app.admin.extra.PACKAGE_NAME"

.field public static final whitelist EXTRA_PERMISSION_NAME:Ljava/lang/String; = "android.app.admin.extra.PERMISSION_NAME"

.field public static final blacklist EXTRA_POLICY_BUNDLE_KEY:Ljava/lang/String; = "android.app.admin.extra.POLICY_BUNDLE_KEY"

.field public static final blacklist EXTRA_POLICY_KEY:Ljava/lang/String; = "android.app.admin.extra.POLICY_KEY"

.field public static final blacklist EXTRA_POLICY_TARGET_USER_ID:Ljava/lang/String; = "android.app.admin.extra.POLICY_TARGET_USER_ID"

.field public static final blacklist EXTRA_POLICY_UPDATE_RESULT_KEY:Ljava/lang/String; = "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "PolicyUpdateReceiver"

    sput-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static blacklist getPolicyChangedReason(Landroid/content/Intent;)Landroid/app/admin/PolicyUpdateResult;
    .locals 2

    const-string v0, "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Landroid/app/admin/PolicyUpdateResult;

    invoke-direct {v1, v0}, Landroid/app/admin/PolicyUpdateResult;-><init>(I)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolicyUpdateResult has to be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getPolicyExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "android.app.admin.extra.POLICY_BUNDLE_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method static blacklist getPolicyKey(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const-string v0, "android.app.admin.extra.POLICY_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolicyKey has to be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getTargetUser(Landroid/content/Intent;)Landroid/app/admin/TargetUser;
    .locals 2

    const-string v0, "android.app.admin.extra.POLICY_TARGET_USER_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Landroid/app/admin/TargetUser;

    invoke-direct {v1, v0}, Landroid/app/admin/TargetUser;-><init>(I)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TargetUser has to be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist onPolicyChanged(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V
    .locals 0

    return-void
.end method

.method public whitelist onPolicySetResult(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V
    .locals 0

    return-void
.end method

.method public final whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "android.app.admin.action.DEVICE_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "android.app.admin.action.DEVICE_POLICY_SET_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_0
    sget-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Received ACTION_DEVICE_POLICY_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getTargetUser(Landroid/content/Intent;)Landroid/app/admin/TargetUser;

    move-result-object v6

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyChangedReason(Landroid/content/Intent;)Landroid/app/admin/PolicyUpdateResult;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/app/admin/PolicyUpdateReceiver;->onPolicyChanged(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V

    goto :goto_2

    :pswitch_1
    sget-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Received ACTION_DEVICE_POLICY_SET_RESULT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getTargetUser(Landroid/content/Intent;)Landroid/app/admin/TargetUser;

    move-result-object v6

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyChangedReason(Landroid/content/Intent;)Landroid/app/admin/PolicyUpdateResult;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/app/admin/PolicyUpdateReceiver;->onPolicySetResult(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68add275 -> :sswitch_1
        -0x593bda9d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
