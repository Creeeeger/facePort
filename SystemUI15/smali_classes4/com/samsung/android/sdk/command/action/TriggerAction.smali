.class public final Lcom/samsung/android/sdk/command/action/TriggerAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mTargetCommandAction:Lcom/samsung/android/sdk/command/action/CommandAction;

.field public final mTriggerState:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_trigger_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTriggerState:Z

    const-string v0, "key_target_command_action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/command/action/CommandAction;->createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTargetCommandAction:Lcom/samsung/android/sdk/command/action/CommandAction;

    :cond_0
    return-void
.end method

.method public constructor <init>(ZLcom/samsung/android/sdk/command/action/CommandAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTriggerState:Z

    iput-object p2, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTargetCommandAction:Lcom/samsung/android/sdk/command/action/CommandAction;

    return-void
.end method


# virtual methods
.method public final getActionTemplateId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getActionType()I
    .locals 0

    const/16 p0, 0x63

    return p0
.end method

.method public final getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_trigger_state"

    iget-boolean v2, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTriggerState:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTargetCommandAction:Lcom/samsung/android/sdk/command/action/CommandAction;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "key_target_command_action"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method
