.class public abstract Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;
.super Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic checkValidity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->checkValidity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public final getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            "J",
            "Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;",
            ")V"
        }
    .end annotation

    new-instance p2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;->isActionEnabled(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo p3, "toggle_value"

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {p6, p2}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getCurrentParameterValues - calling setResponse complete"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getExclusiveTaskName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            "J",
            "Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;",
            ")V"
        }
    .end annotation

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo p4, "toggle_value"

    invoke-virtual {p3, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f141f4e

    goto :goto_0

    :cond_0
    const p2, 0x7f141f4d

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p1}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getParameterLabel - calling setResponse complete"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic getPreviewImageFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getPreviewImageFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public abstract getTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isActionEnabled(Landroid/content/Context;)Z
.end method

.method public bridge synthetic isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 0

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    return-object p0
.end method

.method public bridge synthetic onMigrate(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onMigrate(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public onPerformAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V
    .locals 0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo p4, "toggle_value"

    invoke-virtual {p3, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;->getExclusiveTaskName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;->isExclusiveTaskEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(I)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;->setActionEnable(Landroid/content/Context;Z)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    sget-object p2, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onPerformAction - calling actionFinished complete"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V
    .locals 0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo p4, "toggle_value"

    invoke-virtual {p3, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;->setActionEnable(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onPerformReverseAction - calling setActionEnable complete"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;->getLogTag()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "onRequestTemplateContents - returning new UiTemplate complete"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineSimpleOnOffActionHandler;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7f141f4e

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "label_on"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7f141f4d

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "label_off"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "default_selection"

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public abstract setActionEnable(Landroid/content/Context;Z)V
.end method
