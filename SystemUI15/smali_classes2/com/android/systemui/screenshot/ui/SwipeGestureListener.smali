.class public final Lcom/android/systemui/screenshot/ui/SwipeGestureListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final displayMetrics:Landroid/util/DisplayMetrics;

.field public final onCancel:Lkotlin/jvm/functions/Function0;

.field public final onDismiss:Lkotlin/jvm/functions/Function1;

.field public startX:F

.field public final velocityTracker:Landroid/view/VelocityTracker;

.field public final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/ui/SwipeGestureListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->onDismiss:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->onCancel:Lkotlin/jvm/functions/Function0;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;->displayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method
