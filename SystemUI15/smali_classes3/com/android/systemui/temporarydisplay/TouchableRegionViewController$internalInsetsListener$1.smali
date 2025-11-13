.class public final Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# instance fields
.field public final synthetic $touchableRegionSetter:Lkotlin/jvm/functions/Function2;

.field public final synthetic this$0:Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;->this$0:Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;

    iput-object p2, p0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;->$touchableRegionSetter:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;->this$0:Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;

    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;->$touchableRegionSetter:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;->this$0:Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;

    invoke-static {v1}, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;->access$getMView$p$s-1353661746(Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;->this$0:Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;

    iget-object v2, v2, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;->tempRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController$internalInsetsListener$1;->this$0:Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    return-void
.end method
