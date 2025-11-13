.class public final Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->updateMarqueeValues()V

    return-void
.end method
