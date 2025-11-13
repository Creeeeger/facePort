.class public final Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$2;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;

.field public final synthetic val$behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$2;->this$0:Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$2;->val$behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-void
.end method


# virtual methods
.method public final onSlide(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onStateChanged(Landroid/view/View;I)V
    .locals 1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    iget-object p2, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$2;->this$0:Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;

    iget-object p2, p2, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e00ef

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$2;->val$behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState$1(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState$1(I)V

    :cond_2
    :goto_1
    return-void
.end method
