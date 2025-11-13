.class public Lcom/samsung/android/sdk/command/action/ModeAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "ModeAction.java"


# instance fields
.field private mExtraValue:Ljava/lang/String;

.field private mNewMode:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_mode"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/action/ModeAction;->mNewMode:I

    const-string v0, "key_extra_value"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/ModeAction;->mExtraValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionTemplateId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getActionType()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 96
    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/ModeAction;->getNewMode()I

    move-result v1

    const-string v2, "key_new_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/ModeAction;->getExtraValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/ModeAction;->getExtraValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_extra_value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getExtraValue()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/ModeAction;->mExtraValue:Ljava/lang/String;

    return-object p0
.end method

.method public getNewMode()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/samsung/android/sdk/command/action/ModeAction;->mNewMode:I

    return p0
.end method
