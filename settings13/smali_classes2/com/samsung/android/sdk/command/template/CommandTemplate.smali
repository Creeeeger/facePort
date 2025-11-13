.class public abstract Lcom/samsung/android/sdk/command/template/CommandTemplate;
.super Ljava/lang/Object;
.source "CommandTemplate.java"


# static fields
.field public static ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

.field public static NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;


# instance fields
.field private mTemplateId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/template/CommandTemplate$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 24
    new-instance v0, Lcom/samsung/android/sdk/command/template/CommandTemplate$2;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/template/CommandTemplate$2;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 104
    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->mTemplateId:Ljava/lang/String;

    return-void
.end method

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

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_template_id"

    const-string v1, ""

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->mTemplateId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "templateId"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->mTemplateId:Ljava/lang/String;

    return-void
.end method

.method public static createTemplateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/template/CommandTemplate;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 158
    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "key_template_type"

    .line 161
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 186
    :try_start_0
    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    return-object p0

    .line 178
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 175
    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 172
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 169
    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 166
    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 181
    :cond_6
    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 189
    :catch_0
    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    return-object p0
.end method


# virtual methods
.method public getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_template_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getTemplateType()I

    move-result p0

    const-string v1, "key_template_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->mTemplateId:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getTemplateType()I
.end method
