.class public Lcom/samsung/android/settings/bixby/actions/Action;
.super Ljava/lang/Object;
.source "Action.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createResult(I)Landroid/os/Bundle;
    .locals 1

    .line 73
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected createResult(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 66
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "result"

    .line 67
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected createResult(Z)Landroid/os/Bundle;
    .locals 1

    .line 80
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 81
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public doChangeAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public doConnectAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const-string p1, "fail"

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doDisableAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const-string p1, "fail"

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doEnableAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const-string p1, "fail"

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGetAction()Landroid/os/Bundle;
    .locals 1

    const-string v0, "fail"

    .line 16
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGetEntryListAction()Landroid/os/Bundle;
    .locals 1

    const-string v0, "fail"

    .line 21
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const-string p1, "fail"

    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const-string p1, "fail"

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSupportAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const-string p1, "fail"

    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doTryToConnectAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const-string p1, "fail"

    .line 52
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doTryToDisconnectAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const-string p1, "fail"

    .line 57
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
