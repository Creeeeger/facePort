.class public Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final DEFAULT_OPACITY:F = 0.55f

.field private static final DEFAULT_SIZE:I

.field private static final SMALL_SIZE:I


# instance fields
.field final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field mIllustrationPreference:Lcom/android/settingslib/widget/IllustrationPreference;

.field private mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method public static synthetic $r8$lambda$IYGZd-YReHWEGQ_4MWxcn9f4Z3k(Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->lambda$new$0(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePreviewPreference(Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->updatePreviewPreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController$1;-><init>(Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    new-instance p1, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->updatePreviewPreference()V

    return-void
.end method

.method private updatePreviewPreference()V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "accessibility_floating_menu_size"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "accessibility_floating_menu_opacity"

    const v4, 0x3f0ccccd    # 0.55f

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-nez v0, :cond_0

    const v0, 0x7f08018f

    goto :goto_0

    :cond_0
    const v0, 0x7f08018e

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mIllustrationPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    iget-object v2, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v2, :cond_4

    iput v1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    iput-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mIllustrationPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f080193

    goto :goto_1

    :cond_2
    const v2, 0x7f080190

    :goto_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget-object v2, v0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p0, v2, :cond_4

    iput v1, v0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    iput-object p0, v0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mIllustrationPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f080196

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget-object v2, v0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p0, v2, :cond_4

    iput v1, v0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    iput-object p0, v0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/IllustrationPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mIllustrationPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->updatePreviewPreference()V

    return-void
.end method

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
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_button_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_floating_menu_size"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_floating_menu_opacity"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
