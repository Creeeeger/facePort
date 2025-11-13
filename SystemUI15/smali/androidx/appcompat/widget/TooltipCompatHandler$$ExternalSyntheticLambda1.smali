.class public final synthetic Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/appcompat/widget/TooltipCompatHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/TooltipCompatHandler;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->show(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
