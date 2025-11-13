.class Lcom/android/settings/EditPinPreference$1;
.super Ljava/lang/Object;
.source "EditPinPreference.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/EditPinPreference;->updateDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/EditPinPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/EditPinPreference;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settings/EditPinPreference$1;->this$0:Lcom/android/settings/EditPinPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/android/settings/EditPinPreference$1;->this$0:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p0, p0, Lcom/android/settings/EditPinPreference$1;->this$0:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/EditPinPreference;->setDialogLocation(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
