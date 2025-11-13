.class public final synthetic Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/ambient/touch/TouchMonitor$Evaluator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/MotionEvent;

.field public final synthetic f$1:Landroid/view/MotionEvent;

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFI)V
    .locals 0

    iput p5, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->f$0:Landroid/view/MotionEvent;

    iput-object p2, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->f$1:Landroid/view/MotionEvent;

    iput p3, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->f$2:F

    iput p4, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->f$3:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(Landroid/view/GestureDetector$OnGestureListener;)Z
    .locals 3

    iget v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->f$0:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->f$1:Landroid/view/MotionEvent;

    iget v2, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->f$2:F

    iget p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->f$3:F

    invoke-interface {p1, v0, v1, v2, p0}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->f$0:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->f$1:Landroid/view/MotionEvent;

    iget v2, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->f$2:F

    iget p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;->f$3:F

    invoke-interface {p1, v0, v1, v2, p0}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
