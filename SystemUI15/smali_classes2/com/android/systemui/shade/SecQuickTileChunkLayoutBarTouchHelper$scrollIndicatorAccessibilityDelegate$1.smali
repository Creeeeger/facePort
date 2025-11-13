.class public final Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$scrollIndicatorAccessibilityDelegate$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$scrollIndicatorAccessibilityDelegate$1;->this$0:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/16 p0, 0x10

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const-class p0, Landroid/widget/Button;

    const-string p0, "android.widget.Button"

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$scrollIndicatorAccessibilityDelegate$1;->this$0:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->forceToggleBar()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
