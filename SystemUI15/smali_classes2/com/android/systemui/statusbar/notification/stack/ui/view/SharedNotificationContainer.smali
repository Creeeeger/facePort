.class public final Lcom/android/systemui/statusbar/notification/stack/ui/view/SharedNotificationContainer;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final baseConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    move-result p2

    or-int/lit8 p2, p2, 0x40

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOptimizationLevel(I)V

    const/4 p2, 0x1

    const v0, 0x7f0a082c

    invoke-virtual {p1, v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->create(II)V

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
