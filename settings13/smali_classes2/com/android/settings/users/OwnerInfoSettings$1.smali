.class Lcom/android/settings/users/OwnerInfoSettings$1;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/OwnerInfoSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/OwnerInfoSettings;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings$1;->this$0:Lcom/android/settings/users/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 84
    invoke-static {}, Lcom/android/settings/users/OwnerInfoSettings;->-$$Nest$sfgetmDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/settings/users/OwnerInfoSettings;->-$$Nest$sfgetmDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/settings/users/OwnerInfoSettings$1;->this$0:Lcom/android/settings/users/OwnerInfoSettings;

    invoke-static {p0}, Lcom/android/settings/users/OwnerInfoSettings;->-$$Nest$fgetmPreference(Lcom/android/settings/users/OwnerInfoSettings;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/users/OwnerInfoSettings;->-$$Nest$sfgetmDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/users/OwnerInfoSettings;->-$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/OwnerInfoSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
