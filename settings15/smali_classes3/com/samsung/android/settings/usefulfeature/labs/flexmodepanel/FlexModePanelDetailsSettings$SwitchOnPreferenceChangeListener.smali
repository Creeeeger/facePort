.class public final Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final mRow:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;

.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->mRow:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->mRow:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/samsung/android/view/SemWindowManager;->setSupportsFlexPanel(ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->mRow:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const-string p1, "all_apps"

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    if-nez v3, :cond_0

    :cond_3
    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget v4, v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mValidItemCount:I

    if-lt v2, v4, :cond_4

    sput-boolean v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mAllAppsChecked:Z

    iget-object v2, v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/apppickerview/widget/AppPickerView$5;

    invoke-direct {v2, p1, v0}, Landroidx/apppickerview/widget/AppPickerView$5;-><init>(Landroidx/apppickerview/widget/AppPickerView;I)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_4
    sget p1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->enableCount:I

    add-int/2addr p1, v1

    sput p1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->enableCount:I

    goto :goto_2

    :cond_5
    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mAllAppsChecked:Z

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/apppickerview/widget/AppPickerView$5;

    invoke-direct {v2, p1, v0}, Landroidx/apppickerview/widget/AppPickerView$5;-><init>(Landroidx/apppickerview/widget/AppPickerView;I)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    sget p1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->enableCount:I

    sub-int/2addr p1, v1

    sput p1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->enableCount:I

    :goto_2
    const p1, 0x10ba7

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x10ba0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->mRow:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x10ba1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$SwitchOnPreferenceChangeListener;->mRow:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
