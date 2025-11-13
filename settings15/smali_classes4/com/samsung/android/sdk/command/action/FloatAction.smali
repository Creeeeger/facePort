.class public final Lcom/samsung/android/sdk/command/action/FloatAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mNewValue:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "float"

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/command/action/CommandParam;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandParam;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    iput p1, p0, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    return-void
.end method


# virtual methods
.method public final getActionType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final getDataBundle()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_new_value"

    iget p0, p0, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method
