.class public final Lcom/samsung/android/settings/display/AspectRatioFragment$4$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$2:Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;

.field public final synthetic val$globalLayoutRequester:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1$1;->this$2:Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1$1;->val$globalLayoutRequester:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1$1;->val$globalLayoutRequester:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1$1;->this$2:Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1$1;->this$2:Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    return-void
.end method
