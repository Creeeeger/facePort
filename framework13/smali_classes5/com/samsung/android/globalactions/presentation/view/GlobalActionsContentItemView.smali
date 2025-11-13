.class public Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;
.super Ljava/lang/Object;
.source "GlobalActionsContentItemView.java"


# instance fields
.field private final blacklist DEFAULT_LONG_PRESS_TIME:I

.field private final blacklist KEY_SETTINGS_COLOR_DARK_THEME:Ljava/lang/String;

.field private final blacklist KEY_SETTINGS_COLOR_WHITE_THEME:Ljava/lang/String;

.field private final blacklist LABEL_TEXT_COLOR_DEFAULT:Ljava/lang/String;

.field private final blacklist LABEL_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

.field private final blacklist LABEL_TEXT_SIZE:I

.field private final blacklist STATE_TEXT_COLOR_DEFAULT:Ljava/lang/String;

.field private final blacklist STATE_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

.field private final blacklist STATE_TEXT_SIZE:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIsLongPress:Z

.field private final blacklist mParent:Landroid/view/ViewGroup;

.field private final blacklist mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field private final blacklist mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field private final blacklist mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

.field private final blacklist mVoiceAssistantMode:Z

.field private final blacklist mWhiteTheme:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViewModel(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewStateController(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)Lcom/samsung/android/globalactions/presentation/view/ViewStateController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsLongPress(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mIsLongPress:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;ZZLcom/samsung/android/globalactions/presentation/view/ViewStateController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewModel"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;
    .param p4, "resourceFactory"    # Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;
    .param p5, "isVoiceAssistantMode"    # Z
    .param p6, "isWhiteTheme"    # Z
    .param p7, "stateController"    # Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->LABEL_TEXT_SIZE:I

    .line 22
    const/16 v0, 0xd

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->STATE_TEXT_SIZE:I

    .line 23
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->DEFAULT_LONG_PRESS_TIME:I

    .line 24
    const-string v0, "#fafafa"

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->LABEL_TEXT_COLOR_DEFAULT:Ljava/lang/String;

    .line 25
    const-string v1, "#252525"

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->LABEL_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

    .line 26
    const-string v1, "#c3c3c3"

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->STATE_TEXT_COLOR_DEFAULT:Ljava/lang/String;

    .line 27
    const-string v1, "#757575"

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->STATE_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

    .line 28
    const-string v1, "#010101"

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->KEY_SETTINGS_COLOR_WHITE_THEME:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->KEY_SETTINGS_COLOR_DARK_THEME:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mIsLongPress:Z

    .line 44
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 46
    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mParent:Landroid/view/ViewGroup;

    .line 47
    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 48
    iput-boolean p5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mVoiceAssistantMode:Z

    .line 49
    iput-boolean p6, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    .line 50
    iput-object p7, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    .line 51
    return-void
.end method

.method private blacklist checkSingleLine(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mParent:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    if-eqz v1, :cond_1

    .line 211
    check-cast v0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->isVerticalMode()Z

    move-result v0

    .line 212
    .local v0, "isVertical":Z
    if-eqz v0, :cond_0

    .line 213
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 215
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 218
    .end local v0    # "isVertical":Z
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist setLimitTextSizeToLarge(Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textSizeSP"    # I

    .line 225
    if-nez p1, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    const v0, 0x3f8ccccd    # 1.1f

    .line 229
    .local v0, "LARGE_FONT_SCALE":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 230
    .local v1, "fontScale":F
    const v2, 0x3f8ccccd    # 1.1f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 231
    const v1, 0x3f8ccccd    # 1.1f

    .line 233
    :cond_1
    const/4 v2, 0x1

    int-to-float v3, p2

    mul-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 234
    return-void
.end method


# virtual methods
.method public blacklist createView(Z)Landroid/view/View;
    .locals 1
    .param p1, "isForConfirming"    # Z

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->inflateView()Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->setViewAttrs(Landroid/view/View;Z)V

    .line 56
    return-object v0
.end method

.method public blacklist inflateView()Landroid/view/View;
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->TOP_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 62
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

    .local v0, "view":Landroid/view/View;
    goto/16 :goto_0

    .line 64
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_BTN_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 65
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

    .line 67
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 78
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_0

    .line 79
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->KEY_SETTINGS_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-ne v0, v1, :cond_3

    .line 80
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

    .line 82
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 88
    iget-boolean v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_BG_RAISED_BTN_LIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SIDEKEY_SETTINGS_RIPPLE_LIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_BG_RAISED_BTN_DARK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SIDEKEY_SETTINGS_RIPPLE_DARK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 95
    .end local v0    # "view":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_FORCE_RESTART_MSG_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-ne v0, v1, :cond_4

    .line 96
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

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 99
    .end local v0    # "view":Landroid/view/View;
    :cond_4
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

    .line 102
    .restart local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0
.end method

.method synthetic blacklist lambda$inflateView$0$com-samsung-android-globalactions-presentation-view-GlobalActionsContentItemView(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onPress()V

    .line 71
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$inflateView$1$com-samsung-android-globalactions-presentation-view-GlobalActionsContentItemView(Landroid/view/View;)Z
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onLongPress()V

    .line 76
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method synthetic blacklist lambda$inflateView$2$com-samsung-android-globalactions-presentation-view-GlobalActionsContentItemView(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onPress()V

    .line 86
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$setViewAttrs$3$com-samsung-android-globalactions-presentation-view-GlobalActionsContentItemView(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onPress()V

    .line 127
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$setViewAttrs$4$com-samsung-android-globalactions-presentation-view-GlobalActionsContentItemView(Landroid/os/Handler;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "longPressTime"    # I
    .param p3, "v"    # Landroid/view/View;
    .param p4, "e"    # Landroid/view/MotionEvent;

    .line 134
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mIsLongPress:Z

    .line 136
    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$1;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$1;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;Landroid/view/View;)V

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 150
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mIsLongPress:Z

    return v0
.end method

.method synthetic blacklist lambda$setViewAttrs$5$com-samsung-android-globalactions-presentation-view-GlobalActionsContentItemView(Landroid/view/View;)Z
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onLongPress()V

    .line 157
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setViewAttrs(Landroid/view/View;Z)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isForConfirming"    # Z

    .line 106
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_LABEL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    .local v0, "labelView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_STATE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    .local v1, "stateView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 110
    .local v2, "imageView":Landroid/widget/ImageView;
    const-string v3, "knox_custom"

    if-eqz v2, :cond_3

    .line 111
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v3, :cond_0

    .line 112
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 115
    invoke-virtual {v2, v5, v6}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getIcon()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 123
    new-instance v4, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getLongPressTime()I

    move-result v4

    .line 131
    .local v4, "longPressTime":I
    const/16 v5, 0x1f4

    if-eq v4, v5, :cond_1

    .line 132
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 133
    .local v5, "handler":Landroid/os/Handler;
    new-instance v7, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v5, v4}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;Landroid/os/Handler;I)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    .end local v5    # "handler":Landroid/os/Handler;
    goto :goto_1

    .line 153
    :cond_1
    new-instance v5, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 161
    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mVoiceAssistantMode:Z

    if-eqz v5, :cond_2

    .line 162
    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v8, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ICON_RIPPLE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v7, v8}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v7

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 162
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 165
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v8, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ICON_BG_FOCUSED:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v7, v8}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v7

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 165
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .end local v4    # "longPressTime":I
    :cond_3
    :goto_2
    const/16 v4, 0xf

    const-string v5, "#fafafa"

    if-eqz v0, :cond_6

    .line 170
    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->checkSingleLine(Landroid/widget/TextView;)V

    .line 171
    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v6}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v6

    if-ne v6, v3, :cond_4

    .line 172
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 174
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v3

    sget-object v6, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_BTN_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-eq v3, v6, :cond_6

    .line 178
    iget-boolean v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v3, :cond_5

    const-string v3, "#252525"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_4

    :cond_5
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->setLimitTextSizeToLarge(Landroid/widget/TextView;I)V

    .line 183
    :cond_6
    const/16 v3, 0xd

    const-string v6, "#757575"

    const-string v7, "#c3c3c3"

    if-eqz v1, :cond_b

    .line 184
    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v8}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getStateLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    if-eqz v2, :cond_7

    .line 186
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

    .line 188
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v8}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->KEY_SETTINGS_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-ne v8, v9, :cond_9

    .line 189
    iget-boolean v8, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v8, :cond_8

    const-string v5, "#010101"

    :cond_8
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    invoke-direct {p0, v1, v4}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->setLimitTextSizeToLarge(Landroid/widget/TextView;I)V

    goto :goto_6

    .line 192
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_BTN_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-eq v4, v5, :cond_b

    .line 193
    iget-boolean v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v4, :cond_a

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    :cond_a
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_FORCE_RESTART_MSG_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-eq v4, v5, :cond_b

    .line 196
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->setLimitTextSizeToLarge(Landroid/widget/TextView;I)V

    .line 201
    :cond_b
    :goto_6
    if-eqz p2, :cond_d

    .line 202
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v5, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_DESCRIPTION_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 203
    .local v4, "descriptionView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v5}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-boolean v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mWhiteTheme:Z

    if-eqz v5, :cond_c

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    goto :goto_7

    :cond_c
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    :goto_7
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->setLimitTextSizeToLarge(Landroid/widget/TextView;I)V

    .line 207
    .end local v4    # "descriptionView":Landroid/widget/TextView;
    :cond_d
    return-void
.end method

.method public blacklist setViewIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 221
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewIndex(I)V

    .line 222
    return-void
.end method
