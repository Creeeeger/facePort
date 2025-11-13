.class public final Lcom/android/systemui/statusbar/NotificationShelfManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final ALPHA_DURATION:J

.field public final DISABLED_ALPHA:F

.field public final OPAQUE_ALPHA:F

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1;

.field public final context:Landroid/content/Context;

.field public mClearAllButton:Lcom/android/systemui/animation/view/LaunchableTextView;

.field public mIconContainerPaddingEnd:I

.field public mNotificationIconContainer:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public mSettingButton:Lcom/android/systemui/animation/view/LaunchableTextView;

.field public mShelfPaddingHorizontal:I

.field public mShelfTextArea:Landroid/widget/LinearLayout;

.field public mShelfTextAreaHeight:I

.field public mShelfTextAreaPaddingBottom:I

.field public mShelfTextAreaPaddingTop:I

.field public final mSineInOut33:Landroid/view/animation/Interpolator;

.field public notificationPanelController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public shelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field public statusBarState:I

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->OPAQUE_ALPHA:F

    const p3, 0x3e99999a    # 0.3f

    iput p3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->DISABLED_ALPHA:F

    new-instance p3, Landroid/view/animation/PathInterpolator;

    const p4, 0x3f2b851f    # 0.67f

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, p4, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mSineInOut33:Landroid/view/animation/Interpolator;

    const-wide/16 p2, 0x12c

    iput-wide p2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->ALPHA_DURATION:J

    const/4 p2, 0x2

    new-array p3, p2, [Landroid/net/Uri;

    const-string p4, "emergency_mode"

    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    const/4 v0, 0x0

    aput-object p4, p3, v0

    const-string/jumbo p4, "show_button_background"

    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    const/4 v0, 0x1

    aput-object p4, p3, v0

    new-instance p4, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelfManager;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->configurationListener:Lcom/android/systemui/statusbar/NotificationShelfManager$configurationListener$1;

    new-instance p4, Lcom/android/systemui/statusbar/NotificationShelfManager$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/NotificationShelfManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelfManager;)V

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/Uri;

    invoke-virtual {p1, p4, p0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public static final access$updateRunnable(Lcom/android/systemui/statusbar/NotificationShelfManager;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/NotificationShelfManager$updateRunnable$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/NotificationShelfManager$updateRunnable$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelfManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/statusbar/NotificationShelfManager$updateRunnable$2;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelfManager$updateRunnable$2;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getShelfHeight()I
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextAreaHeight:I

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07103a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2

    :cond_3
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071038    # 1.7953E38f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_2
    iput v3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextAreaPaddingTop:I

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3

    :cond_7
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_3
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextAreaPaddingBottom:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfPaddingHorizontal:I

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextAreaHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextAreaPaddingTop:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextAreaPaddingBottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final startButtonAnimation(Landroid/view/View;ZZ)V
    .locals 4

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->OPAQUE_ALPHA:F

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0296

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a07f3

    if-ne v1, v2, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->DISABLED_ALPHA:F

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v0

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz p2, :cond_4

    move v2, v3

    :cond_4
    if-ne v1, v2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p3, :cond_6

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->ALPHA_DURATION:J

    goto :goto_1

    :cond_6
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1$1;

    invoke-direct {p3, p2, p1}, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1$1;-><init>(ZLandroid/view/View;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1$2;

    invoke-direct {p3, p2, p1}, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1$2;-><init>(ZLandroid/view/View;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final updateAccessibility()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mSettingButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->startButtonAnimation(Landroid/view/View;ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    const v1, 0x106034e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mSettingButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    const v2, 0x7f081249

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    const v1, 0x7f06050f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mSettingButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    const v2, 0x7f081248

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final updateClearButton()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->notificationPanelController:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->hasNotifications(IZ)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget-object v3, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterPluginConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/noticenter/NotiCenterPlugin;->noclearEnabled:Z

    if-eqz v3, :cond_1

    sget-boolean v1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->clearableNotifications:Z

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationShelfManager;->startButtonAnimation(Landroid/view/View;ZZ)V

    :cond_2
    return-void
.end method

.method public final updateResources()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateShelfLayout()V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0700fb

    goto :goto_0

    :cond_0
    const v0, 0x7f0700fa

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mSettingButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v1, v0, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    invoke-static {p0, v0, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    return-void
.end method

.method public final updateShelfLayout()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->getShelfHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfPaddingHorizontal:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfPaddingHorizontal:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextAreaPaddingTop:I

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextAreaPaddingBottom:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mSettingButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextAreaHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextAreaHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotificationIconContainer:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07102e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f07103b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p0, 0x11

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

.method public final updateShelfTextArea()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotificationIconContainer:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-nez p0, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    return-void
.end method
