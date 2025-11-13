.class public final Lcom/samsung/android/sdk/command/action/ModeAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mExtraValue:Ljava/lang/String;

.field public final mNewMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/command/action/ModeAction;->mNewMode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/command/action/ModeAction;->mNewMode:I

    iput-object p2, p0, Lcom/samsung/android/sdk/command/action/ModeAction;->mExtraValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/action/ModeAction;->mNewMode:I

    const-string v0, "key_extra_value"

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
.method public final getActionTemplateId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getActionType()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public final getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_new_mode"

    iget v2, p0, Lcom/samsung/android/sdk/command/action/ModeAction;->mNewMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/ModeAction;->mExtraValue:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "key_extra_value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
