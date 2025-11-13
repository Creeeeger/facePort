.class public final Lcom/google/android/material/datepicker/MaterialDatePicker$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic val$headerLayout:Landroid/view/View;

.field public final synthetic val$originalHeaderHeight:I

.field public final synthetic val$originalPaddingTop:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;ILandroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalHeaderHeight:I

    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    iput p4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalPaddingTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroidx/core/view/WindowInsetsCompat;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    iget-object p2, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    iget p2, p2, Landroidx/core/graphics/Insets;->top:I

    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalHeaderHeight:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    add-int/2addr v0, p2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalPaddingTop:I

    add-int/2addr v2, p2

    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, p2, p0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method
