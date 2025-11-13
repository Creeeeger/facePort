.class public Lcom/samsung/android/sdk/command/action/TriggerAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "TriggerAction.java"


# instance fields
.field private mTargetCommandAction:Lcom/samsung/android/sdk/command/action/CommandAction;

.field private mTriggerState:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_trigger_state"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTriggerState:Z

    const-string v0, "key_target_command_action"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/samsung/android/sdk/command/action/CommandAction;->createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTargetCommandAction:Lcom/samsung/android/sdk/command/action/CommandAction;

    :cond_0
    return-void
.end method


# virtual methods
.method public getActionTemplateId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getActionType()I
    .locals 0

    const/16 p0, 0x63

    return p0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 90
    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/TriggerAction;->isTriggerOn()Z

    move-result v1

    const-string v2, "key_trigger_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTargetCommandAction:Lcom/samsung/android/sdk/command/action/CommandAction;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "key_target_command_action"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public isTriggerOn()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTriggerState:Z

    return p0
.end method
