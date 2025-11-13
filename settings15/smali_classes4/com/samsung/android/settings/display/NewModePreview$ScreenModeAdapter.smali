.class public final Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListItems:Ljava/util/List;

.field public final mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

.field public final mSelectValue:I

.field public final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/content/Context;Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    iput p4, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mSelectValue:I

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p3, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mNameStringId:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p4, p3, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mNameStringId:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p3, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mDBValue:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mListItemTitle:Ljava/lang/String;

    iput p4, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mListItemValue:I

    iget p2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mSelectValue:I

    if-ne p4, p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mIsChecked:Z

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "ModePreview"

    const-string p1, "addScreenModeListView failed"

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;

    iget-object v1, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    iget-object v2, v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mListItemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mCheckBoxView:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    iget-boolean v1, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;-><init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    const p0, 0x7f0d098f

    const/4 p2, 0x0

    invoke-static {p1, p0, p1, p2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p2, 0x7f0a0d09

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/TextView;

    const p2, 0x7f0a030e

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    iput-object p0, p1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mCheckBoxView:Landroid/widget/RadioButton;

    return-object p1
.end method
