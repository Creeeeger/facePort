.class public Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;
.super Ljava/lang/Object;
.source "GlobalActionsContentItemView.java"


# instance fields
.field private final blacklist BUGREPORT_STATE_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

.field private final blacklist KEY_SETTINGS_COLOR_DARK_THEME:Ljava/lang/String;

.field private final blacklist KEY_SETTINGS_COLOR_WHITE_THEME:Ljava/lang/String;

.field private final blacklist KEY_SETTINGS_TEXT_SIZE:I

.field private final blacklist LABEL_TEXT_COLOR_DEFAULT:Ljava/lang/String;

.field private final blacklist LABEL_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

.field private final blacklist LABEL_TEXT_SIZE:I

.field private final blacklist STATE_TEXT_COLOR_DEFAULT:Ljava/lang/String;

.field private final blacklist STATE_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

.field private final blacklist STATE_TEXT_SIZE:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mParent:Landroid/view/ViewGroup;

.field private final blacklist mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field private final blacklist mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field private final blacklist mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

.field private final blacklist mVoiceAssistantMode:Z

.field private final blacklist mWhiteTheme:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$2ESgHpvi1JCVqOcXdrBmM3QJ3CA(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->lambda$inflateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3kxfKIeILDJNKOJ0_d0pr7j6GrQ(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->lambda$inflateView$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$964mRfdcQILHvBBzr9pm9bCY2UY(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->lambda$setViewAttrs$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hhCA8q-2caOVu7SwAADJGS4C0Tw(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->lambda$inflateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x5Y0IauCRmecgHcm2folda72zp4(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->lambda$setViewAttrs$4(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;ZZLcom/samsung/android/globalactions/presentation/view/ViewStateController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->LABEL_TEXT_SIZE:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->STATE_TEXT_SIZE:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->KEY_SETTINGS_TEXT_SIZE:I

    const-string v0, "#fafaff"

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->LABEL_TEXT_COLOR_DEFAULT:Ljava/lang/String;

    const-string v1, "#252528"

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->LABEL_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

    const-string v1, "#99999E"

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->STATE_TEXT_COLOR_DEFAULT:Ljava/lang/String;

    const-string v1, "#848487"

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->STATE_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

    const-string v1, "#929295"

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->BUGREPORT_STATE_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

    const-string v1, "#010102"

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->KEY_SETTINGS_COLOR_WHITE_THEME:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->KEY_SETTINGS_COLOR_DARK_THEME:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mParent:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iput-boolean p5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mVoiceAssistantMode:Z

    iput-boolean p6, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    iput-object p7, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    return-void
.end method

.method private blacklist checkSingleLine(Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mParent:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->isVerticalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$inflateView$0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onPress()V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$inflateView$1(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onLongPress()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$inflateView$2(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onPress()V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$setViewAttrs$3(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onPress()V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$setViewAttrs$4(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onLongPress()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist setLimitTextSizeToLarge(Landroid/widget/TextView;F)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3f8ccccd    # 1.1f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const v1, 0x3f8ccccd    # 1.1f

    :cond_1
    const/4 v2, 0x1

    mul-float v3, p2, v1

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public blacklist createView(Z)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->inflateView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->setViewAttrs(Landroid/view/View;Z)V

    return-object v0
.end method

.method public blacklist inflateView()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->TOP_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_TOP_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_BTN_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BUGREPORT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-boolean v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_BG_RAISED_BTN_LIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SIDEKEY_SETTINGS_RIPPLE_LIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_BG_RAISED_BTN_DARK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SIDEKEY_SETTINGS_RIPPLE_DARK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->KEY_SETTINGS_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SIDEKEY_SETTINGS_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_BG_RAISED_BTN_LIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SIDEKEY_SETTINGS_RIPPLE_LIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_BG_RAISED_BTN_DARK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SIDEKEY_SETTINGS_RIPPLE_DARK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_FORCE_RESTART_MSG_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FORCE_RESTART_TEXT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_ITEM_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public blacklist setViewAttrs(Landroid/view/View;Z)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_LABEL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_STATE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v3, "knox_custom"

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getIcon()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v4, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-boolean v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mVoiceAssistantMode:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v7, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ICON_RIPPLE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v5, v7}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v7, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ICON_BG_FOCUSED:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v5, v7}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    const-string v4, "#010102"

    const-string v5, "#fafaff"

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->checkSingleLine(Landroid/widget/TextView;)V

    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v6}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v6

    if-ne v6, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v3

    sget-object v6, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_BTN_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-eq v3, v6, :cond_5

    iget-boolean v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v3, :cond_4

    const-string v3, "#252528"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_3

    :cond_4
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41700000    # 15.0f

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->setLimitTextSizeToLarge(Landroid/widget/TextView;F)V

    goto :goto_5

    :cond_5
    iget-boolean v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v3, :cond_6

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_4

    :cond_6
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    :goto_5
    const/high16 v3, 0x41500000    # 13.0f

    const-string v6, "#848487"

    const-string v7, "#99999E"

    if-eqz v1, :cond_e

    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v8}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getStateLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v8}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->KEY_SETTINGS_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-ne v8, v9, :cond_a

    iget-boolean v8, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v8, :cond_9

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_6

    :cond_9
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_6
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41880000    # 17.0f

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->setLimitTextSizeToLarge(Landroid/widget/TextView;F)V

    goto :goto_9

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_BTN_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-eq v4, v5, :cond_c

    iget-boolean v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v4, :cond_b

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_7

    :cond_b
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_7
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_FORCE_RESTART_MSG_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-eq v4, v5, :cond_e

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->setLimitTextSizeToLarge(Landroid/widget/TextView;F)V

    goto :goto_9

    :cond_c
    iget-boolean v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v4, :cond_d

    const-string v4, "#929295"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_8

    :cond_d
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_8
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    :goto_9
    if-eqz p2, :cond_10

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v5, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_DESCRIPTION_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v5}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v5, :cond_f

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    goto :goto_a

    :cond_f
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    :goto_a
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->setLimitTextSizeToLarge(Landroid/widget/TextView;F)V

    :cond_10
    return-void
.end method

.method public blacklist setViewIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewIndex(I)V

    return-void
.end method
