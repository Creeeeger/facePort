.class public abstract Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INFO_SET:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v0, Lcom/samsung/android/settings/accessibility/exclusive/info/MuteAllSoundTaskInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/accessibility/exclusive/info/TalkBackSETaskInfo;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/accessibility/exclusive/info/TalkBackTaskInfo;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/accessibility/exclusive/info/DirectCallTaskInfo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/samsung/android/settings/accessibility/exclusive/info/EasyMuteTaskInfo;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/samsung/android/settings/accessibility/exclusive/info/ColorAdjustmentTaskInfo;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/samsung/android/settings/accessibility/exclusive/info/ClickAfterPointerStopsTaskInfo;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/samsung/android/settings/accessibility/exclusive/info/ActionAfterPointerStopsTaskInfo;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lcom/samsung/android/settings/accessibility/exclusive/info/ColorFilterTaskInfo;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lcom/samsung/android/settings/accessibility/exclusive/info/MagnificationGestureTaskInfo;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, Lcom/samsung/android/settings/accessibility/exclusive/info/MagnificationShortcutTaskInfo;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lcom/samsung/android/settings/accessibility/exclusive/info/RemoveAnimationsTaskInfo;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v12, Lcom/samsung/android/settings/accessibility/exclusive/info/UniversalSwitchTaskInfo;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v13, Lcom/samsung/android/settings/accessibility/exclusive/info/AssistantMenuTaskInfo;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v14, Lcom/samsung/android/settings/accessibility/exclusive/info/InteractionControlTaskInfo;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v15, Lcom/samsung/android/settings/accessibility/exclusive/info/EdgeFeedTaskInfo;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    new-instance v16, Lcom/samsung/android/settings/accessibility/exclusive/info/TapDurationTaskInfo;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    new-instance v17, Lcom/samsung/android/settings/accessibility/exclusive/info/IgnoreRepeatedTouchesTaskInfo;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    new-instance v18, Lcom/samsung/android/settings/accessibility/exclusive/info/BlueLightFilterTaskInfo;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    new-instance v19, Lcom/samsung/android/settings/accessibility/exclusive/info/StickyKeysTaskInfo;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    new-instance v20, Lcom/samsung/android/settings/accessibility/exclusive/info/SlowKeysTaskInfo;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    new-instance v21, Lcom/samsung/android/settings/accessibility/exclusive/info/BounceKeysTaskInfo;

    invoke-direct/range {v21 .. v21}, Ljava/lang/Object;-><init>()V

    new-instance v22, Lcom/samsung/android/settings/accessibility/exclusive/info/OneHandedModeTaskInfo;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Object;-><init>()V

    new-instance v23, Lcom/samsung/android/settings/accessibility/exclusive/info/SmartAlertTaskInfo;

    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    new-instance v24, Lcom/samsung/android/settings/accessibility/exclusive/info/PalmMotionTaskInfo;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    new-instance v25, Lcom/samsung/android/settings/accessibility/exclusive/info/CornerActionTaskInfo;

    invoke-direct/range {v25 .. v25}, Ljava/lang/Object;-><init>()V

    new-instance v26, Lcom/samsung/android/settings/accessibility/exclusive/info/PinWindowTaskInfo;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Object;-><init>()V

    new-instance v27, Lcom/samsung/android/settings/accessibility/exclusive/info/QuickLaunchCameraTaskInfo;

    invoke-direct/range {v27 .. v27}, Ljava/lang/Object;-><init>()V

    new-instance v28, Lcom/samsung/android/settings/accessibility/exclusive/info/EasyScreenTurnOnTaskInfo;

    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    new-instance v29, Lcom/samsung/android/settings/accessibility/exclusive/info/DirectAccessTaskInfo;

    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    filled-new-array/range {v0 .. v29}, [Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;->INFO_SET:Ljava/util/Set;

    return-void
.end method

.method public static getExclusiveTaskInfoList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityManager;->semGetExclusiveTaskList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;->INFO_SET:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static isExclusiveTaskEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;->getExclusiveTaskInfoList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
