.class public final Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$1;->this$0:Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    const/4 p3, 0x0

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$1;->this$0:Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p3}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :goto_0
    return p3
.end method
