.class public final Landroidx/appcompat/widget/TooltipPopup$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/TooltipPopup;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/TooltipPopup;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup$1;->this$0:Landroidx/appcompat/widget/TooltipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup$1;->this$0:Landroidx/appcompat/widget/TooltipPopup;

    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->hide()V

    return v0

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup$1;->this$0:Landroidx/appcompat/widget/TooltipPopup;

    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->hide()V

    const/4 p0, 0x1

    return p0
.end method
