.class public final Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$3$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$3$1$2;->this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$3$1$2;->this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->onTouch:Lkotlin/jvm/functions/Function3;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
