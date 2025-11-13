.class public final Lcom/android/wm/shell/controlpanel/action/TouchPadAction;
.super Lcom/android/wm/shell/controlpanel/action/MenuActionType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/controlpanel/action/MenuActionType;-><init>()V

    return-void
.end method

.method public static createAction()Lcom/android/wm/shell/controlpanel/action/TouchPadAction;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/controlpanel/action/TouchPadAction;

    invoke-direct {v0}, Lcom/android/wm/shell/controlpanel/action/TouchPadAction;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final doControlAction(Ljava/lang/String;Lcom/android/wm/shell/controlpanel/GridUIManager;)V
    .locals 6

    sget-object p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result p1

    check-cast p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result p0

    if-eq p0, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    const-string p1, "MEDIA_PANEL"

    const-wide/16 v0, 0x64

    const-string v2, "MEDIA_TOUCH_PAD_ENABLED"

    const-string v3, "TOUCH_PAD_ENABLED"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_7

    iget-boolean p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    if-eqz p0, :cond_1

    iput-boolean v5, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    iget-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    iget-object p1, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {p1, p2, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_1
    iget-boolean p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    if-eqz p0, :cond_6

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    iput-boolean v4, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    invoke-virtual {p2, v2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iput-boolean v5, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    invoke-virtual {p2, v2, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    iput-boolean v4, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    invoke-virtual {p2, v3, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iput-boolean v5, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    invoke-virtual {p2, v3, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    :goto_0
    iget-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/widget/GridLayout;->removeAllViews()V

    iget-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    iget-object v0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->createEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz p0, :cond_a

    invoke-virtual {p2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->updateStatusPreferences(Z)V

    goto :goto_3

    :cond_6
    iput-boolean v5, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    invoke-virtual {p2, v3, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    new-instance p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    iget-boolean p1, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;-><init>(Landroid/content/Context;Z)V

    iput-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    if-eqz p0, :cond_a

    invoke-static {p2}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isWheelActive(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-boolean p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    if-nez p0, :cond_a

    new-instance p0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    iget-boolean p1, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;-><init>(Landroid/content/Context;Z)V

    iput-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    goto :goto_3

    :cond_7
    iput-boolean v4, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p2, v2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    invoke-virtual {p2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad(Z)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2, v3, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    invoke-virtual {p2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad(Z)V

    :goto_2
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz p0, :cond_9

    invoke-virtual {p2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->updateStatusPreferences(Z)V

    :cond_9
    iget-boolean p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    if-eqz p0, :cond_a

    iget-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    iget-object p1, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {p1, p2, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_3
    return-void
.end method
