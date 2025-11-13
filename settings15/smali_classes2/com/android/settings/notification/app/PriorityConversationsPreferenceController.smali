.class public final Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;
.super Lcom/android/settings/notification/app/ConversationListPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "important_conversations"

    return-object p0
.end method

.method public final getSummaryPreference()Lcom/samsung/android/settings/widget/SecUnclickablePreference;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    new-instance v1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x3e8

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOrder(I)V

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    const p0, 0x7f1411fe

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_1
    const p0, 0x7f1411fc

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_1
    return-object v1
.end method

.method public final matchesFilter(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->updateList$1(Ljava/util/List;)V

    return-void
.end method
