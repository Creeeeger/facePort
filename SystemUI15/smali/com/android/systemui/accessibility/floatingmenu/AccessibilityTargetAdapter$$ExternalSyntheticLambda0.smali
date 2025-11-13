.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;

.field public final synthetic f$1:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x29

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->onSelected()V

    return-void
.end method
