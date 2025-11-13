.class public Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionHandler;
.super Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final EXTRA_DIM_ACTION_TAG:Ljava/lang/String; = "accessibility_extra_dim"

.field public static final KEY_INTENSITY:Ljava/lang/String; = "intensity"

.field public static final KEY_SWITCH:Ljava/lang/String; = "switch"

.field private static final TAG:Ljava/lang/String; = "ExtraDimActionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setReduceBrightnessDB(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V
    .locals 2

    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v0, "switch"

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "intensity"

    invoke-static {v0, p2, v1}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setReduceBrightnessDB activated : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  intensity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtraDimActionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setReduceBrightColorsActivated(Z)Z

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setReduceBrightColorsStrength(I)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic checkValidity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->checkValidity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public getActionTag()Ljava/lang/String;
    .locals 0

    const-string p0, "accessibility_extra_dim"

    return-object p0
.end method

.method public getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
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

    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsActivated()Z

    move-result p1

    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getReduceBrightColorsStrength()I

    move-result p0

    new-instance p2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo p3, "switch"

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "intensity"

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-interface {p6, p2}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
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

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo p2, "switch"

    invoke-virtual {p3, p2, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p4, "intensity"

    invoke-virtual {p3, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    if-eqz p0, :cond_0

    const p3, 0x7f141f4e

    goto :goto_0

    :cond_0
    const p3, 0x7f141f4d

    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    const-string p0, ": "

    invoke-static {p1, p0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-interface {p6, p1}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic getPreviewImageFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getPreviewImageFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportReduceBrightness(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionHandler;->isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    move-result-object p2

    sget-object p4, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    if-ne p2, p4, :cond_0

    const-string p2, "ExtraDimActionHandler"

    const-string/jumbo p4, "onPerformAction called"

    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionHandler;->setReduceBrightnessDB(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    sget-object p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    sget-object p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    :goto_0
    return-void
.end method

.method public onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionHandler;->setReduceBrightnessDB(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    return-void
.end method

.method public onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;
    .locals 0

    const-string p0, "RoutineActionHandler"

    const-string/jumbo p1, "onRequestTemplateContents: this should not be called without overriding!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method
