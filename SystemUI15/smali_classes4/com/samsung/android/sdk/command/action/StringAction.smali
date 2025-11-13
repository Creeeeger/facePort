.class public final Lcom/samsung/android/sdk/command/action/StringAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mNewValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/StringAction;->mNewValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/StringAction;->mNewValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getActionType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final getDataBundle()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_new_value"

    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/StringAction;->mNewValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
