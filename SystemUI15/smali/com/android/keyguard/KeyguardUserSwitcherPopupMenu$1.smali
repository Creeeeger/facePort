.class public final Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu$1;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$height:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu$1;->val$height:I

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    const/4 p1, 0x1

    iget p2, p0, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu$1;->val$height:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
