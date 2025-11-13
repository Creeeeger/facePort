.class public final Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $onAllow:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onDeny:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;Lcom/android/settings/bluetooth/RequestPermissionActivity$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$1;->$onDeny:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$1;->$onAllow:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    const-string v0, "no_bluetooth"

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$1;->$onDeny:Lkotlin/jvm/functions/Function0;

    :goto_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelper$requestEnable$1$1;->$onAllow:Lkotlin/jvm/functions/Function0;

    goto :goto_0

    :goto_1
    return-void
.end method
