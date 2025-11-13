.class public final Lcom/samsung/android/sdk/command/action/ModeAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mExtraValue:Ljava/lang/String;

.field public mNewMode:I


# virtual methods
.method public final getActionTemplateId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getActionType()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public final getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_new_mode"

    iget v2, p0, Lcom/samsung/android/sdk/command/action/ModeAction;->mNewMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/ModeAction;->mExtraValue:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "key_extra_value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
