.class public Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FontListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/flipfont/FontListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewHolder"
.end annotation


# instance fields
.field mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

.field mTitleView:Landroid/widget/CheckedTextView;

.field final synthetic this$0:Lcom/samsung/android/settings/flipfont/FontListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/flipfont/FontListAdapter;Landroid/view/View;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->this$0:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 361
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x1020014

    .line 362
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/CheckedTextView;

    .line 363
    sget p1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/CheckableLinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    return-void
.end method
