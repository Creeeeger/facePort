.class Lcom/android/systemui/util/ViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/ViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/ViewController$1;->this$0:Lcom/android/systemui/util/ViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController$1;->this$0:Lcom/android/systemui/util/ViewController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->onViewAttached()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController$1;->this$0:Lcom/android/systemui/util/ViewController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->onViewDetached()V

    return-void
.end method
