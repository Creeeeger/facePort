.class public final Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

.field public final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;->this$0:Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;->this$0:Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mAnchorView:Landroidx/preference/SecPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p3, p1}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method
