.class Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$2;
.super Ljava/lang/Object;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$2;->this$0:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 780
    invoke-static {}, Lcom/android/settings/datausage/BillingCycleSettings;->-$$Nest$sfgetmAnchorView()Landroidx/preference/SecPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p1, p0}, Lcom/android/settings/datausage/BillingCycleSettings;->-$$Nest$smupdateDialogAnchorView(Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method
