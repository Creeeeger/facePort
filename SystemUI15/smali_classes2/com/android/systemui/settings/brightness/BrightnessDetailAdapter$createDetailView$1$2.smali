.class public final Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->factory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    const v2, 0x7f0a0361

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {v1, v3}, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->create(Lcom/android/systemui/settings/brightness/ToggleSlider;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object v1

    iget-object v3, v1, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->$context:Landroid/content/Context;

    const-string v3, "no_config_brightness"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$10;

    invoke-direct {v1, p1}, Lcom/android/systemui/settings/brightness/BrightnessController$10;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessObserver;

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->$context:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2$onViewAttachedToWindow$4;

    iget-object v4, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    invoke-direct {v3, v4}, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2$onViewAttachedToWindow$4;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;)V

    new-instance v4, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2$onViewAttachedToWindow$5;

    iget-object v5, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    invoke-direct {v4, v5}, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2$onViewAttachedToWindow$5;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;)V

    new-instance v5, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2$onViewAttachedToWindow$6;

    iget-object v6, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    invoke-direct {v5, v6}, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2$onViewAttachedToWindow$6;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/settings/brightness/BrightnessObserver;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iget-object v2, v1, Lcom/android/systemui/settings/brightness/BrightnessObserver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v4, Lcom/android/systemui/settings/brightness/SecBrightnessController;->Companion:Lcom/android/systemui/settings/brightness/SecBrightnessController$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/settings/brightness/SecBrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v4, Lcom/android/systemui/settings/brightness/SecBrightnessController;->SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3
    iput-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->brightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessObserver;

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->autoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez p1, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->autoBrightnessContainer:Lcom/android/systemui/qs/SecQSSwitchPreference;

    if-eqz v1, :cond_6

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->autoBrightnessDelegate:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$autoBrightnessDelegate$1;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->quickBarBrightnessExtraBrightness:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;

    if-eqz p0, :cond_9

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_BAR_BRIGHTNESS_EXTRA_BRIGHTNESS:Z

    if-eqz p1, :cond_7

    move-object v0, p0

    :cond_7
    if-eqz v0, :cond_9

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessContainer:Lcom/android/systemui/qs/SecQSSwitchPreference;

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$onViewAttachedToWindow$1;

    invoke-direct {p1, v0}, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$onViewAttachedToWindow$1;-><init>(Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->brightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$3;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iput-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->brightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessObserver;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessObserver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->brightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessObserver;

    return-void
.end method
