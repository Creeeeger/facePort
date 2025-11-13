.class public final Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;

.field public final synthetic val$title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$1;->this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;

    iput-object p2, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$1;->val$title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$1;->this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;

    iget-object v0, p1, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;->mActionHandler:Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$1;->this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;

    iget-object v2, v2, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;->mKeyEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$1;->this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;

    iget-object v3, v3, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;->mValueEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "params"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v3, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$ResponseCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$1;->this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog$ResponseCallback;-><init>(Lcom/samsung/android/settings/actions/development/SettingsBixbyDialog;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->executeAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    return-void
.end method
