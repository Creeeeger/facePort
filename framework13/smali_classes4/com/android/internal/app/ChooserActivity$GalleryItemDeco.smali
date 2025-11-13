.class Lcom/android/internal/app/ChooserActivity$GalleryItemDeco;
.super Lcom/android/internal/widget/RecyclerView$ItemDecoration;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryItemDeco"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 13317
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$GalleryItemDeco;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p4, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 13320
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 13321
    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13322
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 13323
    .local v1, "viewWidth":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " viewWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GalleryShareSheet"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13324
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 13325
    .local v2, "xPos":I
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_1

    .line 13326
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_0

    .line 13327
    iput v2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 13329
    :cond_0
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 13332
    :cond_1
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    .line 13333
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_2

    .line 13334
    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 13336
    :cond_2
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 13339
    :cond_3
    :goto_1
    return-void
.end method
