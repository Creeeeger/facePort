.class Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$6;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    .line 3933
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$6;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 3936
    sget p1, Lcom/android/settings/R$id;->filter_all:I

    if-ne p2, p1, :cond_0

    .line 3937
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$6;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fputmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;)V

    goto :goto_0

    .line 3938
    :cond_0
    sget p1, Lcom/android/settings/R$id;->filter_enable:I

    if-ne p2, p1, :cond_1

    .line 3939
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$6;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fputmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;)V

    goto :goto_0

    .line 3940
    :cond_1
    sget p1, Lcom/android/settings/R$id;->filter_disable:I

    if-ne p2, p1, :cond_2

    .line 3941
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$6;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fputmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;)V

    :cond_2
    :goto_0
    return-void
.end method
