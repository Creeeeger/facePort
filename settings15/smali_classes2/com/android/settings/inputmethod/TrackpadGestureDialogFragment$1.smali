.class public final Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;

.field public final synthetic val$behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field public final synthetic val$contentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;Landroid/view/View;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$1;->this$0:Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$1;->val$contentView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$1;->val$behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$1;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$1;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$1;->this$0:Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;

    iget-object v1, v1, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    iget-object p0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$1;->val$behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    return-void
.end method
