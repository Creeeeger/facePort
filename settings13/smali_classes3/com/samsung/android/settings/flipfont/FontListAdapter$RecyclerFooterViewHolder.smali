.class public Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerFooterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FontListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/flipfont/FontListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerFooterViewHolder"
.end annotation


# instance fields
.field mFooterView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/settings/flipfont/FontListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/flipfont/FontListAdapter;Landroid/view/View;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerFooterViewHolder;->this$0:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 371
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 372
    iput-object p2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerFooterViewHolder;->mFooterView:Landroid/view/View;

    return-void
.end method
