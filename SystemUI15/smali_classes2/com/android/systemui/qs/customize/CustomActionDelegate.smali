.class public final Lcom/android/systemui/qs/customize/CustomActionDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

.field public final mCustomActionView:Lcom/android/systemui/qs/customize/CustomActionView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/customize/CustomActionDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/CustomActionDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/customize/CustomActionView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomActionDelegate;->mCustomActionView:Lcom/android/systemui/qs/customize/CustomActionView;

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionDelegate;->mCustomActionView:Lcom/android/systemui/qs/customize/CustomActionView;

    check-cast p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomActionId;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomActionId;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/customize/CustomActionId;->getName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomActionDelegate;->mCustomActionView:Lcom/android/systemui/qs/customize/CustomActionView;

    check-cast v0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomActionId;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomActionId;->getId()I

    move-result v2

    if-ne v2, p2, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "performAccessibilityAction host="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", action="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CustomActionDelegate"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionDelegate;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/customize/CustomActionManager;->performAction(Landroid/view/View;Lcom/android/systemui/qs/customize/CustomActionId;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
