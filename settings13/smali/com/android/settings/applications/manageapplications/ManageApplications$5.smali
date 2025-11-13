.class Lcom/android/settings/applications/manageapplications/ManageApplications$5;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

.field final synthetic val$order:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;I)V
    .locals 0

    .line 1924
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$5;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iput p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$5;->val$order:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1927
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$5;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$5;->val$order:I

    iput p0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    return-void
.end method
