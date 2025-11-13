.class public final Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$actionCallback:Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

.field public final synthetic val$hasAsyncUpdate:Z


# direct methods
.method public constructor <init>(ZLcom/samsung/android/sdk/command/provider/CommandProvider$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;->val$hasAsyncUpdate:Z

    iput-object p2, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;->val$actionCallback:Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    return-void
.end method


# virtual methods
.method public final onResolved(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "performCommandAction() responseCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / responseMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / hasAsyncUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;->val$hasAsyncUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / actionCallback "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;->val$actionCallback:Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    if-nez p0, :cond_0

    const-string/jumbo v2, "null"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "valid"

    :goto_0
    const-string v3, "Command/SettingsCommandActionHandler"

    invoke-static {v0, v2, v3}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz v1, :cond_1

    const/4 p1, 0x3

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
