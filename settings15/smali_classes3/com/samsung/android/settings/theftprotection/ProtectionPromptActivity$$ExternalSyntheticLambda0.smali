.class public final synthetic Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    sget v0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ProtectionPromptActivity"

    const-string v1, "ProtectionPrompt.onSamsungAccountClicked"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Ljava/util/ArrayList;

    const-string v1, "otp_email"

    const-string v2, "passkey"

    const-string v3, "biometric"

    const-string v4, "forgot_password"

    invoke-static {v1, v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "excluded_methods"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 p0, 0x65

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string p0, "54105"

    const p1, 0xd3bf

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    return-void
.end method
