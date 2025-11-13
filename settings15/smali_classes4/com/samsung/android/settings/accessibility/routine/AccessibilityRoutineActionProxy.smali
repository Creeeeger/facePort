.class public final Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;


# static fields
.field public static final HANDLERS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v6, "com.samsung.android.settings.accessibility.vision.routine.ReduceBrightnessRoutineActionHandler"

    const-string v7, "com.samsung.android.settings.accessibility.vision.routine.ColorInversionRoutineActionHandler"

    const-string v0, "com.samsung.android.settings.accessibility.hearing.routine.MuteAllSoundsRoutineActionHandler"

    const-string v1, "com.samsung.android.settings.accessibility.hearing.routine.LiveCaptionRoutineActionHandler"

    const-string v2, "com.samsung.android.settings.accessibility.hearing.routine.MonoAudioRoutineActionHandler"

    const-string v3, "com.samsung.android.settings.accessibility.hearing.routine.SoundBalanceRoutineActionHandler"

    const-string v4, "com.samsung.android.settings.accessibility.advanced.routine.CameraFlashRoutineActionHandler"

    const-string v5, "com.samsung.android.settings.accessibility.advanced.routine.ScreenFlashRoutineActionHandler"

    const-string v8, "com.samsung.android.settings.accessibility.vision.routine.ColorCorrectionRoutineActionHandler"

    const-string v9, "com.samsung.android.settings.accessibility.vision.routine.ColorFilterRoutineActionHandler"

    invoke-static/range {v0 .. v9}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy;->HANDLERS:Ljava/util/Set;

    return-void
.end method

.method public static getHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy;->HANDLERS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy$DummyHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy$DummyHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    return-object p0
.end method


# virtual methods
.method public final getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;)V
    .locals 7

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy;->getHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public final getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;)V
    .locals 7

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy;->getHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public final getSupportTagList()Ljava/util/List;
    .locals 2

    sget-object p0, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy;->HANDLERS:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy;->getHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    move-result-object p0

    return-object p0
.end method

.method public final onPerformAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V
    .locals 7

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy;->getHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onPerformAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V

    return-void
.end method

.method public final onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;)V
    .locals 7

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy;->getHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V

    return-void
.end method

.method public final onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;
    .locals 6

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy;->getHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object p0

    return-object p0
.end method

.method public final onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy;->getHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    move-result-object p0

    return-object p0
.end method
