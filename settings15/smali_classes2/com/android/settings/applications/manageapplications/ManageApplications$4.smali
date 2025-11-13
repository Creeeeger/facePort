.class public final Lcom/android/settings/applications/manageapplications/ManageApplications$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$customView:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->$r8$classId:I

    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->val$customView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->val$customView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f142a95

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0afa

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v0, 0x0

    iput v0, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpSortOrder:I

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const p2, 0x7f142795

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f0a0afb

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v0, 0x1

    iput v0, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpSortOrder:I

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const p2, 0x7f142796

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f0a0af9

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v0, 0x2

    iput v0, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpSortOrder:I

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const p2, 0x7f142794

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p1, 0x7f0a0af8

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v0, 0x3

    iput v0, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpSortOrder:I

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const p2, 0x7f142793

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string p2, "accessibility"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const/16 p2, 0x4000

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_4
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->val$customView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f142a95

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0635

    if-ne p2, p1, :cond_5

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/4 p2, 0x4

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    goto :goto_1

    :cond_5
    const p1, 0x7f0a063a

    if-ne p2, p1, :cond_6

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/16 p2, 0x1f

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    goto :goto_1

    :cond_6
    const p1, 0x7f0a0639

    if-ne p2, p1, :cond_7

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/4 p2, 0x5

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    goto :goto_1

    :cond_7
    const p1, 0x7f0a0636

    if-ne p2, p1, :cond_8

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/4 p2, 0x7

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    :cond_8
    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->val$customView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    const v1, 0x7f142a95

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0afa

    if-ne p2, p1, :cond_9

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 p2, 0x0

    iput p2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpSortOrder:I

    const p2, 0x7f142795

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    const p1, 0x7f0a0afb

    if-ne p2, p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 p2, 0x1

    iput p2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpSortOrder:I

    const p2, 0x7f142796

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_a
    const p1, 0x7f0a0af9

    if-ne p2, p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 p2, 0x2

    iput p2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpSortOrder:I

    const p2, 0x7f142794

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_b
    const p1, 0x7f0a0af8

    if-ne p2, p1, :cond_c

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 p2, 0x3

    iput p2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpSortOrder:I

    const p2, 0x7f142793

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_c
    const/4 p1, 0x0

    :goto_2
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    const-string p2, "accessibility"

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    const/16 p2, 0x4000

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
