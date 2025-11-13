.class Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field final synthetic blacklist val$column:I

.field final synthetic blacklist val$holder:Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 6194
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->val$holder:Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->val$column:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 6198
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mSelectedViewholder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 6199
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v0, :cond_0

    .line 6200
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mExifViewholder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 6203
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->val$holder:Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->val$column:I

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    .line 6204
    return-void
.end method
