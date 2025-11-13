.class public Lcom/samsung/android/settings/accessibility/base/widget/ContainedButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/base/widget/LimitedScale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/accessibility/base/widget/ContainedButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400ce

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/accessibility/base/widget/ContainedButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x5

    invoke-virtual {p0}, Landroid/widget/Button;->getTextSize()F

    move-result p3

    invoke-static {p3, p2, p1}, Lcom/samsung/android/settings/accessibility/base/widget/LimitedScale;->calculateSize(FILandroid/content/Context;)F

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    return-void
.end method
