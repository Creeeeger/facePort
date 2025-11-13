.class public final synthetic Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/ConversationListPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

    check-cast p1, Landroid/service/notification/ConversationChannelWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->matchesFilter(Landroid/service/notification/ConversationChannelWrapper;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
