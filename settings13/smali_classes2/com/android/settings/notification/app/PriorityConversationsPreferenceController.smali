.class public Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;
.super Lcom/android/settings/notification/app/ConversationListPreferenceController;
.source "PriorityConversationsPreferenceController.java"


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mConversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mZenBackend:Lcom/android/settings/notification/zen/ZenModeBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController$1;

    invoke-direct {v0}, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 48
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;->mZenBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "important_conversations"

    return-object p0
.end method

.method getSummaryPreference()Lcom/samsung/android/settings/widget/SecUnclickablePreference;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;->mZenBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityConversationSenders()I

    move-result v0

    .line 60
    new-instance v1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x3e8

    .line 61
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOrder(I)V

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    .line 63
    sget p0, Lcom/android/settings/R$string;->important_conversations_summary_dnd:I

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 65
    :cond_0
    sget p0, Lcom/android/settings/R$string;->important_conversations_summary:I

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_0
    return-object v1
.end method

.method matchesFilter(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 0

    .line 73
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;->mConversations:Ljava/util/List;

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->updateList(Ljava/util/List;)Z

    return-void
.end method
