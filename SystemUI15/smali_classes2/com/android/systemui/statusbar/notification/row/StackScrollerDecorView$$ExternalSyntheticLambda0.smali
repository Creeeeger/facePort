.class public final synthetic Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindClearAllButton$2$3$1$1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->onContentVisibilityAnimationEnd()V

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->onContentVisibilityAnimationEnd()V

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
