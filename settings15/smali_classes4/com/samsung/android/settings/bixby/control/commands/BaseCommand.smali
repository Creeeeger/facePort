.class public Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/bixby/control/Control;


# instance fields
.field public final mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

.field public mCommand:Lcom/samsung/android/sdk/command/Command;

.field public final mCommandId:Ljava/lang/String;

.field public mCurrentActiveMode:I

.field public mCurrentActiveValue:Ljava/lang/String;

.field public mCurrentValue:I

.field public mIsChecked:Z

.field public mJSONValue:Ljava/lang/String;

.field public mMaxValue:F

.field public mMediaFlag:I

.field public mMediaInfo:Ljava/lang/String;

.field public mMinValue:F

.field public mStatus:I

.field public mStatusCode:Ljava/lang/String;

.field public mStepValue:F

.field public mTemplateType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mTemplateType:I

    iput v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStatus:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStatusCode:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mIsChecked:Z

    iput v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentValue:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMaxValue:F

    iput v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMinValue:F

    iput v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStepValue:F

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentActiveValue:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentActiveMode:I

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMediaInfo:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMediaFlag:I

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mJSONValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCommandId:Ljava/lang/String;

    return-void
.end method

.method public static buildResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const-string/jumbo v0, "result"

    invoke-static {v0, p1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "response_code"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "response_message"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "command"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/samsung/android/sdk/command/Command;

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/command/Command;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_1

    const-string/jumbo p0, "status"

    iget v0, v5, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "status_code"

    iget-object v0, v5, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v5, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final buildResult(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string/jumbo v0, "response_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "response_message"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getResult() command ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCommandId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] response code : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", response message : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "BaseCommand"

    invoke-static {v2, v1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x2

    const-string v2, "fail"

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "already_set"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "success"

    :cond_2
    :goto_0
    invoke-static {p1, v2}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->buildResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0, p1, p3, p2}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->callProvider(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p3, p2}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->callProvider(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "fail"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/utils/BixbyUtils;->buildActionResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final callProvider(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "command://"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    iget-object v2, v2, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCommandId:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p3, p0, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p0, "fail to call controller, authority : "

    const-string p2, "BaseCommand"

    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public final execute(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "com.android.settings.command"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/command/action/DefaultAction;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->isNewDex()Z

    move-result v3

    iput-boolean v3, v2, Lcom/samsung/android/sdk/command/action/CommandParam;->mDexMode:Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "action"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v0, "method_LOAD"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->parsingCommand(Landroid/os/Bundle;)V

    iget-boolean v0, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mIsCheckSupport:Z

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStatusCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStatusCode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStatus:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const-string p0, "false"

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "not_supported_device"

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "true"

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/settings/bixby/utils/BixbyUtils;->buildActionResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->executeInternal(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public executeInternal(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "com.android.settings.command"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "method_ACTION"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->makeExtra(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->buildResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getDataBundle(ZLcom/samsung/android/sdk/command/action/CommandAction;)Landroid/os/Bundle;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->isNewDex()Z

    move-result v0

    iput-boolean v0, p1, Lcom/samsung/android/sdk/command/action/CommandParam;->mDexMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->isNewDex()Z

    move-result p0

    iget-object p1, p2, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    iput-boolean p0, p1, Lcom/samsung/android/sdk/command/action/CommandParam;->mDexMode:Z

    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public makeExtra(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 3

    const-string v0, "method_LOAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "BaseCommand"

    const-string p1, "it doesn\'t need to make extra"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mTemplateType:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    iget-object p1, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/settings/bixby/converter/ValueConverter;->convertParameterToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/command/action/JSONStringAction;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    iget-object p0, p1, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->isNewDex()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/sdk/command/action/CommandParam;->mDexMode:Z

    iget-object p0, p1, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->isNewDex()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/sdk/command/action/CommandParam;->mDexMode:Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/action/JSONStringAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/action/JSONStringAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string p1, "action"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    return-object v1
.end method

.method public final parsingCommand(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/command/Command;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/command/Command;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCommand:Lcom/samsung/android/sdk/command/Command;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    const-string v0, "BaseCommand"

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getTemplateType()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mTemplateType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    goto/16 :goto_1

    :cond_2
    check-cast p1, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;

    iget v1, p1, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mCurrentActiveMode:I

    iput v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentActiveMode:I

    iget-object v1, p1, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mMediaInfo:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMediaInfo:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mModeFlags:I

    iput p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMediaFlag:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "parsingMediaControlCommand() current mode : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentActiveMode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", media info : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMediaInfo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", media flag : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMediaFlag:I

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    check-cast p1, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    iget-object p1, p1, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;->mJSONString:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mJSONValue:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "parsingJSONCommand() json : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mJSONValue:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    check-cast p1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;

    iget-object p1, p1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mCurrentActiveValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentActiveValue:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "parsingSingleChoiceCommand() current active : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentActiveValue:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    check-cast p1, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    iget v1, p1, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    iput v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMaxValue:F

    iget v1, p1, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    iput v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMinValue:F

    iget v1, p1, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    iput v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStepValue:F

    iget p1, p1, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentValue:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "parsingSliderCommand() max : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMaxValue:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", min : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMinValue:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", step : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStepValue:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", current : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentValue:I

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    check-cast p1, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    iget-boolean p1, p1, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->mIsChecked:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mIsChecked:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "parsingToggleCommand() isChecked : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mIsChecked:Z

    invoke-static {p1, v1, v0}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCommand:Lcom/samsung/android/sdk/command/Command;

    iget v1, p1, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    iput v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStatus:I

    iget-object p1, p1, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStatusCode:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "parsingCommand() template type : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mTemplateType:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStatus:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status code : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStatusCode:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
