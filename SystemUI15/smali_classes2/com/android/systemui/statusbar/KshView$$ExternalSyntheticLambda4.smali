.class public final synthetic Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KshView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KshView;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/KshView;

    iput p2, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/KshView;

    iget v1, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    iput v1, v0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    iget-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/KshView;->getLabel(ILjava/util/List;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f130803

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/android/systemui/statusbar/KshView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method
