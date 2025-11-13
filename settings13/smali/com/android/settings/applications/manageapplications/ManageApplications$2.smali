.class Lcom/android/settings/applications/manageapplications/ManageApplications$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateAfterResetApps()V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmApplications(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 822
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
