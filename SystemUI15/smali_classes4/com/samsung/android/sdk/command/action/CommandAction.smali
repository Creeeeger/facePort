.class public abstract Lcom/samsung/android/sdk/command/action/CommandAction;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ERROR_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction$1;


# instance fields
.field public mActionId:Ljava/lang/String;

.field public final mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

.field public final mTemplateId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/command/action/CommandAction$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandAction$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/command/action/CommandAction;->ERROR_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction$1;

    new-instance v0, Lcom/samsung/android/sdk/command/action/CommandAction$2;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandAction$2;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/command/action/CommandParam;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandParam;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_action_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mActionId:Ljava/lang/String;

    const-string v0, "key_template_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/command/action/CommandParam;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandParam;-><init>()V

    const-string v1, "command_param"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "commandParamBundle is empty"

    const-string v1, "CommandLib/CommandParam"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "dex_mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/samsung/android/sdk/command/action/CommandParam;->mDexMode:Z

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/sdk/command/action/CommandParam;

    invoke-direct {p1}, Lcom/samsung/android/sdk/command/action/CommandParam;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    return-void
.end method

.method public static createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/command/action/CommandAction;->ERROR_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction$1;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "key_action_type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x62

    if-eq v1, v2, :cond_2

    const/16 v2, 0x63

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/command/action/ModeAction;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/ModeAction;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_1
    new-instance v1, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/JSONStringAction;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_2
    new-instance v1, Lcom/samsung/android/sdk/command/action/StringAction;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/StringAction;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_3
    new-instance v1, Lcom/samsung/android/sdk/command/action/IntentAction;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/IntentAction;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_4
    new-instance v1, Lcom/samsung/android/sdk/command/action/FloatAction;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/FloatAction;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_5
    new-instance v1, Lcom/samsung/android/sdk/command/action/BooleanAction;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/BooleanAction;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/command/action/TriggerAction;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/TriggerAction;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/command/action/DefaultAction;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/DefaultAction;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0

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
.method public getActionTemplateId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getActionType()I
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mActionId:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mActionId:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mActionId:Ljava/lang/String;

    const-string v2, "key_action_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_action_type"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_template_id"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionTemplateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-boolean p0, p0, Lcom/samsung/android/sdk/command/action/CommandParam;->mDexMode:Z

    const-string v2, "dex_mode"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "command_param"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
