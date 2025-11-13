.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Ljava/lang/String;Ljava/lang/String;ZLcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$3:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Ljava/lang/String;ZLcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$3:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$3:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    const-string v4, "ANIMATION_TYPE_HEADS_UP_CYCLING_OUT"

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;->animationEnd(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInRemovalAnimation:Z

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$3:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;->f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;->animationStart(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInRemovalAnimation:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
