.class public final synthetic Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/Dialog;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p3

    div-int/lit8 p0, p0, 0x2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p0, p2}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_0
    return-void
.end method
