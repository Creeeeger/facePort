.class public final Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapCount:I

    return-void
.end method
