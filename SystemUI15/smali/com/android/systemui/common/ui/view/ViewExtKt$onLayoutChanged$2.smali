.class public final Lcom/android/systemui/common/ui/view/ViewExtKt$onLayoutChanged$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic $listener:Landroid/view/View$OnLayoutChangeListener;

.field public final synthetic $this_onLayoutChanged:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/common/ui/view/ViewExtKt$onLayoutChanged$2;->$this_onLayoutChanged:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/common/ui/view/ViewExtKt$onLayoutChanged$2;->$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/common/ui/view/ViewExtKt$onLayoutChanged$2;->$this_onLayoutChanged:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/common/ui/view/ViewExtKt$onLayoutChanged$2;->$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
