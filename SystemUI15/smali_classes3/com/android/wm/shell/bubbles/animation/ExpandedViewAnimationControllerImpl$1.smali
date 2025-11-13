.class public final Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    iget p0, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    sget-object p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->COLLAPSE_HEIGHT_PROPERTY:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$1;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->setCollapsedAmount(F)V

    return-void
.end method
