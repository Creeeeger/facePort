.class Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EasySetupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/EasySetupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EasySetupViewHolder"
.end annotation


# instance fields
.field private mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private mIcon:Landroid/widget/ImageView;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mView:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/EasySetupListAdapter;Landroid/view/View;)V
    .locals 1

    .line 129
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->this$0:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

    .line 130
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 131
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mView:Landroid/view/View;

    .line 132
    sget v0, Lcom/android/settings/R$id;->wifi_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 133
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mTitle:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mSummary:Landroid/widget/TextView;

    .line 135
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$drawable;->wifi_signal:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    return-void
.end method
