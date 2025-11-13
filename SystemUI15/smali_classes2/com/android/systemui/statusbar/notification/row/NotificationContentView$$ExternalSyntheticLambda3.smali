.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda3;->f$1:Landroid/util/IndentingPrintWriter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/util/IndentingPrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda3;->f$1:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda3;->f$1:Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "measuredWidth"

    invoke-virtual {v0, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "measuredHeight"

    invoke-virtual {v0, v1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda3;->f$1:Landroid/util/IndentingPrintWriter;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    const-string v2, "Contracted Child:"

    invoke-static {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->dumpChildViewDimensions(Landroid/util/IndentingPrintWriter;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_1

    const-string v2, "Expanded Child:"

    invoke-static {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->dumpChildViewDimensions(Landroid/util/IndentingPrintWriter;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_2

    const-string v2, "HeadsUp Child:"

    invoke-static {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->dumpChildViewDimensions(Landroid/util/IndentingPrintWriter;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_3

    const-string v1, "Single Line  View:"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->dumpChildViewDimensions(Landroid/util/IndentingPrintWriter;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
