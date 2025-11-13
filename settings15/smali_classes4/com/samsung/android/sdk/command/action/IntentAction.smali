.class public final Lcom/samsung/android/sdk/command/action/IntentAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIntentAction:Ljava/lang/String;

.field public mIntentExtras:Landroid/os/Bundle;

.field public mTargetClass:Ljava/lang/String;

.field public mTargetPackage:Ljava/lang/String;


# virtual methods
.method public final getActionType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_target_package"

    iget-object v2, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_target_class"

    iget-object v2, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_intent_action"

    iget-object v2, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_intent_extras"

    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
