.class public Lcom/android/settings/notification/app/ConversationListSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConversationListSettings.java"


# instance fields
.field private mAllConversationsController:Lcom/android/settings/notification/app/AllConversationsPreferenceController;

.field mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mContent:Landroid/view/ViewGroup;

.field protected mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mPriorityConversationsController:Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;

.field mPs:Landroid/app/people/IPeopleManager;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mUpdatedInOnCreate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mUpdatedInOnCreate:Z

    const-string/jumbo v0, "people"

    .line 68
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mPs:Landroid/app/people/IPeopleManager;

    return-void
.end method

.method private getConversationCount()I
    .locals 1

    .line 111
    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 112
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private update()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    .line 123
    new-instance v0, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mPriorityConversationsController:Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;

    .line 125
    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lcom/android/settings/notification/app/AllConversationsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/notification/app/AllConversationsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mAllConversationsController:Lcom/android/settings/notification/app/AllConversationsPreferenceController;

    .line 127
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConvoListSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x72a

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 83
    sget p0, Lcom/android/settings/R$xml;->sec_conversation_list_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mContent:Landroid/view/ViewGroup;

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/settings/R$layout;->sec_conversation_empty_view:I

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mContent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mEmptyView:Landroid/view/View;

    .line 93
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 94
    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/notification/app/ConversationListSettings;->update()V

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mUpdatedInOnCreate:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 99
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/app/ConversationListSettings;->getConversationCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mContent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mContent:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    const p0, 0x8cc9

    .line 105
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NSTE0403"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 146
    iget-boolean v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mUpdatedInOnCreate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mUpdatedInOnCreate:Z

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/app/ConversationListSettings;->update()V

    :goto_0
    return-void
.end method
