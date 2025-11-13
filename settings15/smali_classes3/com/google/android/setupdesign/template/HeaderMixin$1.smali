.class public final Lcom/google/android/setupdesign/template/HeaderMixin$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupdesign/template/HeaderMixin;

.field public final synthetic val$titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/template/HeaderMixin;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/HeaderMixin$1;->this$0:Lcom/google/android/setupdesign/template/HeaderMixin;

    iput-object p2, p0, Lcom/google/android/setupdesign/template/HeaderMixin$1;->val$titleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin$1;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin$1;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin$1;->this$0:Lcom/google/android/setupdesign/template/HeaderMixin;

    iget v2, v1, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMaxLineOfMaxSize:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin$1;->val$titleView:Landroid/widget/TextView;

    iget v1, v1, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMinTextSizeInPx:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/google/android/setupdesign/template/HeaderMixin$1;->val$titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/setupdesign/template/HeaderMixin$1;->this$0:Lcom/google/android/setupdesign/template/HeaderMixin;

    iget v3, v1, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeLineExtraSpacingInPx:F

    iget v1, v1, Lcom/google/android/setupdesign/template/HeaderMixin;->headerAutoSizeMinTextSizeInPx:F

    add-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLineHeight(I)V

    iget-object p0, p0, Lcom/google/android/setupdesign/template/HeaderMixin$1;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
