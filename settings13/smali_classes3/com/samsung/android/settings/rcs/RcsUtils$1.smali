.class Lcom/samsung/android/settings/rcs/RcsUtils$1;
.super Ljava/lang/Object;
.source "RcsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/rcs/RcsUtils;->showAlertDialog(ZLjava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/rcs/RcsUtils;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$switchRcs:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/rcs/RcsUtils;ZLandroid/content/Context;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils$1;->this$0:Lcom/samsung/android/settings/rcs/RcsUtils;

    iput-boolean p2, p0, Lcom/samsung/android/settings/rcs/RcsUtils$1;->val$switchRcs:Z

    iput-object p3, p0, Lcom/samsung/android/settings/rcs/RcsUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 481
    iget-object p2, p0, Lcom/samsung/android/settings/rcs/RcsUtils$1;->this$0:Lcom/samsung/android/settings/rcs/RcsUtils;

    iget-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils$1;->val$switchRcs:Z

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->setRcsUserSetting(Z)Z

    .line 482
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 483
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const p2, 0x14008000

    .line 484
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 485
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.messaging"

    const-string v1, "com.android.mms.ui.ConversationComposer"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
