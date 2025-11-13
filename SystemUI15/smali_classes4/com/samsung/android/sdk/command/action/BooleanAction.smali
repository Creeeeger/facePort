.class public final Lcom/samsung/android/sdk/command/action/BooleanAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mNewState:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/command/action/BooleanAction;->mNewState:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/command/action/BooleanAction;->mNewState:Z

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

    const/4 p0, 0x1

    return p0
.end method

.method public final getDataBundle()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_new_state"

    iget-boolean p0, p0, Lcom/samsung/android/sdk/command/action/BooleanAction;->mNewState:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
