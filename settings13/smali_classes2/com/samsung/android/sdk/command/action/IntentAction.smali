.class public final Lcom/samsung/android/sdk/command/action/IntentAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "IntentAction.java"


# instance fields
.field private mIntentAction:Ljava/lang/String;

.field private mIntentExtras:Landroid/os/Bundle;

.field private mTargetClass:Ljava/lang/String;

.field private mTargetPackage:Ljava/lang/String;


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

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_target_package"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mTargetPackage:Ljava/lang/String;

    const-string v0, "key_target_class"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mTargetClass:Ljava/lang/String;

    const-string v0, "key_intent_action"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mIntentAction:Ljava/lang/String;

    const-string v0, "key_intent_extras"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mIntentExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 61
    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mTargetPackage:Ljava/lang/String;

    const-string v2, "key_target_package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mTargetClass:Ljava/lang/String;

    const-string v2, "key_target_class"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mIntentAction:Ljava/lang/String;

    const-string v2, "key_intent_action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/IntentAction;->mIntentExtras:Landroid/os/Bundle;

    const-string v1, "key_intent_extras"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
