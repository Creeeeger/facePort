.class public final Lcom/samsung/android/sdk/command/action/FloatAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mNewValue:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const-string v0, "float"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Ljava/lang/String;)V

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
