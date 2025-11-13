.class public abstract Lcom/samsung/android/sdk/command/action/CommandAction;
.super Ljava/lang/Object;
.source "CommandAction.java"


# static fields
.field public static final DEFAULT_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction;

.field public static final ERROR_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction;


# instance fields
.field private mActionId:Ljava/lang/String;

.field private mTemplateId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/samsung/android/sdk/command/action/CommandAction$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandAction$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/command/action/CommandAction;->ERROR_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction;

    .line 30
    new-instance v0, Lcom/samsung/android/sdk/command/action/CommandAction$2;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandAction$2;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/command/action/CommandAction;->DEFAULT_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 196
    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

    return-void
.end method

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

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_action_id"

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mActionId:Ljava/lang/String;

    const-string v0, "key_template_id"

    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

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

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

    return-void
.end method

.method public static createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;
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

    .line 266
    sget-object p0, Lcom/samsung/android/sdk/command/action/CommandAction;->ERROR_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "key_action_type"

    .line 268
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 287
    :try_start_0
    sget-object p0, Lcom/samsung/android/sdk/command/action/CommandAction;->ERROR_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction;

    return-object p0

    .line 284
    :pswitch_0
    new-instance v0, Lcom/samsung/android/sdk/command/action/ModeAction;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/action/ModeAction;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 280
    :pswitch_1
    new-instance v0, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/action/JSONStringAction;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 278
    :pswitch_2
    new-instance v0, Lcom/samsung/android/sdk/command/action/StringAction;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/action/StringAction;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 276
    :pswitch_3
    new-instance v0, Lcom/samsung/android/sdk/command/action/IntentAction;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/action/IntentAction;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 274
    :pswitch_4
    new-instance v0, Lcom/samsung/android/sdk/command/action/FloatAction;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/action/FloatAction;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 272
    :pswitch_5
    new-instance v0, Lcom/samsung/android/sdk/command/action/BooleanAction;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/action/BooleanAction;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 282
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/command/action/TriggerAction;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/action/TriggerAction;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 290
    :catch_0
    sget-object p0, Lcom/samsung/android/sdk/command/action/CommandAction;->ERROR_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mActionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 254
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mActionId:Ljava/lang/String;

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mActionId:Ljava/lang/String;

    return-object p0
.end method

.method public getActionTemplateId()Ljava/lang/String;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getActionType()I
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_action_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v1

    const-string v2, "key_action_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionTemplateId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_template_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
