.class Lcom/samsung/android/settings/widget/SecRoundButtonView$2;
.super Ljava/lang/Object;
.source "SecRoundButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/widget/SecRoundButtonView;->setTouchDelegateForTarget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

.field final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/SecRoundButtonView;Landroid/view/View;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 71
    new-instance v0, Landroidx/core/view/SeslTouchTargetDelegate;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->val$parentView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroidx/core/view/SeslTouchTargetDelegate;-><init>(Landroid/view/View;)V

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 74
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 75
    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->val$parentView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 76
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {v2}, Landroid/widget/Button;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 80
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    .line 81
    invoke-static {v1, v1, v1, v1}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v2, v1}, Landroidx/core/view/SeslTouchTargetDelegate;->addTouchDelegate(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)Landroid/view/TouchDelegate;

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;->val$parentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
