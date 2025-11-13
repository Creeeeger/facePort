.class public final Lcom/android/settings/accessibility/ColorSelectorLayout$CheckedStateTracker;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/ColorSelectorLayout;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ColorSelectorLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout$CheckedStateTracker;->this$0:Lcom/android/settings/accessibility/ColorSelectorLayout;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/settings/accessibility/ColorSelectorLayout$CheckedStateTracker;->this$0:Lcom/android/settings/accessibility/ColorSelectorLayout;

    iget v0, p2, Lcom/android/settings/accessibility/ColorSelectorLayout;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/accessibility/ColorSelectorLayout$CheckedStateTracker;->this$0:Lcom/android/settings/accessibility/ColorSelectorLayout;

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/ColorSelectorLayout;->-$$Nest$msetCheckedId(Lcom/android/settings/accessibility/ColorSelectorLayout;I)V

    return-void
.end method
