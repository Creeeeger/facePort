.class public Landroidx/appcompat/app/AlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final mAlert:Landroidx/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    iput-object p1, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    return-void
.end method

.method public static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f040042

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public final getButton(I)Landroid/widget/Button;
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    :goto_0
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v2, p0

    iget-object v2, v2, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iget-object v3, v2, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget v4, v2, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    iget-object v3, v2, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f0a0b20

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroidx/appcompat/app/AlertController$2;

    invoke-direct {v4, v2, v3}, Landroidx/appcompat/app/AlertController$2;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v4, 0x7f0a1070

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0418

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0295

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0a046c

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, v2, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    iget v11, v2, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    if-eqz v11, :cond_1

    iget-object v11, v2, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    iget v14, v2, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v11, v14, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    const/4 v14, 0x1

    if-eqz v11, :cond_2

    move v15, v14

    goto :goto_1

    :cond_2
    move v15, v12

    :goto_1
    if-eqz v15, :cond_3

    invoke-static {v11}, Landroidx/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v16

    if-nez v16, :cond_4

    :cond_3
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    const/4 v1, -0x1

    const/16 v0, 0x8

    if-eqz v15, :cond_7

    iget-object v15, v2, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, 0x7f0a046b

    invoke-virtual {v15, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v15, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v11, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v11, v2, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v11, :cond_5

    invoke-virtual {v13, v12, v12, v12, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_5
    iget-object v11, v2, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v11, v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_6
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_7
    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    :goto_2
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v4, v5}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v6, v7}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-static {v8, v9}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v8

    if-ne v8, v9, :cond_9

    new-instance v9, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;

    invoke-direct {v9, v2}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/app/AlertController;)V

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    iput-object v9, v2, Landroidx/appcompat/app/AlertController;->mDefaultButtonPanelJob:Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x7f0a0d1a

    invoke-virtual {v9, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroidx/core/widget/NestedScrollView;

    iput-object v9, v2, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v9, v12}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v9, v12}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v9, 0x102000b

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v9, :cond_a

    goto :goto_4

    :cond_a
    iget-object v11, v2, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v11, :cond_b

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v11, v2, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f070fde

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v2, v11, v9}, Landroidx/appcompat/app/AlertController;->checkMaxFontScale(ILandroid/widget/TextView;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v11, v2, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v9, :cond_c

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v11, v2, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v13, v2, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v15, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    if-eqz v9, :cond_d

    const-string/jumbo v11, "show_button_background"

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v14, :cond_d

    move v9, v14

    goto :goto_5

    :cond_d
    move v9, v12

    :goto_5
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    iget-object v13, v2, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v15, 0x1010031

    invoke-virtual {v13, v15, v11, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-lez v13, :cond_e

    iget-object v13, v2, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget v15, v11, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    goto :goto_6

    :cond_e
    move v13, v1

    :goto_6
    const v15, 0x1020019

    invoke-virtual {v8, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    iput-object v15, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, v2, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroidx/appcompat/app/AlertController$1;

    invoke-virtual {v15, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v15, v11, Landroid/util/TypedValue;->resourceId:I

    if-lez v15, :cond_f

    iget-object v15, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-static {v15, v9, v13}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(Landroid/widget/TextView;ZI)V

    goto :goto_7

    :cond_f
    iget-object v15, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-static {v15, v9}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(Landroid/widget/TextView;Z)V

    :goto_7
    iget-object v15, v2, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    iget v14, v2, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    if-eqz v15, :cond_10

    iget-object v15, v2, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_10

    iget-object v15, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    :cond_10
    iget-object v15, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v12, v12, v14, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v15, v2, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-virtual {v0, v15, v12, v12, v12}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_11
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v12, 0x1

    :goto_8
    const v0, 0x102001a

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, v11, Landroid/util/TypedValue;->resourceId:I

    if-lez v0, :cond_12

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-static {v0, v9, v13}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(Landroid/widget/TextView;ZI)V

    goto :goto_9

    :cond_12
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-static {v0, v9}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(Landroid/widget/TextView;Z)V

    :goto_9
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v0, v15}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v17, v6

    goto :goto_b

    :cond_13
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v15, v2, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v15, v14, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v15, v2, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v15, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_14
    move-object/from16 v17, v6

    :goto_a
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x2

    or-int/2addr v12, v0

    :goto_b
    const v0, 0x102001b

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, v11, Landroid/util/TypedValue;->resourceId:I

    if-lez v0, :cond_15

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-static {v0, v9, v13}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(Landroid/widget/TextView;ZI)V

    goto :goto_c

    :cond_15
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-static {v0, v9}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(Landroid/widget/TextView;Z)V

    :goto_c
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_d

    :cond_16
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v1, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0, v1, v1, v14, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_17
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x4

    or-int/2addr v12, v0

    :goto_d
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v6, 0x7f040040

    const/4 v9, 0x1

    invoke-virtual {v0, v6, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v1, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_18

    const/high16 v0, 0x3f000000    # 0.5f

    if-ne v12, v9, :cond_19

    iget-object v1, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    const/4 v1, 0x2

    goto :goto_e

    :cond_19
    const/4 v1, 0x2

    if-ne v12, v1, :cond_1a

    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_1a
    const/4 v6, 0x4

    if-ne v12, v6, :cond_1b

    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    :goto_e
    if-eqz v12, :cond_1c

    goto :goto_f

    :cond_1c
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_f
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_10

    :cond_1d
    const/4 v0, 0x0

    :goto_10
    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1e

    const/4 v6, 0x1

    goto :goto_11

    :cond_1e
    const/4 v6, 0x0

    :goto_11
    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1f

    const/4 v9, 0x1

    goto :goto_12

    :cond_1f
    const/4 v9, 0x0

    :goto_12
    iget-object v11, v2, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v12, 0x7f0a0dae

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_22

    if-eqz v0, :cond_21

    if-nez v6, :cond_20

    goto :goto_14

    :cond_20
    :goto_13
    const/4 v0, 0x0

    goto :goto_15

    :cond_21
    :goto_14
    if-eqz v0, :cond_22

    if-eqz v9, :cond_22

    goto :goto_13

    :goto_15
    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    :cond_22
    const/4 v0, 0x0

    :goto_16
    iget-object v11, v2, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v12, 0x7f0a0dad

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_23

    if-eqz v6, :cond_23

    if-eqz v9, :cond_23

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mDefaultButtonPanelJob:Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_25

    const v0, 0x7f0a0294

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_25

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mDefaultButtonPanelJob:Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_24

    goto :goto_17

    :cond_24
    new-instance v6, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda2;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_25
    :goto_17
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const v6, 0x7f0a105c

    if-eqz v0, :cond_26

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v11, -0x1

    invoke-direct {v0, v11, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_19

    :cond_26
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x1020006

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x1

    xor-int/2addr v0, v9

    if-eqz v0, :cond_29

    iget-boolean v0, v2, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_29

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f0a00cb

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f070ffd

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v2, v9, v0}, Landroidx/appcompat/app/AlertController;->checkMaxFontScale(ILandroid/widget/TextView;)V

    iget v0, v2, Landroidx/appcompat/app/AlertController;->mIconId:I

    if-eqz v0, :cond_27

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_18
    const/16 v9, 0x8

    goto :goto_19

    :cond_27
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_28

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18

    :cond_28
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v9, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v9

    iget-object v11, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v11

    iget-object v12, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v12

    iget-object v13, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v0, v9, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19

    :cond_29
    const/16 v9, 0x8

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_19
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_2a

    const/4 v0, 0x1

    goto :goto_1a

    :cond_2a
    const/4 v0, 0x0

    :goto_1a
    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v9, :cond_2b

    const/4 v4, 0x1

    goto :goto_1b

    :cond_2b
    const/4 v4, 0x0

    :goto_1b
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v8

    if-eq v8, v9, :cond_2c

    const/4 v8, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v8, 0x0

    :goto_1c
    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_2d

    const/4 v5, 0x1

    goto :goto_1d

    :cond_2d
    const/4 v5, 0x0

    :goto_1d
    if-eqz v7, :cond_2e

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_2e

    const/4 v7, 0x1

    goto :goto_1e

    :cond_2e
    const/4 v7, 0x0

    :goto_1e
    iget-object v11, v2, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v11, :cond_2f

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v9, :cond_2f

    const/4 v9, 0x1

    goto :goto_1f

    :cond_2f
    const/4 v9, 0x0

    :goto_1f
    if-eqz v0, :cond_31

    if-nez v5, :cond_31

    if-eqz v7, :cond_30

    goto :goto_21

    :cond_30
    :goto_20
    const/4 v9, 0x0

    goto :goto_22

    :cond_31
    :goto_21
    if-eqz v9, :cond_32

    goto :goto_20

    :goto_22
    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    :cond_32
    if-eqz v0, :cond_33

    if-eqz v5, :cond_33

    if-nez v7, :cond_33

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070ff8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_33
    iget-object v5, v2, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070fed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_34

    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    int-to-float v9, v5

    const/4 v11, 0x0

    invoke-virtual {v6, v11, v9}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v5, v6}, Landroidx/appcompat/app/AlertController;->checkMaxFontScale(ILandroid/widget/TextView;)V

    goto :goto_23

    :cond_34
    const/4 v11, 0x0

    :goto_23
    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-eq v6, v7, :cond_35

    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    int-to-float v9, v5

    invoke-virtual {v6, v11, v9}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v5, v6}, Landroidx/appcompat/app/AlertController;->checkMaxFontScale(ILandroid/widget/TextView;)V

    :cond_35
    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-eq v6, v7, :cond_36

    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    int-to-float v7, v5

    invoke-virtual {v6, v11, v7}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v5, v6}, Landroidx/appcompat/app/AlertController;->checkMaxFontScale(ILandroid/widget/TextView;)V

    :cond_36
    invoke-virtual {v3}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_3c

    if-eqz v0, :cond_37

    goto :goto_24

    :cond_37
    move-object/from16 v10, v17

    :goto_24
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_25

    :cond_38
    iget-object v3, v2, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v3, :cond_39

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_25

    :cond_39
    iget-object v3, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v2, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_25

    :cond_3a
    iget-object v3, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, v2, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_25

    :cond_3b
    iget-object v3, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, v2, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    :cond_3c
    :goto_25
    if-eqz v4, :cond_3d

    iget-object v3, v2, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v3, :cond_3d

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    :cond_3d
    iget-object v3, v2, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    instance-of v5, v3, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v5, :cond_41

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_3e

    if-nez v4, :cond_41

    :cond_3e
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    if-eqz v4, :cond_3f

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    goto :goto_26

    :cond_3f
    iget v6, v3, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    :goto_26
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v7

    if-eqz v8, :cond_40

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v9

    goto :goto_27

    :cond_40
    iget v9, v3, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    :goto_27
    invoke-virtual {v3, v5, v6, v7, v9}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_41
    if-nez v0, :cond_45

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v0, :cond_42

    goto :goto_28

    :cond_42
    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    :goto_28
    if-eqz v0, :cond_45

    if-eqz v8, :cond_43

    goto :goto_29

    :cond_43
    const/4 v1, 0x0

    :goto_29
    or-int/2addr v1, v4

    iget-object v3, v2, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f0a0d19

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v2, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f0a0d18

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v5, 0x3

    invoke-static {v0, v1, v5}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;II)V

    move-object/from16 v0, v17

    if-eqz v3, :cond_44

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_44
    if-eqz v4, :cond_45

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_45
    iget-object v1, v2, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v1, :cond_47

    iget-object v0, v2, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_47

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v0, Landroidx/reflect/widget/SeslAdapterViewReflector;->mClass:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "hidden_semSetBottomColor"

    invoke-static {v0, v3, v4}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2a

    :catch_0
    move-exception v0

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " InvocationTargetException"

    invoke-static {v3, v0, v6, v4, v5}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_2a

    :catch_1
    move-exception v0

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IllegalArgumentException"

    invoke-static {v3, v0, v6, v4, v5}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_2a

    :catch_2
    move-exception v0

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IllegalAccessException"

    invoke-static {v3, v0, v6, v4, v5}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_46
    :goto_2a
    iget v0, v2, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    const/4 v3, -0x1

    if-le v0, v3, :cond_47

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v2, v2, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071159

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_47
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setView$1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method
