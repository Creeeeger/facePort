.class public final synthetic Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPagerItems:[Landroid/view/View;

    array-length v0, v0

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
