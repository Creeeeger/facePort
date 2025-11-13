.class public Lcom/android/settings/notification/app/AllConversationsPreferenceController;
.super Lcom/android/settings/notification/app/ConversationListPreferenceController;
.source "AllConversationsPreferenceController.java"


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;

    invoke-direct {v0}, Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/app/AllConversationsPreferenceController;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "other_conversations"

    return-object p0
.end method

.method getSummaryPreference()Lcom/samsung/android/settings/widget/SecUnclickablePreference;
    .locals 1

    .line 55
    new-instance v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x3e8

    .line 56
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 57
    sget p0, Lcom/android/settings/R$string;->other_conversations_summary:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-object v0
.end method

.method matchesFilter(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 0

    .line 64
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/AllConversationsPreferenceController;->mConversations:Ljava/util/List;

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->updateList(Ljava/util/List;)Z

    return-void
.end method
