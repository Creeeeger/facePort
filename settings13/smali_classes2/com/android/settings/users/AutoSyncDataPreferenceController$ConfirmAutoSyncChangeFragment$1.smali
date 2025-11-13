.class Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment$1;
.super Ljava/lang/Object;
.source "AutoSyncDataPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 245
    iget-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;

    iget-object p1, p1, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;

    iget-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mPreference:Landroidx/preference/SecSwitchPreference;

    iget-object p2, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mDialog:Landroid/app/Dialog;

    invoke-static {p0, p1, p2}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
