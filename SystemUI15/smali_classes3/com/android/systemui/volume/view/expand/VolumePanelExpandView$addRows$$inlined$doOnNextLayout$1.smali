.class public final Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$addRows$$inlined$doOnNextLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$addRows$$inlined$doOnNextLayout$1;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$addRows$$inlined$doOnNextLayout$1;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    const p1, 0x7f0a0e75

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/HorizontalScrollView;

    const/16 p1, 0x42

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method
