.class public final Lcom/samsung/android/sdk/command/action/StringAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mNewValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/StringAction;->mNewValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getActionType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final getDataBundle()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_new_value"

    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/StringAction;->mNewValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
