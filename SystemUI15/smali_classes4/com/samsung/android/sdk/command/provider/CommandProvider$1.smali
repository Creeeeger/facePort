.class public final Lcom/samsung/android/sdk/command/provider/CommandProvider$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;


# instance fields
.field public final synthetic val$bundle:Landroid/os/Bundle;

.field public final synthetic val$commandId:Ljava/lang/String;

.field public final synthetic val$handler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/command/provider/CommandProvider;Landroid/os/Bundle;Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$handler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;

    iput-object p4, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$commandId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionFinished(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    const-string v1, "response_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    const-string v0, "response_message"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$handler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;

    iget-object p2, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$commandId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

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
