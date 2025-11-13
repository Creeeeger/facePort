.class Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;
.super Ljava/lang/Object;
.source "InteractAcrossProfilesDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->showConsentDialogSec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;->this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;->this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;

    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->-$$Nest$fgetmDialog(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 350
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;->this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->-$$Nest$fputmDialog(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;Landroidx/appcompat/app/AlertDialog;)V

    :cond_0
    return-void
.end method
