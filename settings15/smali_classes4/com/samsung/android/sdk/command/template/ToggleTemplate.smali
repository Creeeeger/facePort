.class public final Lcom/samsung/android/sdk/command/template/ToggleTemplate;
.super Lcom/samsung/android/sdk/command/template/CommandTemplate;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIsChecked:Z


# virtual methods
.method public final getDataBundle()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_new_value"

    iget-boolean p0, p0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->mIsChecked:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final getTemplateType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
