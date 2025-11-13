.class public Lcom/samsung/android/sdk/command/template/ToggleTemplate;
.super Lcom/samsung/android/sdk/command/template/CommandTemplate;
.source "ToggleTemplate.java"


# instance fields
.field private mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_value"

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->mIsChecked:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    const-string/jumbo v0, "toggle"

    .line 20
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Ljava/lang/String;)V

    .line 21
    iput-boolean p1, p0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->mIsChecked:Z

    return-void
.end method


# virtual methods
.method public getDataBundle()Landroid/os/Bundle;
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    iget-boolean p0, p0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->mIsChecked:Z

    const-string v1, "key_new_value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getTemplateType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->mIsChecked:Z

    return p0
.end method
