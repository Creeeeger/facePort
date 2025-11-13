.class public final Lcom/samsung/android/sdk/command/action/JSONStringAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "JSONStringAction.java"


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

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_value"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonValue"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    const-string v1, "key_new_value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    return-object p0
.end method
