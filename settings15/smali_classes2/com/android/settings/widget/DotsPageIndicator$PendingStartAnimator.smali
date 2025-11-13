.class public abstract Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
.super Landroid/animation/ValueAnimator;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public hasStarted:Z

.field public final predicate:Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->predicate:Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->hasStarted:Z

    return-void
.end method


# virtual methods
.method public final startIfNecessary(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->hasStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->predicate:Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget v0, v0, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;->thresholdValue:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :pswitch_0
    iget v0, v0, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;->thresholdValue:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->hasStarted:Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
