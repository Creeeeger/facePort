.class public final Lcom/android/settings/MainClear$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/MainClear;

.field public final synthetic val$input:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/MainClear;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/MainClear$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/MainClear$3;->this$0:Lcom/android/settings/MainClear;

    iput-object p2, p0, Lcom/android/settings/MainClear$3;->val$input:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/android/settings/MainClear$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "MainClear"

    const-string p2, "SamsungWalletDialog:click skip"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/MainClear$3;->this$0:Lcom/android/settings/MainClear;

    iget-object p0, p0, Lcom/android/settings/MainClear$3;->val$input:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/settings/MainClear;->-$$Nest$mcheckOtherCondition(Lcom/android/settings/MainClear;Landroid/content/Context;)V

    return-void

    :pswitch_0
    const-string p1, "SamsungWalletDialog:click go samsung wallet"

    const-string p2, "MainClear"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/android/settings/MainClear$3;->val$input:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/settings/MainClear$3;->this$0:Lcom/android/settings/MainClear;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SamsungWalletDialog:go to SamsungWallet fail"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/MainClear$3;->val$input:Ljava/lang/Object;

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, -0x7dfc1274

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/MainClear$3;->this$0:Lcom/android/settings/MainClear;

    invoke-virtual {p0}, Lcom/android/settings/MainClear;->showFinalConfirmation()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
