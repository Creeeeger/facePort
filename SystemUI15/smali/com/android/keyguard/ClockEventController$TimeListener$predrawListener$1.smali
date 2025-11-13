.class public final Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController$TimeListener;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController$TimeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;->this$0:Lcom/android/keyguard/ClockEventController$TimeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;->this$0:Lcom/android/keyguard/ClockEventController$TimeListener;

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->clockFace:Lcom/android/systemui/plugins/clocks/ClockFaceController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onTimeTick()V

    const/4 p0, 0x1

    return p0
.end method
