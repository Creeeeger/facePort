.class public final Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserMoreAppsAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "SemShareMoreAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareMoreAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SemChooserMoreAppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/share/SemShareMoreAppsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/SemShareMoreAppsFragment;

    .line 270
    iput-object p1, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserMoreAppsAdapter;->this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;

    .line 271
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 272
    return-void
.end method


# virtual methods
.method blacklist bindItemViewHolder(ILcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;

    .line 295
    iget-object v0, p2, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;->itemView:Landroid/view/View;

    .line 296
    .local v0, "v":Landroid/view/View;
    iput p1, p2, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;->mPosition:I

    .line 297
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserMoreAppsAdapter;->this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->-$$Nest$fgetmChooserListAdapter(Lcom/samsung/android/share/SemShareMoreAppsFragment;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserMoreAppsAdapter;->this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;

    invoke-static {v2, p1}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->-$$Nest$mgetListPosition(Lcom/samsung/android/share/SemShareMoreAppsFragment;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 298
    return-void
.end method

.method public blacklist getItemCount()I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserMoreAppsAdapter;->this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->-$$Nest$fgetmChooserListAdapter(Lcom/samsung/android/share/SemShareMoreAppsFragment;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetSortedTargetCount()I

    move-result v0

    return v0
.end method

.method public blacklist getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 291
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserMoreAppsAdapter;->bindItemViewHolder(ILcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;)V

    .line 292
    return-void
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 286
    new-instance v0, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserMoreAppsAdapter;->this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->-$$Nest$fgetmChooserListAdapter(Lcom/samsung/android/share/SemShareMoreAppsFragment;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserListAdapter;->createViewForSelectApp(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;-><init>(Lcom/samsung/android/share/SemShareMoreAppsFragment;Landroid/view/View;)V

    return-object v0
.end method
