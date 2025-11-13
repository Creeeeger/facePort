.class public final Lcom/android/settings/notification/zen/ZenRuleNameDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/zen/ZenRuleNameDialog;

.field public final synthetic val$editText:Landroid/widget/EditText;

.field public final synthetic val$isNew:Z

.field public final synthetic val$originalRuleName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/ZenRuleNameDialog;Landroid/widget/EditText;ZLjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/zen/ZenRuleNameDialog;

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenRuleNameDialog$1;->val$editText:Landroid/widget/EditText;

    iput-boolean p3, p0, Lcom/android/settings/notification/zen/ZenRuleNameDialog$1;->val$isNew:Z

    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenRuleNameDialog$1;->val$originalRuleName:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/zen/ZenRuleNameDialog;

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenRuleNameDialog$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-boolean p2, p0, Lcom/android/settings/notification/zen/ZenRuleNameDialog$1;->val$isNew:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenRuleNameDialog$1;->val$originalRuleName:Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleNameDialog$1;->this$0:Lcom/android/settings/notification/zen/ZenRuleNameDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    throw v0
.end method
