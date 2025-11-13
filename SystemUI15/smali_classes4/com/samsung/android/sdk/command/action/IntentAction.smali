.class public final Lcom/samsung/android/sdk/command/action/IntentAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIntentAction:Ljava/lang/String;

.field public final mIntentExtras:Landroid/os/Bundle;

.field public final mTargetClass:Ljava/lang/String;

.field public final mTargetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_target_package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mTargetPackage:Ljava/lang/String;

    const-string v0, "key_target_class"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mTargetClass:Ljava/lang/String;

    const-string v0, "key_intent_action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mIntentAction:Ljava/lang/String;

    const-string v0, "key_intent_extras"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mIntentExtras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "intent"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mTargetPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mTargetClass:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mIntentAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mIntentExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getActionType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_target_package"

    iget-object v2, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_target_class"

    iget-object v2, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_intent_action"

    iget-object v2, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_intent_extras"

    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
