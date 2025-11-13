.class public final synthetic Lcom/android/settings/ActionDisabledByAppOpsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/ActionDisabledByAppOpsHelper;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/ActionDisabledByAppOpsHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ActionDisabledByAppOpsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/ActionDisabledByAppOpsHelper;

    iput-object p2, p0, Lcom/android/settings/ActionDisabledByAppOpsHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/ActionDisabledByAppOpsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/ActionDisabledByAppOpsHelper;

    iget-object p0, p0, Lcom/android/settings/ActionDisabledByAppOpsHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/ActionDisabledByAppOpsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
