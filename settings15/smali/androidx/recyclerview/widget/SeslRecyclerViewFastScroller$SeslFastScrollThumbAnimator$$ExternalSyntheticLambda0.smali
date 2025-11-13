.class public final synthetic Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;I)V
    .locals 0

    iput p2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mBgDrawable:Landroidx/recyclerview/sesl/drawable/SeslFastScrollerBgDrawable;

    iget-object v0, p0, Landroidx/recyclerview/sesl/drawable/SeslFastScrollerBgDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mMaxWidthPx:F

    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mMinWidthPx:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mBgDrawable:Landroidx/recyclerview/sesl/drawable/SeslFastScrollerBgDrawable;

    iput p1, p0, Landroidx/recyclerview/sesl/drawable/SeslFastScrollerBgDrawable;->value:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
