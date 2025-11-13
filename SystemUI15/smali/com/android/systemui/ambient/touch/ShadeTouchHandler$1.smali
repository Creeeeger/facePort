.class public final Lcom/android/systemui/ambient/touch/ShadeTouchHandler$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ambient/touch/ShadeTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ambient/touch/ShadeTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$1;->this$0:Lcom/android/systemui/ambient/touch/ShadeTouchHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$1;->this$0:Lcom/android/systemui/ambient/touch/ShadeTouchHandler;

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mCapture:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$1;->this$0:Lcom/android/systemui/ambient/touch/ShadeTouchHandler;

    iget-object v1, v0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mCapture:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p3, v1, p3

    if-lez p3, :cond_0

    const/4 p3, 0x0

    cmpg-float p3, p4, p3

    if-gez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, v0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mCapture:Ljava/lang/Boolean;

    iget-object p3, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$1;->this$0:Lcom/android/systemui/ambient/touch/ShadeTouchHandler;

    iget-object p3, p3, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mCapture:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$1;->this$0:Lcom/android/systemui/ambient/touch/ShadeTouchHandler;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->communalHub()V

    iget-object p3, p3, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {p3, p1}, Lcom/android/systemui/shade/ShadeViewController;->handleExternalTouch(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$1;->this$0:Lcom/android/systemui/ambient/touch/ShadeTouchHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->communalHub()V

    iget-object p1, p1, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {p1, p2}, Lcom/android/systemui/shade/ShadeViewController;->handleExternalTouch(Landroid/view/MotionEvent;)Z

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$1;->this$0:Lcom/android/systemui/ambient/touch/ShadeTouchHandler;

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mCapture:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
