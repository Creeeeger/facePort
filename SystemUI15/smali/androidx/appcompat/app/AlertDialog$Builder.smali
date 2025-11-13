.class public final Landroidx/appcompat/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final P:Landroidx/appcompat/app/AlertController$AlertParams;

.field public final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(ILandroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p2, p1}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(ILandroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput p2, p0, Landroidx/appcompat/app/AlertDialog$Builder;->mTheme:I

    return-void
.end method


# virtual methods
.method public final create()Landroidx/appcompat/app/AlertDialog;
    .locals 14

    new-instance v0, Landroidx/appcompat/app/AlertDialog;

    iget-object v8, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iget-object p0, v0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iput v9, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1, v2}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v1, v2}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v1, :cond_6

    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_e

    :cond_6
    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Landroidx/appcompat/app/AlertController;->mListLayout:I

    invoke-virtual {v1, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_7

    new-instance v13, Landroidx/appcompat/app/AlertController$AlertParams$1;

    iget-object v3, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v6, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget v4, p0, Landroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    const v5, 0x1020014

    move-object v1, v13

    move-object v2, v8

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/app/AlertController$AlertParams$1;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto :goto_4

    :cond_7
    iget-boolean v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_8

    iget v1, p0, Landroidx/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    goto :goto_3

    :cond_8
    iget v1, p0, Landroidx/appcompat/app/AlertController;->mListItemLayout:I

    :goto_3
    iget-object v13, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v13, :cond_9

    goto :goto_4

    :cond_9
    new-instance v13, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;

    iget-object v2, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const v3, 0x1020014

    iget-object v4, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v13, v2, v1, v3, v4}, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_4
    iput-object v13, p0, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    iput v1, p0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_a

    new-instance v1, Landroidx/appcompat/app/AlertController$AlertParams$3;

    invoke-direct {v1, v8, p0}, Landroidx/appcompat/app/AlertController$AlertParams$3;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v12, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_5

    :cond_a
    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_b

    new-instance v1, Landroidx/appcompat/app/AlertController$AlertParams$4;

    invoke-direct {v1, v8, v12, p0}, Landroidx/appcompat/app/AlertController$AlertParams$4;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v12, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_b
    :goto_5
    iget-boolean v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_c

    invoke-virtual {v12, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_6

    :cond_c
    iget-boolean v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    invoke-virtual {v12, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_d
    :goto_6
    iput-object v12, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_e
    iget-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v1, :cond_f

    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    iput v9, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    iput-boolean v9, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    goto :goto_7

    :cond_f
    iget v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v1, :cond_10

    iput-object v11, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    iput v1, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    iput-boolean v9, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    :cond_10
    :goto_7
    iget-boolean p0, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean p0, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz p0, :cond_11

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_11
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz p0, :cond_12

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_12
    return-object v0
.end method

.method public final setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    return-void
.end method
