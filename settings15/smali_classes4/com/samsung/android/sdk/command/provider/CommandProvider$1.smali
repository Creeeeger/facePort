.class public final Lcom/samsung/android/sdk/command/provider/CommandProvider$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$bundle:Landroid/os/Bundle;

.field public final synthetic val$commandId:Ljava/lang/String;

.field public final synthetic val$handler:Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$handler:Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;

    iput-object p3, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$commandId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onActionFinished(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "response_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v0, "response_message"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$handler:Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;

    iget-object p2, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$commandId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "command"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
