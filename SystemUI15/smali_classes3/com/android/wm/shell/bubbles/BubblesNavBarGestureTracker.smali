.class public final Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mInputEventReceiver:Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    return-void
.end method
