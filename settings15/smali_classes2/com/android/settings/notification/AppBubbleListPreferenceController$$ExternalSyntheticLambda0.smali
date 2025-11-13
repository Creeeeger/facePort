.class public final synthetic Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/AppBubbleListPreferenceController;

.field public final synthetic f$1:Landroid/service/notification/ConversationChannelWrapper;

.field public final synthetic f$2:Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/AppBubbleListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/AppBubbleListPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/ConversationChannelWrapper;

    iput-object p3, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/AppBubbleListPreferenceController;

    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/ConversationChannelWrapper;

    iget-object p0, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    iget-object v1, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    iget-object v3, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1, v0}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    iget-object v0, p1, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p0, p1, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method
