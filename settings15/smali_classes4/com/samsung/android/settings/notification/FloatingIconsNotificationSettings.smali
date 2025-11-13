.class public Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/notification/FloatingIconDependentFieldListener;


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mControllerListeners:Ljava/util/List;

.field public mFloatingIconImage:Lcom/airbnb/lottie/LottieAnimationView;

.field public mFloatingPreviewContainer:Landroid/view/ViewGroup;

.field public mHelptext:Landroid/view/View;

.field public mainView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mControllerListeners:Ljava/util/List;

    return-void
.end method

.method public static setViewShown(Landroid/view/View;ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_0

    const/high16 v1, 0x10a0000

    goto :goto_0

    :cond_0
    const v1, 0x10a0001

    :goto_0
    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_1
    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final createFloatingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const v0, 0x7f0d08b6

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x7f0d08b5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0678

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mFloatingPreviewContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0a0679

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060738

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    const v5, 0x7f0d09fd

    invoke-virtual {p1, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mHelptext:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mFloatingPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mFloatingPreviewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mHelptext:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mFloatingPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const p1, 0x7f0a067a

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mainView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a0677

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    const v0, 0x7f0a0676

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mFloatingIconImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->updateState()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mHelptext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ab1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ab2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070d9d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mHelptext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mFloatingPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060724

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object p2
.end method

.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/notification/BubbleFloatingIconStylePreferenceController;

    const-string v2, "floating_icon_bubble"

    invoke-direct {v1, p1, v2, p0}, Lcom/samsung/android/settings/notification/BubbleFloatingIconStylePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/notification/FloatingIconDependentFieldListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/notification/PopupFloatingIconStylePreferenceController;

    const-string v2, "floating_icon_popup"

    invoke-direct {v1, p1, v2, p0}, Lcom/samsung/android/settings/notification/PopupFloatingIconStylePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/notification/FloatingIconDependentFieldListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/notification/NoFloatingIconStylePreferenceController;

    const-string v2, "floating_icon_off"

    invoke-direct {v1, p1, v2, p0}, Lcom/samsung/android/settings/notification/NoFloatingIconStylePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/notification/FloatingIconDependentFieldListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;

    const-string v2, "included_apps"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v2, v1, Lcom/samsung/android/settings/notification/FloatingIconDependentControllerFieldListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mControllerListeners:Ljava/util/List;

    check-cast v1, Lcom/samsung/android/settings/notification/FloatingIconDependentControllerFieldListener;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FloatingIconNotiSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a3

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701a0

    return p0
.end method

.method public final notifyChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mControllerListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/FloatingIconDependentControllerFieldListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/settings/notification/FloatingIconDependentControllerFieldListener;->updateValues(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->updateState()V

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a091b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->createFloatingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mainView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->createFloatingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final setAnimationResource(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mFloatingIconImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mFloatingIconImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    return-void
.end method

.method public final updateState()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "notification_bubbles"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    :cond_0
    if-eqz v0, :cond_5

    const v1, 0x7f0a1041

    if-eq v0, v3, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Bubbles_Smart_Popup_Help_VI_Dark.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Bubbles_Smart_Popup_Help_VI_Light.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->setAnimationResource(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mHelptext:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141b23

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mFloatingPreviewContainer:Landroid/view/ViewGroup;

    invoke-static {p0, v3, v3}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->setViewShown(Landroid/view/View;ZZ)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Bubbles_dark.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "Bubbles_light.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->setAnimationResource(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mHelptext:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141b21

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mFloatingPreviewContainer:Landroid/view/ViewGroup;

    invoke-static {p0, v3, v3}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->setViewShown(Landroid/view/View;ZZ)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mFloatingPreviewContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->setViewShown(Landroid/view/View;ZZ)V

    :goto_2
    return-void
.end method
