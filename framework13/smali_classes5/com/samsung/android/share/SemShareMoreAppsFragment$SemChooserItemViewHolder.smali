.class final Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "SemShareMoreAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareMoreAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SemChooserItemViewHolder"
.end annotation


# instance fields
.field blacklist mPosition:I

.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/share/SemShareMoreAppsFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/share/SemShareMoreAppsFragment;
    .param p2, "view"    # Landroid/view/View;

    .line 330
    iput-object p1, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;->this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;

    .line 331
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 333
    new-instance v0, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$new$0$com-samsung-android-share-SemShareMoreAppsFragment$SemChooserItemViewHolder(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 334
    iget-object v0, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;->this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 335
    .local v0, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mSelectedViewholder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 336
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mExifViewholder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;->this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;

    iget v2, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;->mPosition:I

    invoke-static {v1, v2}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->-$$Nest$mgetListPosition(Lcom/samsung/android/share/SemShareMoreAppsFragment;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    .line 340
    return-void
.end method
