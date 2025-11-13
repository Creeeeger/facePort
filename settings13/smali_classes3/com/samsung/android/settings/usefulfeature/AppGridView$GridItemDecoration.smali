.class public Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/AppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridItemDecoration"
.end annotation


# instance fields
.field private mDensity:F

.field private mIncludeEdge:Z

.field private mSpacing:I

.field private mSpacingTop:I

.field private mSpanCount:I

.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/AppGridView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/AppGridView;IIZ)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;->this$0:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 106
    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;->mSpanCount:I

    .line 107
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;->mDensity:F

    int-to-float p2, p3

    mul-float/2addr p2, p1

    float-to-int p2, p2

    .line 108
    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;->mSpacing:I

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 109
    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;->mSpacingTop:I

    .line 110
    iput-boolean p4, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;->mIncludeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 114
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 115
    iget p4, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;->mSpanCount:I

    rem-int v0, p2, p4

    .line 116
    iget-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;->mIncludeEdge:Z

    if-eqz v1, :cond_1

    .line 117
    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;->mSpacing:I

    mul-int v2, v0, v1

    div-int/2addr v2, p4

    sub-int v2, v1, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    .line 118
    div-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->right:I

    if-ge p2, p4, :cond_0

    .line 120
    iget p2, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;->mSpacingTop:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 122
    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;->mSpacingTop:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 124
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 125
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 126
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 127
    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 130
    :cond_1
    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/AppGridView$GridItemDecoration;->mSpacing:I

    mul-int p2, v0, p0

    div-int/2addr p2, p4

    iput p2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p0

    .line 131
    div-int/2addr v0, p4

    sub-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_2
    :goto_0
    return-void
.end method
