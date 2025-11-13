.class public final Lcom/android/settings/development/DSUTermsOfServiceActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/development/DSUTermsOfServiceActivity;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/DSUTermsOfServiceActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/DSUTermsOfServiceActivity$1;->this$0:Lcom/android/settings/development/DSUTermsOfServiceActivity;

    iput-object p2, p0, Lcom/android/settings/development/DSUTermsOfServiceActivity$1;->val$intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/development/DSUTermsOfServiceActivity$1;->this$0:Lcom/android/settings/development/DSUTermsOfServiceActivity;

    iget-object p0, p0, Lcom/android/settings/development/DSUTermsOfServiceActivity$1;->val$intent:Landroid/content/Intent;

    sget v0, Lcom/android/settings/development/DSUTermsOfServiceActivity;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.android.dynsystem"

    const-string v1, "com.android.dynsystem.VerificationActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
