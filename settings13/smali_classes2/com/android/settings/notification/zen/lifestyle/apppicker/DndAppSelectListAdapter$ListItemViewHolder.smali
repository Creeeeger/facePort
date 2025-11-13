.class public Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DndAppSelectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItemViewHolder"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mItem:Landroid/widget/LinearLayout;

.field private mRemoveIcon:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIcon(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoveIcon(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->mRemoveIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    sget v0, Lcom/android/settings/R$id;->grid_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->mItem:Landroid/widget/LinearLayout;

    .line 108
    sget v0, Lcom/android/settings/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/android/settings/R$id;->app_icon_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 110
    sget v0, Lcom/android/settings/R$id;->remove_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->mRemoveIcon:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter$ListItemViewHolder;->mItem:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
