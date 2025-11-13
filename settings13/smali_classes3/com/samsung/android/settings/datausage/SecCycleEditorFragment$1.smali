.class Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$1;
.super Ljava/lang/Object;
.source "SecCycleEditorFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$1;->this$0:Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$1;->this$0:Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->-$$Nest$fgetmCycleDayPicker(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;)Landroidx/picker/widget/SeslNumberPicker;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :goto_0
    return p1
.end method
