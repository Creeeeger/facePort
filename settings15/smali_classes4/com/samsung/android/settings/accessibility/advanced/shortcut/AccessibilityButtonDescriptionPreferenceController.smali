.class public Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mDescriptionPreference:Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDescriptionPreference(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->mDescriptionPreference:Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrefreshDescriptionPreference(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->refreshDescriptionPreference(Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController$1;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private refreshDescriptionPreference(Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const p2, 0x7f080e0c

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f14006d

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->imageContentDescription:Ljava/lang/String;

    invoke-static {p2, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iput-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->imageContentDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_0

    :cond_0
    const p2, 0x7f080e0d

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f140062

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->imageContentDescription:Ljava/lang/String;

    invoke-static {p2, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iput-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->imageContentDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_0

    :cond_1
    const p0, 0x7f080e0f

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_0

    :cond_2
    const p0, 0x7f080e0e

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

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

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_button_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->mDescriptionPreference:Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonGestureUtil;->getMode(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonDescriptionPreferenceController;->refreshDescriptionPreference(Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
