.class public Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ScreenTimeoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenTimeoutAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;,
        Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerFooterViewHolder;,
        Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;
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
.field mCurrentTimeout:J

.field mEntries:[Ljava/lang/CharSequence;

.field mHasFooterView:Z

.field mListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Z[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;J)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 251
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    .line 258
    iput-object p3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 259
    iput-object p4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mValues:[Ljava/lang/CharSequence;

    .line 260
    iput-wide p5, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mCurrentTimeout:J

    .line 261
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mHasFooterView:Z

    .line 262
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->addScreenTimeoutListView()V

    return-void
.end method

.method private addScreenTimeoutList(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 331
    new-instance v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;)V

    .line 332
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->setTitle(Ljava/lang/String;)V

    .line 333
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->setValue(Ljava/lang/String;)V

    .line 334
    iget-wide v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mCurrentTimeout:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 335
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->setChecked(Z)V

    .line 337
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private addScreenTimeoutListView()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 323
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->addScreenTimeoutList(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "ScreenTimeoutActivity"

    const-string v0, "addScreenTimeoutListView failed"

    .line 326
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mHasFooterView:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 423
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mHasFooterView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v1

    if-ne p0, p1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 369
    instance-of v0, p1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 370
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    iput-object v1, v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->mData:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    .line 371
    iget-object v1, v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v1, v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->getChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/CheckableLinearLayout;->setChecked(Z)V

    .line 375
    iget-object v1, v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmItemEnabled(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 376
    iget-object v0, v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmItemEnabled(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/CheckableLinearLayout;->setEnabled(Z)V

    .line 378
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 407
    :cond_0
    instance-of p2, p1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerFooterViewHolder;

    if-eqz p2, :cond_1

    .line 408
    check-cast p1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerFooterViewHolder;

    .line 409
    iget-object p2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {p2}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 410
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->admin_more_details_link:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$2;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 356
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mHasFooterView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 357
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->admin_disabled_other_options_footer:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 358
    new-instance p2, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerFooterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerFooterViewHolder;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 361
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_screen_timeout_list_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 362
    new-instance p2, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setChecked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 342
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-ne v1, p2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->setChecked(Z)V

    .line 345
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;

    iget-object v2, v2, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->getChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/CheckableLinearLayout;->setChecked(Z)V

    .line 346
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mCurrentTimeout:J

    goto :goto_1

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->setChecked(Z)V

    .line 350
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
