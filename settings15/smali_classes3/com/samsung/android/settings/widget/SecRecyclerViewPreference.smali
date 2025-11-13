.class public Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# instance fields
.field public COLUMN_COUNT:I

.field public final mAppNotificationTypeAdapter:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

.field public final mAppNotificationTypeInfoList:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public mNestedEnable:Z

.field public mNotificationTypeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x3

    iput p2, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNestedEnable:Z

    const p2, 0x7f0d07fb

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-direct {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object p1, p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0aaf

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNotificationTypeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT:I

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNotificationTypeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNestedEnable:Z

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNotificationTypeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mNotificationTypeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
