.class public Lcom/samsung/android/settings/directaction/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/directaction/ActionCommand$ActionFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionCommand"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyword:Ljava/lang/String;

.field private mTaskId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mTaskId:Ljava/lang/Integer;

    .line 166
    iput-object v0, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mKeyword:Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createAction(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/settings/bixby/actions/Action;
    .locals 2

    .line 267
    new-instance v0, Lcom/samsung/android/settings/directaction/ActionCommand$ActionFactory;

    invoke-direct {v0}, Lcom/samsung/android/settings/directaction/ActionCommand$ActionFactory;-><init>()V

    .line 268
    iget-object v1, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mTaskId:Ljava/lang/Integer;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/settings/directaction/ActionCommand$ActionFactory;->-$$Nest$mcreateObject(Lcom/samsung/android/settings/directaction/ActionCommand$ActionFactory;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/settings/bixby/actions/Action;

    move-result-object p0

    return-object p0
.end method

.method private getNewValue(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 285
    sget-object p0, Lcom/samsung/android/settings/directaction/ActionCommand;->TAG:Ljava/lang/String;

    const-string p1, "Bundle is null"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "value"

    .line 289
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTaskId(Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "targetTaskId"

    .line 296
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 298
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private startSettingsMainIfNedded(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "result"

    .line 272
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 274
    sget-object v0, Lcom/samsung/android/settings/directaction/ActionCommand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "not_supported"

    .line 276
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object p0, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/bixby/BixbyUtils;->startSettingsMain(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "temporary_unavailable"

    .line 278
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 279
    iget-object p0, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/bixby/BixbyUtils;->startSettingsMain(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 175
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 176
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 180
    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/directaction/ActionCommand;->getTaskId(Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object v0

    .line 181
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/directaction/ActionCommand;->getNewValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    .line 184
    sget-object v2, Lcom/samsung/android/settings/directaction/ActionCommand;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", arg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", taskId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", value = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/directaction/ActionCommand;->createAction(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/settings/bixby/actions/Action;

    move-result-object v0

    const-string v3, "result"

    if-nez v0, :cond_1

    const-string p0, "fail to create action"

    .line 188
    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "fail"

    .line 190
    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 194
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "disable"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "get_entry_list"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "connect"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "try_to_connect"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "try_to_disconnect"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_5
    const-string v4, "open"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_6
    const-string v4, "goto"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_7
    const-string v4, "set"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_8
    const-string v4, "get"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_9
    const-string v4, "supported"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_a
    const-string v4, "enable"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_b
    const-string v4, "change"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x0

    :goto_0
    const-string p1, "temporary_unavailable"

    packed-switch v2, :pswitch_data_0

    .line 256
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string p1, "not_supported"

    .line 257
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    :pswitch_0
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/bixby/actions/Action;->doDisableAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 207
    iget-object p3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/samsung/android/settings/bixby/BixbyUtils;->startSettingsMain(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    sget-object p1, Lcom/samsung/android/settings/directaction/ActionCommand;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    :pswitch_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/actions/Action;->doGetEntryListAction()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 223
    :pswitch_2
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/bixby/actions/Action;->doConnectAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 227
    :pswitch_3
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/bixby/actions/Action;->doTryToConnectAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 231
    :pswitch_4
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/bixby/actions/Action;->doTryToDisconnectAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 215
    :pswitch_5
    :try_start_1
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/bixby/actions/Action;->doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 217
    iget-object p3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/samsung/android/settings/bixby/BixbyUtils;->startSettingsMain(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    sget-object p1, Lcom/samsung/android/settings/directaction/ActionCommand;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    :pswitch_6
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/bixby/actions/Action;->doSetAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 196
    :pswitch_7
    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/actions/Action;->doGetAction()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 252
    :pswitch_8
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/bixby/actions/Action;->doSupportAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 240
    :pswitch_9
    :try_start_2
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/bixby/actions/Action;->doEnableAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    .line 242
    iget-object p3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/samsung/android/settings/bixby/BixbyUtils;->startSettingsMain(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    sget-object p1, Lcom/samsung/android/settings/directaction/ActionCommand;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 235
    :pswitch_a
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/bixby/actions/Action;->doChangeAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 261
    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/directaction/ActionCommand;->startSettingsMainIfNedded(Landroid/os/Bundle;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x5128ec50 -> :sswitch_b
        -0x4d6ada7d -> :sswitch_a
        -0x12e2b52 -> :sswitch_9
        0x18f56 -> :sswitch_8
        0x1bc62 -> :sswitch_7
        0x308163 -> :sswitch_6
        0x34264a -> :sswitch_5
        0x13d1c55c -> :sswitch_4
        0x32e5442a -> :sswitch_3
        0x38b478ea -> :sswitch_2
        0x4222ccd4 -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
