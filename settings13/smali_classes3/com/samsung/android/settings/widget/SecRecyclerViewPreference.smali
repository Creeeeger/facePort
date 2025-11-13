.class public Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;
.super Landroidx/preference/Preference;
.source "SecRecyclerViewPreference.java"


# static fields
.field private static mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# instance fields
.field public COLUMN_COUNT:I

.field private COLUMN_COUNT_FOUR:I

.field private mAppNotificationTypeAdapter:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

.field private mAppNotificationTypeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/notification/app/AppNotificationTypeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mNestedEnable:Z

.field private mNotificationTypeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x3

    .line 34
    iput p2, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT:I

    const/4 p2, 0x4

    .line 38
    iput p2, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT_FOUR:I

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNestedEnable:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 49
    sget v0, Lcom/android/settings/R$layout;->sec_app_notification_types:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mContext:Landroid/content/Context;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    .line 52
    new-instance p1, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    .line 53
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    return-void
.end method


# virtual methods
.method public deleteSelectedEntry(I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/settings/notification/zen/ZenUtil;->setSelectedContact(Ljava/util/List;Landroid/content/Context;)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->notifyAdapter()V

    return-void
.end method

.method public deleteSelectedLifeStyleContactList(I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/settings/notification/zen/ZenUtil;->setSelectedLifeStyleContact(Ljava/util/List;Landroid/content/Context;)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setPeoplesummary(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->notifyAdapter()V

    return-void
.end method

.method public getAppNotificationTypeAdapter()Lcom/android/settings/notification/app/AppNotificationTypeAdapter;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    return-object p0
.end method

.method public handleDeleteSelectedApp(ILcom/android/settings/notification/zen/ZenModeBackend;)V
    .locals 3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getmPackage()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getuId()I

    move-result v1

    .line 94
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/settings/notification/zen/ZenModeBackend;->setAppBypassDnd(Ljava/lang/String;IZ)V

    .line 96
    iget-object p2, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public handleDeleteSelectedLifeStyleAppList(I)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 119
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x1

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    .line 123
    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getmPackage()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getuId()I

    move-result v1

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setApp_exist_list(Ljava/util/HashSet;)V

    .line 132
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppSummary(Landroid/content/Context;)V

    .line 133
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyAdapter()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 58
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 59
    sget v0, Lcom/android/settings/R$id;->notification_type_recycler:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNotificationTypeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT:I

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 61
    iget p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT:I

    iget v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT_FOUR:I

    if-ne p1, v0, :cond_0

    .line 62
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->sec_screen_zoom_seekbar_progress_drawable_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_screen_zoom_top_layout_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNotificationTypeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNotificationTypeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNestedEnable:Z

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNotificationTypeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 68
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNotificationTypeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setNestedScroll(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNestedEnable:Z

    .line 74
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public updateEntries(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/notification/app/AppNotificationTypeInfo;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
