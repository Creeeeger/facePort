.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInRemovalAnimation:Z

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInRemovalAnimation:Z

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
