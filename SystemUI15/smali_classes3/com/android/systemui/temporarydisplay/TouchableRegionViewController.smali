.class public final Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final internalInsetsListener:Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;

.field public final tempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;->tempRect:Landroid/graphics/Rect;

    new-instance p1, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;-><init>(Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;->internalInsetsListener:Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;

    return-void
.end method

.method public static final synthetic access$getMView$p$s-1353661746(Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final onViewAttached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;->internalInsetsListener:Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;->internalInsetsListener:Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method
