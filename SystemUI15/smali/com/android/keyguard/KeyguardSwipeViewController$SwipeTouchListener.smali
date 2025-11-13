.class public final Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSwipeViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSwipeViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;->this$0:Lcom/android/keyguard/KeyguardSwipeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;->this$0:Lcom/android/keyguard/KeyguardSwipeViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
