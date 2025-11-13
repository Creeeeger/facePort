.class public final Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIsCameraViewCover:Z

.field public final mIsIconOnly:Z

.field public final mParent:Landroid/view/ViewGroup;

.field public final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field public final mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;ZZLcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mParent:Landroid/view/ViewGroup;

    iput-boolean p4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mIsIconOnly:Z

    iput-boolean p5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mIsCameraViewCover:Z

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    return-void
.end method


# virtual methods
.method public final setViewAttrs(Landroid/view/View;Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_BTN_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_LABEL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mIsIconOnly:Z

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mIsCameraViewCover:Z

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070424

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070425

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x40

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/16 v7, 0x28

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v6}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "power"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v8, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_COVER_POWER_OFF_BG:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v7, v8}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v6, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_COVER_POWER_OFF_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v6}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v6, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_POWEROFF:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v6}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v6}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "restart"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v8, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_COVER_RESTART_BG:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v7, v8}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v6, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_COVER_RESTART_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v6}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v6, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_RESTART:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v6}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_7

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p0

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getLabel()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    return-void
.end method
