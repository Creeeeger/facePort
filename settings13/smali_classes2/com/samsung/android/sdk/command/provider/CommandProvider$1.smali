.class Lcom/samsung/android/sdk/command/provider/CommandProvider$1;
.super Ljava/lang/Object;
.source "CommandProvider.java"

# interfaces
.implements Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/command/provider/CommandProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/command/provider/CommandProvider;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$commandId:Ljava/lang/String;

.field final synthetic val$handler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/command/provider/CommandProvider;Landroid/os/Bundle;Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$bundle",
            "val$handler",
            "val$commandId"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->this$0:Lcom/samsung/android/sdk/command/provider/CommandProvider;

    iput-object p2, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$handler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;

    iput-object p4, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$commandId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionFinished(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "responseResult",
            "responseMessage"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "response_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    iget-object p1, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v0, "response_message"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$handler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;

    iget-object p2, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$commandId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p0, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "command"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActionFinished(ILjava/lang/String;Lcom/samsung/android/sdk/command/Command;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "responseResult",
            "responseMessage",
            "command"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "response_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    iget-object p1, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v0, "response_message"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 165
    iget-object p0, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "command"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
