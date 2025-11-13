.class public Lcom/android/internal/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public greylist mAdapter:Landroid/widget/ListAdapter;

.field public greylist mCancelable:Z

.field public greylist mCheckedItem:I

.field public greylist mCheckedItems:[Z

.field public final greylist mContext:Landroid/content/Context;

.field public greylist mCursor:Landroid/database/Cursor;

.field public greylist mCustomTitleView:Landroid/view/View;

.field public greylist-max-o mForceInverseBackground:Z

.field public greylist mIcon:Landroid/graphics/drawable/Drawable;

.field public greylist-max-o mIconAttrId:I

.field public greylist mIconId:I

.field public final greylist mInflater:Landroid/view/LayoutInflater;

.field public greylist mIsCheckedColumn:Ljava/lang/String;

.field public greylist mIsMultiChoice:Z

.field public greylist mIsSingleChoice:Z

.field public greylist mItems:[Ljava/lang/CharSequence;

.field public greylist mLabelColumn:Ljava/lang/String;

.field public greylist mMessage:Ljava/lang/CharSequence;

.field public greylist mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mNegativeButtonText:Ljava/lang/CharSequence;

.field public greylist mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mNeutralButtonText:Ljava/lang/CharSequence;

.field public greylist mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public greylist mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public greylist mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public greylist mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public greylist mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public greylist-max-o mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public greylist mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mPositiveButtonText:Ljava/lang/CharSequence;

.field public greylist-max-o mRecycleOnMeasure:Z

.field public greylist mTitle:Ljava/lang/CharSequence;

.field public greylist mView:Landroid/view/View;

.field public greylist-max-o mViewLayoutResId:I

.field public greylist-max-o mViewSpacingBottom:I

.field public greylist-max-o mViewSpacingLeft:I

.field public greylist-max-o mViewSpacingRight:I

.field public greylist-max-o mViewSpacingSpecified:Z

.field public greylist-max-o mViewSpacingTop:I


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private greylist-max-o createListView(Lcom/android/internal/app/AlertController;)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmListLayout(Lcom/android/internal/app/AlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/AlertController$RecycleListView;

    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    new-instance v9, Lcom/android/internal/app/AlertController$AlertParams$1;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmMultiChoiceItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result v4

    const v5, 0x1020014

    iget-object v6, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$AlertParams$1;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/AlertController$RecycleListView;)V

    goto :goto_1

    :cond_0
    new-instance v9, Lcom/android/internal/app/AlertController$AlertParams$2;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$AlertParams$2;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmSingleChoiceItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmThemeIsDeviceDefault(Lcom/android/internal/app/AlertController;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, v8}, Lcom/android/internal/app/AlertController;->-$$Nest$fputmIsItemChoiceLayout(Lcom/android/internal/app/AlertController;Z)V

    :cond_3
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmListItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v3, 0x1020014

    if-eqz v2, :cond_4

    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {v3}, [I

    move-result-object v7

    move-object v2, v9

    move-object v3, v4

    move v4, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v1, v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object v1, v2

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/android/internal/app/AlertController$CheckedItemAdapter;

    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v2, v4, v1, v3, v5}, Lcom/android/internal/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    move-object v1, v2

    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v2, v0}, Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_6
    invoke-static {p1, v1}, Lcom/android/internal/app/AlertController;->-$$Nest$fputmAdapter(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)V

    iget v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    invoke-static {p1, v2}, Lcom/android/internal/app/AlertController;->-$$Nest$fputmCheckedItem(Lcom/android/internal/app/AlertController;I)V

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_7

    new-instance v2, Lcom/android/internal/app/AlertController$AlertParams$3;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/AlertController$AlertParams$3;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_8

    new-instance v2, Lcom/android/internal/app/AlertController$AlertParams$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/internal/app/AlertController$AlertParams$4;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_9
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_a

    invoke-virtual {v0, v8}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_3

    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    :cond_b
    :goto_3
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v2, v0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    iput-object v0, p1, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public greylist apply(Lcom/android/internal/app/AlertController;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    :cond_3
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x1

    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x3

    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setInverseBackgroundForced(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V

    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    :cond_d
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(I)V

    :cond_e
    :goto_1
    return-void
.end method
