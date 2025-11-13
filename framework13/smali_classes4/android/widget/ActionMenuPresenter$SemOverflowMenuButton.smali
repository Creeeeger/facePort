.class abstract Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.super Landroid/widget/TextView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SemOverflowMenuButton"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .line 1245
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1246
    const/4 p1, 0x0

    const v0, 0x10102f6

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1248
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setClickable(Z)V

    .line 1249
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setFocusable(Z)V

    .line 1250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setVisibility(I)V

    .line 1251
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setEnabled(Z)V

    .line 1253
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->semSetButtonShapeEnabled(Z)V

    .line 1255
    return-void
.end method


# virtual methods
.method abstract blacklist getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 0

    .line 1273
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1260
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1261
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    const/4 v2, 0x0

    const v3, 0x10102f6

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1264
    .local v0, "a":Landroid/content/res/TypedArray;
    nop

    .line 1265
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1264
    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1266
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1267
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1278
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1279
    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1280
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 1281
    return-void
.end method

.method abstract blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.end method
