.class public final Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mAllAppsChecked:Z

    if-eq v0, p2, :cond_6

    sput-boolean p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mAllAppsChecked:Z

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    sput-boolean p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mAllAppsChecked:Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    if-eq v2, p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3, v1, p2}, Lcom/samsung/android/view/SemWindowManager;->setSupportsFlexPanel(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    sub-int/2addr p1, v3

    sput p1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->enableCount:I

    goto :goto_1

    :cond_4
    sput v2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->enableCount:I

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_5

    const-wide/16 p1, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 p1, 0x0

    :goto_2
    const v0, 0x10ba7

    const v1, 0x10ba8

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/apppickerview/widget/AppPickerView$3;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/apppickerview/widget/AppPickerView$3;-><init>(Landroidx/apppickerview/widget/AppPickerView;I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method
