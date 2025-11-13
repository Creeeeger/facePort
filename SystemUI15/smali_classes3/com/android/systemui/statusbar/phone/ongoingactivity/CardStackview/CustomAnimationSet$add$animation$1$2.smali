.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet$add$animation$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet$add$animation$1$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet$add$animation$1$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->endCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->data:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CustomAnimationSet;->tryFinish()V

    :cond_0
    return-void
.end method
