.class Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
.source "ToggleAccessibilityServiceTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget$StatusViewAlphaScale;
    }
.end annotation


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;-><init>(Landroid/content/Context;IILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1040160

    goto :goto_0

    :cond_0
    const v0, 0x104015f

    :goto_0
    nop

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->setStateDescription(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public blacklist onSelected()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x104015f

    goto :goto_0

    :cond_0
    const v0, 0x1040160

    :goto_0
    nop

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->setStateDescription(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->onSelected()V

    return-void
.end method

.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    nop

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getUid()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->isAccessibilityTargetAllowed(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getPrimaryDarkColorId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getSummaryColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    return-void
.end method
