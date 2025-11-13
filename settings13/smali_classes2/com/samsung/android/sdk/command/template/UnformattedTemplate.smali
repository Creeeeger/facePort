.class public Lcom/samsung/android/sdk/command/template/UnformattedTemplate;
.super Lcom/samsung/android/sdk/command/template/CommandTemplate;
.source "UnformattedTemplate.java"


# instance fields
.field private mJSONString:Ljava/lang/String;


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

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_value"

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;->mJSONString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataBundle()Landroid/os/Bundle;
    .locals 2

    .line 38
    invoke-super {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;->mJSONString:Ljava/lang/String;

    const-string v1, "key_new_value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTemplateType()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method
