.class public final Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowFocusListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/lifecycle/ViewLifecycleOwner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/lifecycle/ViewLifecycleOwner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowFocusListener$1;->this$0:Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowFocusListener$1;->this$0:Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    invoke-virtual {p0}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->updateState$1()V

    return-void
.end method
