.class public final Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic $lifecycleOwner:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $onAttachListener:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;

.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/lifecycle/ViewLifecycleOwner;",
            ">;",
            "Landroid/view/View;",
            "Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;->$lifecycleOwner:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;->$onAttachListener:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;->$lifecycleOwner:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->onDestroy()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;->$view:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;->$onAttachListener:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
