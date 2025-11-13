.class public final synthetic Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/widget/TooltipCompatHandler;

.field public final synthetic f$1:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/TooltipCompatHandler;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    iput-object p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/Resources;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iget p3, p1, Landroidx/appcompat/widget/TooltipCompatHandler;->mLastOrientation:I

    if-eq p2, p3, :cond_0

    iget-object p2, p1, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    iput p0, p1, Landroidx/appcompat/widget/TooltipCompatHandler;->mLastOrientation:I

    return-void
.end method
