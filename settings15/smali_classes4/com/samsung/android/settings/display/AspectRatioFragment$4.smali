.class public final Lcom/samsung/android/settings/display/AspectRatioFragment$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;
.implements Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$rows:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->val$rows:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 8

    iget v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->val$rows:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/settings/display/AspectRatioFragment;

    if-ge p2, v0, :cond_5

    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->val$rows:Ljava/lang/Object;

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string/jumbo p0, "skipped unexpected package : "

    const-string p1, "AspectRatioFragment"

    invoke-static {p0, p3, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    instance-of p2, p1, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;

    if-nez p2, :cond_6

    instance-of p2, p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->val$rows:Ljava/lang/Object;

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v0, p2, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    iget-object v0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/settings/display/AspectRatioFragment$5$1;

    iget-object v4, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/display/AspectRatioFragment$5$1;-><init>(Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$5$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment$5$2;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$4;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget p0, p2, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    move v2, v0

    :cond_3
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_4
    iget-object p0, v1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_5
    iget-boolean p0, v1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightRequest:Z

    if-eqz p0, :cond_6

    iget-object p0, v1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, v1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iput-object p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mViewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$mapplyHighlight(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    :cond_6
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->val$rows:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/settings/display/AspectRatioFragment;

    if-ge p2, v0, :cond_13

    instance-of v0, p1, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;

    const-string v3, "AspectRatioFragment"

    if-nez v0, :cond_12

    instance-of v0, p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->val$rows:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->val$rows:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    if-nez v0, :cond_8

    goto/16 :goto_7

    :cond_8
    iget-object v4, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    iget-object v6, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    if-eq v4, v6, :cond_b

    iget-object v6, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v4, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    iget-object v6, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_9
    iget-object v4, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v4, :cond_a

    iget-object v4, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_a
    iget-object v4, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    iget-object v6, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, v2, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070dc3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, v2, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070ace

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    neg-int v6, v6

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownVerticalOffset(I)V

    :cond_b
    :goto_1
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v6, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;

    invoke-direct {v6, p0, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$4;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v6, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;

    invoke-direct {v6, p0, p1, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$4;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060659

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget p0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mRatio:I

    const/4 v4, 0x6

    if-ne p0, v4, :cond_c

    const/4 v1, 0x1

    goto :goto_2

    :cond_c
    const/4 v4, 0x4

    const/4 v6, 0x3

    if-ne p0, v4, :cond_d

    move v1, v6

    goto :goto_2

    :cond_d
    if-ne p0, v6, :cond_e

    goto :goto_2

    :cond_e
    move v1, v5

    :goto_2
    const-string p0, "Package : "

    const-string v4, " "

    invoke-static {p2, p0, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mRatio:I

    invoke-static {p0, p2, v3}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move p0, v5

    :goto_3
    iget-object p2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_10

    iget-object p2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_f

    iget-object p2, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_f
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_10
    :goto_4
    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_11

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object p2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object p0, v2, Lcom/samsung/android/settings/display/AspectRatioFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;

    invoke-direct {p2, v2, p1, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_12
    :goto_5
    const-string/jumbo p0, "skipped unexpected package : "

    invoke-static {p0, p3, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_13
    :goto_6
    iget-boolean p0, v2, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightRequest:Z

    if-eqz p0, :cond_14

    iget-object p0, v2, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_14

    iget-object p0, v2, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    iput-object p1, v2, Lcom/samsung/android/settings/display/AspectRatioFragment;->mViewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-static {v2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$mapplyHighlight(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    :cond_14
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSearchFilterCompleted(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->val$rows:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;

    iget-object v2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v2, v2, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v3, 0x8

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    const v0, 0x7f1420c6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method
