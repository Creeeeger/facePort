.class public final Lcom/samsung/android/settings/widget/SecRoundButtonView$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

.field public final synthetic val$parentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/widget/SecRoundButtonView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->val$parentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroidx/core/view/SeslTouchTargetDelegate;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->val$parentView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroidx/core/view/SeslTouchTargetDelegate;-><init>(Landroid/view/View;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->val$parentView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {v2}, Landroid/widget/Button;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-static {v1, v1, v1, v1}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/core/view/SeslTouchTargetDelegate;->addTouchDelegate(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)V

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->val$parentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
