.class public final Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;
.super Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final RESTORE_RESTRICTED_LIST:[Ljava/lang/String;

.field public static final SIZE_LIMIT_ALLOW_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v21, "/AOD/SubUiClockAttr"

    const-string v22, "/AOD/SubUiWidget"

    const-string v0, "/AOD/ClockType"

    const-string v1, "/AirCommand/RemoteSPen/AppDefinedRule"

    const-string v2, "/Accessibility/Default/NotificationReminderAppList"

    const-string v3, "/Routine/Item/RoutineItemList"

    const-string v4, "/HBD/TextShortcut"

    const-string v5, "/HBD/UseSuggestSticker"

    const-string v6, "/Settings/Advanced/VideoEnhancerApp"

    const-string v7, "/HBD/Emoji/SkinTone"

    const-string v8, "/Settings/Display/SwitchAppsToFrontScreen"

    const-string v9, "/Finder/Settings/ManageApps"

    const-string v10, "/DigitalWellbeing/CommonDb/FocusModeTargetApps"

    const-string v11, "/Accessibility/Default/AccessibilityButtonTargets"

    const-string v12, "/Accessibility/Default/AccessibilityDirectAccessTargetService"

    const-string v13, "/Accessibility/Default/AccessibilityShortcutTargetService"

    const-string v14, "/Settings/Advanced/LabsRotateAllApps"

    const-string v15, "/Settings/Advanced/LabsFlexModePanel"

    const-string v16, "/Settings/Advanced/LabsAppSplitView"

    const-string v17, "/Settings/Advanced/LabsAspectRatioApps"

    const-string v18, "/Settings/Advanced/LabsRotateApps"

    const-string v19, "/Accessibility/Default/ScreenFlashNotificationColorApps"

    const-string v20, "/HBD/SuggestTextCorrections/ManageApps"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;->SIZE_LIMIT_ALLOW_LIST:[Ljava/lang/String;

    const-string v5, "/Settings/Advanced/DoubleTapToWake"

    const-string v6, "/Settings/Display/BlockAccidentalTouches"

    const-string v1, "/Settings/Advanced/LiftToWake"

    const-string v2, "/Settings/Display/ScreenResolution"

    const-string v3, "/Settings/Display/AutoBrightness"

    const-string v4, "/Settings/Advanced/FingerSensorGestures"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;->RESTORE_RESTRICTED_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;->initializePolicy()V

    return-void
.end method


# virtual methods
.method public final getPolicyId()Ljava/lang/String;
    .locals 0

    const-string p0, "DefaultPolicy"

    return-object p0
.end method

.method public final getPolicyVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0.0"

    return-object p0
.end method

.method public final initializePolicy()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mBackupSizeAllowedItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mRestoreRestrictedItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mDeferredRestorationItems:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;->SIZE_LIMIT_ALLOW_LIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;->RESTORE_RESTRICTED_LIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final isValidProvider()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mBackupSizeAllowedItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mRestoreRestrictedItems:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
