.class public final Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final view:Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout$MyGestureListener;->view:Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;

    return-void
.end method


# virtual methods
.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "TouchInterceptFrameLayout"

    const-string v0, "onTouchEvent onSingleTapUp"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout$MyGestureListener;->view:Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;->customClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    :cond_1
    return v0
.end method
