.class Lcom/samsung/android/settings/display/AspectRatioFragment$4;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;Landroid/util/ArrayMap;)V
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

    .line 643
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->val$rows:Landroid/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 4

    .line 646
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->val$rows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-ge p2, v0, :cond_6

    .line 647
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->val$rows:Landroid/util/ArrayMap;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 648
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "skipped unexpected package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AspectRatioFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 651
    :cond_0
    instance-of p2, p1, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;

    if-nez p2, :cond_5

    instance-of p2, p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 655
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->val$rows:Landroid/util/ArrayMap;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    if-nez p2, :cond_2

    return-void

    .line 659
    :cond_2
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 661
    iget v0, p2, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 662
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 663
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    .line 665
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$4;Landroid/widget/CompoundButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 673
    new-instance v2, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$4;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 682
    iget v2, p2, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 685
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmExecutor(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;

    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {v2, v3, p1, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    .line 689
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmHighlightRequest(Lcom/samsung/android/settings/display/AspectRatioFragment;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmHighlightKey(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmHighlightKey(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 690
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    const-string p3, ""

    invoke-static {p2, p3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fputmHighlightKey(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/lang/String;)V

    .line 691
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p2, v1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fputmHighlightRequest(Lcom/samsung/android/settings/display/AspectRatioFragment;Z)V

    .line 692
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$mapplyHighlight(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V

    :cond_7
    return-void
.end method
