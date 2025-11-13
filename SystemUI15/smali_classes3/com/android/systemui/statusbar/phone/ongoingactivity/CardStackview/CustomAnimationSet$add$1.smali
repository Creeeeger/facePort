.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet$add$1;
.super Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/AnimatorListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet$add$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet$add$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->endCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet$add$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->data:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet$add$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->tryFinish()V

    :cond_0
    return-void
.end method
