.class public final synthetic Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/AppBubbleListPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/AppBubbleListPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/AppBubbleListPreferenceController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/AppBubbleListPreferenceController;

    check-cast p1, Landroid/service/notification/ConversationChannelWrapper;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p0

    if-nez p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method
