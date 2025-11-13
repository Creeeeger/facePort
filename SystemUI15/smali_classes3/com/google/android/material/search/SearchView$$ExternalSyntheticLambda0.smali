.class public final synthetic Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroidx/core/view/WindowInsetsCompat;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    iget-object p2, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda0;->f$1:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v0

    iget p0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda0;->f$2:I

    add-int/2addr v0, p0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-object p1
.end method
