.class public Lcom/samsung/android/settings/actions/templateresolver/NoTemplateResolver;
.super Ljava/lang/Object;
.source "NoTemplateResolver.java"

# interfaces
.implements Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setValueInternal(Lcom/android/settings/core/BasePreferenceController;Ljava/lang/String;)V
    .locals 2

    .line 42
    new-instance p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->getControlType()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult;->getResultCode()Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    if-eq p0, p1, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "unknown"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public resolve(Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/android/settings/core/BasePreferenceController;Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$Callback;)V
    .locals 2

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 p0, 0x62

    if-ne v0, p0, :cond_0

    .line 24
    invoke-interface {p2}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "invalid_action"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/action/JSONStringAction;->getNewValue()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/actions/templateresolver/NoTemplateResolver;->setValueInternal(Lcom/android/settings/core/BasePreferenceController;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p0, 0x2

    :goto_1
    if-eqz p3, :cond_2

    .line 37
    invoke-interface {p3, p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$Callback;->onResolved(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
