.class Lcom/android/settings/accessibility/TextReadingPreferenceFragment$1;
.super Lcom/android/settings/accessibility/PreviewSizeSeekBarController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/TextReadingPreferenceFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/PreviewSizeData;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/TextReadingPreferenceFragment;

    iput-object p5, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/PreviewSizeData;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTileComponentName()Landroid/content/ComponentName;
    .locals 0

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->FONT_SIZE_COMPONENT_NAME:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getTileTooltipContent()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$1;->val$context:Landroid/content/Context;

    const v0, 0x7f1400d8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
