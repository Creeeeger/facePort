.class Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy$DummyHandler;
.super Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "DummyAction"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "AccessibilityRoutineActionProxy.getHandler()returns DummyHandler for tag : "

    const-string v0, "DummyAction"

    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    const-string p0, "DummyAction"

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

    const-string p0, "DummyAction"

    const-string p1, "getCurrentParameterValues called."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string p0, "DummyAction"

    const-string p1, "getParameterLabel called."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic getPreviewImageFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getPreviewImageFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 0

    const-string p0, "DummyAction"

    const-string p1, "isSupported called."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

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

    const-string p0, "DummyAction"

    const-string/jumbo p1, "onPerformAction called."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V
    .locals 0

    const-string p0, "DummyAction"

    const-string/jumbo p1, "onPerformReverseAction called."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;
    .locals 0

    const-string p0, "DummyAction"

    const-string/jumbo p1, "onRequestErrorDialogContents called."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    const/4 p1, 0x0

    const-string/jumbo p2, "wrong"

    invoke-direct {p0, p1, p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-object p0
.end method

.method public onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;
    .locals 0

    const-string p0, "DummyAction"

    const-string/jumbo p1, "onRequestTemplateContents called."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method
