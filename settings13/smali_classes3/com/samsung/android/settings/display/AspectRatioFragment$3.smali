.class Lcom/samsung/android/settings/display/AspectRatioFragment$3;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment;->setupOnFoldBindListener(Landroidx/apppickerview/widget/AppPickerView;Landroid/util/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

.field final synthetic val$rows:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/util/ArrayMap;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->val$rows:Landroid/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 6

    .line 517
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->val$rows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-ge p2, v0, :cond_b

    .line 519
    instance-of v0, p1, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;

    const-string v2, "AspectRatioFragment"

    if-nez v0, :cond_a

    instance-of v0, p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->val$rows:Landroid/util/ArrayMap;

    .line 521
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->val$rows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    if-nez v0, :cond_1

    return-void

    .line 530
    :cond_1
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 534
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 535
    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 536
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 537
    iget-object v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 538
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 541
    :cond_2
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v3, :cond_3

    .line 542
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 544
    :cond_3
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 545
    iget-object v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 546
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 548
    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sec_widget_list_app_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 549
    iget-object v4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_full_screen_apps_menu_popup_top_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 550
    iget-object v5, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5, v3}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    .line 551
    iget-object v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    neg-int v4, v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownVerticalOffset(I)V

    .line 554
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$3;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v4, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;

    invoke-direct {v4, p0, p1, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$3;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 607
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$color;->sec_preference_summary_primary_color:I

    .line 609
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 608
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 610
    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mRatio:F

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$mgetAspectRatioCategory(Lcom/samsung/android/settings/display/AspectRatioFragment;F)I

    move-result v3

    .line 611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mRatio:F

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-le v3, p2, :cond_6

    move v2, v1

    .line 614
    :goto_1
    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 615
    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 617
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-eq v3, p2, :cond_7

    .line 622
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_9

    .line 623
    :cond_7
    iget-object p2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x3

    if-le p2, v2, :cond_8

    .line 624
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p2

    iget-object v2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 626
    :cond_8
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p2

    iget-object v2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmExecutor(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v2, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;

    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {v2, v3, p1, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 522
    :cond_a
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "skipped unexpected package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 633
    :cond_b
    :goto_4
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmHighlightRequest(Lcom/samsung/android/settings/display/AspectRatioFragment;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmHighlightKey(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmHighlightKey(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 634
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    const-string p3, ""

    invoke-static {p2, p3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fputmHighlightKey(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/lang/String;)V

    .line 635
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p2, v1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fputmHighlightRequest(Lcom/samsung/android/settings/display/AspectRatioFragment;Z)V

    .line 636
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$mapplyHighlight(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V

    :cond_c
    return-void
.end method
