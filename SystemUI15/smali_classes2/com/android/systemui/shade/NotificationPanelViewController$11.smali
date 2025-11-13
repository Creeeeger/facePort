.class public final Lcom/android/systemui/shade/NotificationPanelViewController$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCurrentBackProgress:F

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mUpperRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mBoundingBoxRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mBoundingBoxRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mUpperRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mBoundingBoxRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mBoundingBoxRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_1
    return-void
.end method
