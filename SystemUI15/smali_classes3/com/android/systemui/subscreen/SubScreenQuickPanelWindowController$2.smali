.class public final Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mQSPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    iget-object v2, v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mQSPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mQSPanel:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-object p2
.end method
