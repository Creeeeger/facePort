.class public Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NewModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenModeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;,
        Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;",
            ">;"
        }
    .end annotation
.end field

.field mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

.field mSelectValue:I

.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/content/Context;Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;I)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 481
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    .line 487
    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    .line 488
    iput-object p3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    .line 489
    iput p4, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mSelectValue:I

    .line 490
    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->addScreenModeListView()V

    return-void
.end method

.method private addScreenModeList(Ljava/lang/String;I)V
    .locals 1

    .line 548
    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;-><init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;)V

    .line 549
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->setTitle(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->setValue(I)V

    .line 551
    iget p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mSelectValue:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 552
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->setChecked(Z)V

    .line 554
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private addScreenModeListView()V
    .locals 3

    .line 538
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 539
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 540
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-static {v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->-$$Nest$fgetmNameStringId(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-static {v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->-$$Nest$fgetmDBValue(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->addScreenModeList(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "ModePreview"

    const-string v0, "addScreenModeListView failed"

    .line 543
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 635
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPositionFromValue(J)I
    .locals 3

    const/4 v0, 0x0

    .line 559
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-static {v1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->-$$Nest$fgetmDBValue(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 587
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;

    iget-object v1, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->getChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/CheckableLinearLayout;->setChecked(Z)V

    .line 589
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;-><init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 581
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_screen_mode_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 582
    new-instance p2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;-><init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setChecked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 568
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->setChecked(Z)V

    .line 571
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;

    iget-object v2, v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->getChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 573
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->setChecked(Z)V

    .line 575
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
