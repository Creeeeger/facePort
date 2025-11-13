.class Lcom/android/internal/app/ChooserActivity$30;
.super Lcom/android/internal/widget/LinearLayoutManager;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->initGalleryRecyclerView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .line 12817
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$30;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method protected blacklist getExtraLayoutSpace(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 12820
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$30;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryRecyclerView(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public blacklist onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 12825
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V

    .line 12826
    return-void
.end method
