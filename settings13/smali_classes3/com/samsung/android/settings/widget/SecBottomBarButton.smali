.class public Lcom/samsung/android/settings/widget/SecBottomBarButton;
.super Landroid/widget/Button;
.source "SecBottomBarButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 33
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method
