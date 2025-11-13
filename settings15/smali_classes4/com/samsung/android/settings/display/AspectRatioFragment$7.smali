.class public final Lcom/samsung/android/settings/display/AspectRatioFragment$7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$7;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$7;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$7;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$7;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$7;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method
