.class public final Lcom/android/keyguard/ClockEventController$connectClock$9$onViewAttachedToWindow$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $frame:Landroid/view/ViewGroup;

.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController$connectClock$9;

.field public final synthetic this$1:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/keyguard/ClockEventController$connectClock$9;Lcom/android/keyguard/ClockEventController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$connectClock$9$onViewAttachedToWindow$1$1;->$frame:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/keyguard/ClockEventController$connectClock$9$onViewAttachedToWindow$1$1;->this$0:Lcom/android/keyguard/ClockEventController$connectClock$9;

    iput-object p3, p0, Lcom/android/keyguard/ClockEventController$connectClock$9$onViewAttachedToWindow$1$1;->this$1:Lcom/android/keyguard/ClockEventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController$connectClock$9$onViewAttachedToWindow$1$1;->$frame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController$connectClock$9$onViewAttachedToWindow$1$1;->this$0:Lcom/android/keyguard/ClockEventController$connectClock$9;

    iget-object v1, v1, Lcom/android/keyguard/ClockEventController$connectClock$9;->pastVisibility:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/ClockEventController$connectClock$9$onViewAttachedToWindow$1$1;->this$0:Lcom/android/keyguard/ClockEventController$connectClock$9;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/keyguard/ClockEventController$connectClock$9;->pastVisibility:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController$connectClock$9$onViewAttachedToWindow$1$1;->this$1:Lcom/android/keyguard/ClockEventController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$connectClock$9$onViewAttachedToWindow$1$1;->this$1:Lcom/android/keyguard/ClockEventController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method
