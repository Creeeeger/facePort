.class public Lcom/android/settings/notification/app/AppNotificationTypeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppNotificationTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;,
        Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;,
        Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ClickListener;,
        Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;,
        Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;,
        Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAppNotificationTypeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/notification/app/AppNotificationTypeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ClickListener;

.field private mZenModeAllBypassingAddAppsListener:Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;

.field private mZenModeCallExceptionListener:Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;


# direct methods
.method public static synthetic $r8$lambda$M7GeFa-TR-RVt5PCmzCjccDZFWA(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->lambda$onBindViewHolder$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MyGph7v796xOhzO8CsaB1nAPRrw(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->lambda$onBindViewHolder$0(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hxIydd5yRX98mTS8kWpeiaES4Uk(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->lambda$onBindViewHolder$2(ILandroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmZenModeCallExceptionListener(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;)Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mZenModeCallExceptionListener:Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/notification/app/AppNotificationTypeInfo;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    .line 41
    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 4

    .line 78
    iget-object p3, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setSelected(Ljava/lang/Boolean;)V

    .line 79
    check-cast p2, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;

    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->-$$Nest$fgetmNotiCard(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$drawable;->noti_type_card_bg:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$drawable;->noti_type_card_unselected_bg:I

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 80
    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->-$$Nest$fgetmNotiAllowed(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settings/R$string;->sec_app_notification_allowed:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/settings/R$string;->sec_app_notification_not_allowed:I

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 81
    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->-$$Nest$fgetmNotiAllowed(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {p3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$color;->sec_app_notification_type_button_selected:I

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$color;->sec_app_notification_type_button_unselected:I

    :goto_2
    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {p2}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getNotificationType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, -0x1

    sparse-switch p3, :sswitch_data_0

    :goto_3
    move p2, v0

    goto :goto_4

    :sswitch_0
    const-string p3, "lockscreen"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 p2, 0x2

    goto :goto_4

    :sswitch_1
    const-string/jumbo p3, "popup"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    move p2, v1

    goto :goto_4

    :sswitch_2
    const-string p3, "badge"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_4
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_6

    .line 84
    :pswitch_0
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p3, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {p3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getmPackage()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v2}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getuId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v1, v0

    :goto_5
    invoke-virtual {p2, p3, v2, v1}, Lcom/android/settings/notification/NotificationBackend;->setLockScreenNotificationVisibilityForPackage(Ljava/lang/String;II)V

    goto :goto_6

    .line 90
    :pswitch_1
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p3, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {p3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getmPackage()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getuId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/android/settings/notification/NotificationBackend;->setAllowNotificationPopUpForPackage(Ljava/lang/String;IZ)V

    goto :goto_6

    .line 87
    :pswitch_2
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p3, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {p3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getmPackage()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getuId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/android/settings/notification/NotificationBackend;->setShowBadge(Ljava/lang/String;IZ)Z

    .line 93
    :goto_6
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mListener:Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ClickListener;

    iget-object p3, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {p3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getNotificationType()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getmPackage()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {p0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p2, p3, v0, p0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ClickListener;->performClick(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5929ba3 -> :sswitch_2
        0x65e70ac -> :sswitch_1
        0x6adcb957 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$onBindViewHolder$1(ILandroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mZenModeAllBypassingAddAppsListener:Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;

    invoke-interface {p0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;->onAddAppItemClick()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(ILandroid/view/View;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mZenModeAllBypassingAddAppsListener:Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;

    invoke-interface {p0, p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;->onPerformRemoveClick(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getAddAppException()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {p0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getmPackage()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getAddAppException()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getmPackage()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    if-ne v0, v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/16 v4, 0x8

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_2

    goto/16 :goto_8

    .line 103
    :cond_2
    check-cast p1, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->-$$Nest$fgetdeleteIcon(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_4

    .line 105
    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->-$$Nest$fgetdndAppView(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getmPackageIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 107
    :cond_4
    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->-$$Nest$fgetdndAppView(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getImageEntry()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :goto_2
    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->-$$Nest$fgetdndAppTitle(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->-$$Nest$fgetmDndBypassingApps_View(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->-$$Nest$fgetdeleteIcon(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 77
    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;

    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->-$$Nest$fgetmNotiCard(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->-$$Nest$fgetnoti_type_image(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getImageEntry()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->-$$Nest$fgetmNotiType(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->-$$Nest$fgetmNotiCard(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/android/settings/R$drawable;->noti_type_card_bg:I

    goto :goto_3

    :cond_6
    sget v1, Lcom/android/settings/R$drawable;->noti_type_card_unselected_bg:I

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 98
    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->-$$Nest$fgetmNotiAllowed(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Lcom/android/settings/R$string;->sec_app_notification_allowed:I

    goto :goto_4

    :cond_7
    sget v1, Lcom/android/settings/R$string;->sec_app_notification_not_allowed:I

    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->-$$Nest$fgetmNotiAllowed(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {p2}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_8

    sget p2, Lcom/android/settings/R$color;->sec_app_notification_type_button_selected:I

    goto :goto_5

    :cond_8
    sget p2, Lcom/android/settings/R$color;->sec_app_notification_type_button_unselected:I

    :goto_5
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 121
    :cond_9
    check-cast p1, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->-$$Nest$fgetdeleteItemImage(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p2, :cond_a

    goto :goto_6

    :cond_a
    move v3, v4

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->-$$Nest$fgetcontactView(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$1;-><init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_c

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v0}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 132
    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->-$$Nest$fgetdndTypeImage(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7

    .line 134
    :cond_b
    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->-$$Nest$fgetdndTypeImage(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->ic_no_photo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 137
    :cond_c
    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->-$$Nest$fgetdndTypeImage(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getImageEntry()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    :goto_7
    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->-$$Nest$fgetdndTypeTitle(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->-$$Nest$fgetdeleteItemImage(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$2;-><init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 59
    new-instance p2, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->empty_view:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;-><init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;Landroid/view/View;)V

    return-object p2

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$xml;->zen_mode_add_app_exception:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;-><init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;Landroid/view/View;)V

    return-object p2

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->sec_app_notificatontype_adapter:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance p2, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;-><init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;Landroid/view/View;)V

    return-object p2

    .line 50
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$xml;->zen_mode_contact_exception:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    new-instance p2, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;-><init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setListener(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ClickListener;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mListener:Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ClickListener;

    return-void
.end method

.method public setZenModeAllBypassingAppsListener(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mZenModeAllBypassingAddAppsListener:Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;

    return-void
.end method

.method public setZenModeListener(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->mZenModeCallExceptionListener:Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;

    return-void
.end method
