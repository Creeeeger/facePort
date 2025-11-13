.class public Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ScreenTimeoutDockingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenTimeoutAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;,
        Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$RecyclerViewHolder;
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

.field mListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;J)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 196
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    .line 202
    iput-object p2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 203
    iput-object p3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mValues:[Ljava/lang/CharSequence;

    .line 204
    iput-wide p4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mCurrentTimeout:J

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->addScreenTimeoutListView()V

    return-void
.end method

.method private addScreenTimeoutList(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 261
    new-instance v0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;)V

    .line 262
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->setTitle(Ljava/lang/String;)V

    .line 263
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->setValue(Ljava/lang/String;)V

    .line 264
    iget-wide v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mCurrentTimeout:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 265
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->setChecked(Z)V

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private addScreenTimeoutListView()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 253
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->addScreenTimeoutList(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "ScreenTimeoutDockingActivity"

    const-string v0, "addScreenTimeoutListView failed"

    .line 256
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 295
    instance-of v0, p1, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$RecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 296
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$RecyclerViewHolder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    iput-object v1, v0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->mData:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    .line 297
    iget-object v1, v0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, v0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->getChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/CheckableLinearLayout;->setChecked(Z)V

    .line 299
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$1;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 287
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_screen_timeout_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 288
    new-instance p2, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$RecyclerViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$RecyclerViewHolder;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setChecked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 272
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-ne v1, p2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->setChecked(Z)V

    .line 275
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$RecyclerViewHolder;

    iget-object v2, v2, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->getChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/CheckableLinearLayout;->setChecked(Z)V

    .line 276
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mCurrentTimeout:J

    goto :goto_1

    .line 278
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->setChecked(Z)V

    .line 280
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
