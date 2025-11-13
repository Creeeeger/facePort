.class public final Landroidx/appcompat/widget/TooltipCompatHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/TooltipCompatHandler;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler$1;->this$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler$1;->this$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isHovered()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TooltipCompatHandler"

    const-string v1, "isHovered is false. Hide!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipCompatHandler$1;->this$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    :cond_0
    return-void
.end method
