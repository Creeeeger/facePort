.class public final Lcom/android/settingslib/utils/CustomDialogHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBackButton:Landroid/widget/Button;

.field public final mContentPanel:Landroid/widget/FrameLayout;

.field public final mContext:Landroid/content/Context;

.field public final mCustomLayout:Landroid/widget/FrameLayout;

.field public final mCustomPanel:Landroid/widget/FrameLayout;

.field public final mDialog:Landroid/app/Dialog;

.field public final mDialogContent:Landroid/view/View;

.field public final mDialogIcon:Landroid/widget/ImageView;

.field public final mDialogMessage:Landroid/widget/TextView;

.field public final mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

.field public final mDivider1:Landroid/view/View;

.field public final mDivider2:Landroid/view/View;

.field public final mNegativeButton:Landroid/widget/Button;

.field public final mPositiveButton:Landroid/widget/Button;

.field public final mTitleTemplete:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d07ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogContent:Landroid/view/View;

    const v1, 0x7f0a052a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a052c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/DialogTitle;

    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

    const v1, 0x7f0a052b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    const v1, 0x7f0a0471

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    const v1, 0x7f0a029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    const v1, 0x7f0a0298

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f0a046c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomPanel:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0418

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContentPanel:Landroid/widget/FrameLayout;

    const v1, 0x7f0a105c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mTitleTemplete:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0dad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDivider1:Landroid/view/View;

    const v1, 0x7f0a0dae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDivider2:Landroid/view/View;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public final checkMaxFontScale(ILandroid/widget/TextView;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    int-to-float p1, p1

    div-float/2addr p1, p0

    const/4 p0, 0x0

    mul-float/2addr p1, v0

    invoke-virtual {p2, p0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public final setButton(IILandroid/view/View$OnClickListener;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    int-to-float p2, v0

    invoke-virtual {p1, v4, p2}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(ILandroid/widget/TextView;)V

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    int-to-float p2, v0

    invoke-virtual {p1, v4, p2}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(ILandroid/widget/TextView;)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDivider1:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDivider2:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    int-to-float p2, v0

    invoke-virtual {p1, v4, p2}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(ILandroid/widget/TextView;)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDivider1:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDivider2:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :goto_0
    return-void
.end method

.method public final setMessage(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a40

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(ILandroid/widget/TextView;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070a49

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(ILandroid/widget/TextView;)V

    return-void
.end method

.method public final setVisibility(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mTitleTemplete:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContentPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :pswitch_4
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_5
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_6
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_7
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_8
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_9
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final setupDialogPaddings()V
    .locals 10

    iget-object v0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogContent:Landroid/view/View;

    const v1, 0x7f0a0b20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogContent:Landroid/view/View;

    const v2, 0x7f0a105c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogContent:Landroid/view/View;

    const v3, 0x7f0a0d1a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogContent:Landroid/view/View;

    const v4, 0x7f0a1070

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogContent:Landroid/view/View;

    const v5, 0x7f0a0294

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogContent:Landroid/view/View;

    const v6, 0x7f0a046c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogContent:Landroid/view/View;

    const v7, 0x7f0a0418

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v9

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v8, :cond_1

    move v3, v7

    goto :goto_1

    :cond_1
    move v3, v9

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_2

    goto :goto_2

    :cond_2
    move v7, v9

    :goto_2
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v5, :cond_4

    if-nez v3, :cond_4

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_4
    :goto_3
    const v6, 0x7f070a48

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v0, v9, v6, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    if-eqz v1, :cond_6

    const v0, 0x7f070a46

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    if-nez v7, :cond_5

    invoke-virtual {v1, v0, v9, v0, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    :cond_5
    const v3, 0x7f070a47

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v0, v9, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    const v0, 0x7f070a3f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070a3e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f070a3d

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v0, v9, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_7
    if-eqz v4, :cond_8

    const v0, 0x7f070a44

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070a43

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v4, v0, v9, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_8
    return-void
.end method
