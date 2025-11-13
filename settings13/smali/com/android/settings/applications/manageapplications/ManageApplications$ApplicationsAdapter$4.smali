.class Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$4;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->initDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

.field final synthetic val$dialogSwitchSection:Landroid/widget/LinearLayout;

.field final synthetic val$isSystemSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Landroid/widget/Switch;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 3883
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$4;->val$isSystemSwitch:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$4;->val$dialogSwitchSection:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 3886
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$4;->val$isSystemSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3887
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$4;->val$dialogSwitchSection:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_menu_show_system:I

    .line 3888
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$4;->val$isSystemSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getContentDescriptionWithSwitch(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 3887
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
