.class public final Lcom/samsung/android/settings/bixby/control/actions/LaunchAction;
.super Lcom/samsung/android/settings/bixby/control/actions/BaseAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final executeInternal()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mExtraBundle:Landroid/os/Bundle;

    const-string v1, "goto"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->excuteAction(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
