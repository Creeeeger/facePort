.class public final Lcom/samsung/android/sdk/command/action/FloatAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "FloatAction.java"


# instance fields
.field private final mNewValue:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    const-string v0, "float"

    .line 19
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Ljava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_value"

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    iget p0, p0, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    const-string v1, "key_new_value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public getNewValue()F
    .locals 0

    .line 36
    iget p0, p0, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    return p0
.end method
