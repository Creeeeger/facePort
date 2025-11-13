.class Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;
.super Ljava/lang/Object;
.source "SecCycleEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;->this$0:Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;->this$0:Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->-$$Nest$fgetmAnchorView(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;)Landroidx/preference/SecPreference;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->-$$Nest$mupdateDialogAnchorView(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method
