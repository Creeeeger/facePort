.class Lcom/android/settings/applications/manageapplications/ManageApplications$3;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    .line 1881
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$3;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1884
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$3;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iput p2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 1886
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1890
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$3;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    const/4 p2, 0x1

    if-eq p0, p2, :cond_3

    const/4 p2, 0x2

    if-eq p0, p2, :cond_2

    const/4 p2, 0x3

    if-eq p0, p2, :cond_1

    .line 1901
    sget p0, Lcom/android/settings/R$string;->sec_sort_by_name:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1898
    :cond_1
    sget p0, Lcom/android/settings/R$string;->sec_sort_by_last_updated:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1895
    :cond_2
    sget p0, Lcom/android/settings/R$string;->sec_sort_by_last_used:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1892
    :cond_3
    sget p0, Lcom/android/settings/R$string;->sec_sort_by_size:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p2, "accessibility"

    .line 1905
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_4

    .line 1906
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0x4000

    .line 1907
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 1908
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1909
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_4
    return-void
.end method
