.class public final Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/app/AppConversationListPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/app/AppConversationListPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AppConversationListPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AppConversationListPreferenceController;

    iget-object v0, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p1, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/android/settings/notification/NotificationBackend;->getConversations(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AppConversationListPreferenceController;

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->filterAndSortConversations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mConversations:Ljava/util/List;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AppConversationListPreferenceController;

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->populateList$1()V

    :goto_0
    return-void
.end method
