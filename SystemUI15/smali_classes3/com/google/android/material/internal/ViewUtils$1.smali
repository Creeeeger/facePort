.class public final Lcom/google/android/material/internal/ViewUtils$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

.field public final synthetic val$paddingBottomSystemWindowInsets:Z

.field public final synthetic val$paddingLeftSystemWindowInsets:Z

.field public final synthetic val$paddingRightSystemWindowInsets:Z


# direct methods
.method public constructor <init>(ZZZLcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/material/internal/ViewUtils$1;->val$paddingBottomSystemWindowInsets:Z

    iput-boolean p2, p0, Lcom/google/android/material/internal/ViewUtils$1;->val$paddingLeftSystemWindowInsets:Z

    iput-boolean p3, p0, Lcom/google/android/material/internal/ViewUtils$1;->val$paddingRightSystemWindowInsets:Z

    iput-object p4, p0, Lcom/google/android/material/internal/ViewUtils$1;->val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/internal/ViewUtils$1;->val$paddingBottomSystemWindowInsets:Z

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/material/internal/ViewUtils$1;->val$paddingLeftSystemWindowInsets:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    goto :goto_0

    :cond_1
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/internal/ViewUtils$1;->val$paddingRightSystemWindowInsets:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    goto :goto_1

    :cond_3
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    :cond_4
    :goto_1
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    iget v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$1;->val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p2

    :cond_5
    return-object p2
.end method
