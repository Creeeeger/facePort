.class public final Lcom/android/settings/users/OwnerInfoSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/users/OwnerInfoSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/users/OwnerInfoSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings$1;->this$0:Lcom/android/settings/users/OwnerInfoSettings;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sget-object p1, Lcom/android/settings/users/OwnerInfoSettings;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/users/OwnerInfoSettings$1;->this$0:Lcom/android/settings/users/OwnerInfoSettings;

    iget-object p0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mPreference:Landroidx/preference/Preference;

    sget-object p1, Lcom/android/settings/users/OwnerInfoSettings;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p0, p1}, Lcom/android/settings/users/OwnerInfoSettings;->updateDialogAnchorView$5(Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V

    :cond_0
    return-void
.end method
