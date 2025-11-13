.class public Lcom/samsung/android/sdk/command/action/StringAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "StringAction.java"


# instance fields
.field private mNewValue:Ljava/lang/String;


# direct methods
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
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/StringAction;->mNewValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/StringAction;->mNewValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 2

    .line 44
    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/StringAction;->mNewValue:Ljava/lang/String;

    const-string v1, "key_new_value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/StringAction;->mNewValue:Ljava/lang/String;

    return-object p0
.end method
