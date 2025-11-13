.class public Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/bixby2/interactor/ActionInteractor;


# static fields
.field static final CATEGORY_APP_NOTIFICATION_NOT_RECEIVED:Ljava/lang/String; = "APP_NOTIFICATION_NOT_RECEIVED"

.field static final CATEGORY_NOTIFICATION_NOT_RECEIVED:Ljava/lang/String; = "NOTIFICATION_NOT_RECEIVED"

.field static final CATEGORY_NOTIFICATION_NOT_RING_AS_SET:Ljava/lang/String; = "NOTIFICATION_NOT_RING_AS_SET"

.field static final NOTI_ID:Ljava/lang/String; = "notiID"

.field static final NOTI_ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field static final NOTI_LIST:Ljava/lang/String; = "notificationList"

.field static final NOTI_REPLY:Ljava/lang/String; = "canReply"

.field static final NOTI_RESULT:Ljava/lang/String; = "result"

.field static final NOTI_TEXT:Ljava/lang/String; = "notiText"

.field static final NOTI_TITLE:Ljava/lang/String; = "notiTitle"

.field static final RESULT_ALREADY_TURNED_ON_ALERTS:I = 0x20000

.field static final RESULT_ALREADY_TURNED_ON_NOTIFICATION:I = 0x20

.field static final RESULT_INTERRUPTED_BY_APP_NOTIFICATION_ALERTS:I = 0x8000

.field static final RESULT_INTERRUPTED_BY_DND:I = 0x1000

.field static final RESULT_INTERRUPTED_BY_NOTIFICATION_VOLUME:I = 0x4000

.field static final RESULT_INTERRUPTED_BY_RINGER_MODE:I = 0x2000

.field static final RESULT_INTERRUPTED_BY_USER_CHANGED:I = 0x10000

.field static final RESULT_NO_CHANNEL:I = 0x4

.field static final RESULT_NO_PERMISSION:I = 0x2

.field static final RESULT_SETTING_BLOCKED_BY_DND:I = 0x100000

.field static final RESULT_SETTING_BLOCKED_BY_NO_CHANNEL:I = 0x800000

.field static final RESULT_SETTING_BLOCKED_BY_NO_PERMISSION:I = 0x1000000

.field static final RESULT_SETTING_BLOCKED_BY_SETTING_OFF:I = 0x400000

.field static final RESULT_SETTING_BLOCKED_BY_SOUND_MUTE:I = 0x200000

.field static final RESULT_TURNED_ON_APP_NOTIFICATION:I = 0x8

.field static final RESULT_TURNED_ON_NOTIFICATION_CHANNEL:I = 0x10

.field static final RESULT_UNKNOWN_CAUSE:I = 0x1


# instance fields
.field private DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mGson:Lcom/google/gson/Gson;

.field private final mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;


# direct methods
.method public static synthetic $r8$lambda$PU8vrnNhfwLHw-pKk3JENBfigxI(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/NotificationController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NotificationControlActionInteractor"

    iput-object v0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method private isNotiPerformAction(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->delete_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->reply_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_sound:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->setoff_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private matchAction(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private respondCompleted(I)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "fail"

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "AllIsOngoingNoti"

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "NoMatchedAppName"

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "NoNotificationExist"

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string/jumbo v0, "success"

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method private respondCompleted(ILandroid/os/Bundle;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 9

    const/4 v0, 0x5

    const-class v1, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    const-string v2, "notificationList"

    const-string v3, "itemCount"

    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    const-string v6, "fail"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v7, v6}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    if-eqz p2, :cond_3

    new-instance p1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;

    invoke-direct {p1, p0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;-><init>(Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;)V

    invoke-virtual {p1, v4}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setResult(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setItemCount(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v5, p2, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiID()Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiCanReply()Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getWhen()Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getFgs()Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getOngoing()Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getAppName()Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setNotificationList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->getResult()Ljava/lang/String;

    :cond_2
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v8, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v7, v6}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_4
    if-eqz p2, :cond_8

    new-instance p1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;

    invoke-direct {p1, p0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;-><init>(Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;)V

    invoke-virtual {p1, v4}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setResult(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setItemCount(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p2, :cond_5

    move p2, v5

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_5

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiID()Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getNotiCanReply()Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getWhen()Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getFgs()Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getOngoing()Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;

    invoke-virtual {v1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->getAppName()Ljava/lang/String;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setNotificationList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->getDisplayDescription()Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    const-class v1, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v5, p2, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;->getAppName()Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;

    invoke-virtual {p2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;->getNotiCount()Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->setContentForDisplay(Ljava/util/List;)V

    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->getResult()Ljava/lang/String;

    :cond_7
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v8, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_8
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v7, v6}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getSupportingActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;)Lcom/samsung/android/sdk/command/Command;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->read_notification_withid:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "NotificationControlActionInteractor"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-virtual {p1, v1}, Lcom/android/systemui/bixby2/controller/NotificationController;->readNotificationWithID(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->respondCompleted(ILandroid/os/Bundle;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "responseMessage: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    iget-object p1, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v3, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    iput-object p0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->isNotiPerformAction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance p1, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "JSONException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->goto_edgelighting:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->open_notification_panel:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_sound:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->setoff_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->query_notification_settings:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v1
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 2

    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->read_notification_withid:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p3, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    iget-object v0, p3, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->readNotificationWithID(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "result"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p0, p3, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->respondCompleted(ILandroid/os/Bundle;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "responseMessage: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    const-string v0, "NotificationControlActionInteractor"

    invoke-static {p0, p3, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    iget-object p1, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    iput-object p0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public performCommandActionInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "commandAction.getActionType() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationControlActionInteractor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    move-object p2, v3

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->isNotiPerformAction(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "success"

    const-string v4, "fail"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_19

    invoke-static {p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, " packageInfo is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->delete_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "-- delete_notification --   packageName = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->deleteNotification(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->respondCompleted(I)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object v3

    goto/16 :goto_3

    :cond_4
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->reply_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->notiID:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->MsgStr:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->replyNotification(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->respondCompleted(I)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object v3

    goto/16 :goto_3

    :cond_5
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "SetOnSoundNotification"

    const/16 v8, 0x8

    if-eqz v0, :cond_c

    const-string p1, "-- set_notification_permission --"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->getFocusedPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->checkNotificationStatusForPackage(Ljava/lang/String;)I

    move-result p1

    const-string p2, "checkNotificationStatusForPackage() result = "

    invoke-static {p1, p2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne p1, v5, :cond_7

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "NoCategoryNotification"

    invoke-direct {v3, v6, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const/4 p2, 0x4

    if-eq p1, p2, :cond_b

    const/16 p2, 0x20

    if-ne p1, p2, :cond_8

    goto :goto_1

    :cond_8
    if-ne p1, v8, :cond_9

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "SetOnSettingNotification"

    invoke-direct {v3, v6, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const/16 p2, 0x10

    if-ne p1, p2, :cond_a

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v6, v7}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    :goto_1
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "AlreadyOnSettingsNotification"

    invoke-direct {v3, v6, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_sound:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "-- set_notification_sound --"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->getFocusedPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    :cond_d
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->checkNotificationSoundStatus(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "checkNotificationSoundStatus() result = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 p2, p1, 0x2000

    if-eqz p2, :cond_e

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v6, v7}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_f

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "SetOffDndNotification"

    invoke-direct {v3, v6, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_13

    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_10

    goto :goto_2

    :cond_10
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-eqz p2, :cond_11

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "SetImportanceNotification"

    invoke-direct {v3, v6, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-eqz p1, :cond_12

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "AlreadyOnSoundNotification"

    invoke-direct {v3, v6, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_12
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    :goto_2
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "SetOnSoundAppNotification"

    invoke-direct {v3, v6, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_14
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->setoff_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const-string p1, "-- setoff_notification_permission --"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->getFocusedPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    :cond_15
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->setNotificationTurnOffForPackage(Ljava/lang/String;)I

    move-result p1

    const-string p2, "setNotificationTurnOffForPackage() result = "

    invoke-static {p1, p2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne p1, v8, :cond_16

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "CanNotOffSettingNotification"

    invoke-direct {v3, v5, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_16
    const/16 p2, 0x9

    if-ne p1, p2, :cond_17

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "already_set"

    invoke-direct {v3, v5, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_17
    if-ne p1, v6, :cond_18

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v6, v2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_18
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_19
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->open_notification_panel:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->openNotificationPanel()V

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v6, v2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_1a
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->goto_edgelighting:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->goToNotiSettings(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1b

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v6, v2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_1b
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_1c
    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->query_notification_settings:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    if-nez p2, :cond_1d

    const-string p1, "jsonString is null !! "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-static {p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Category = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Category:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Category:Ljava/lang/String;

    const-string v0, "NOTIFICATION_NOT_RECEIVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/high16 v0, 0x100000

    const-string v2, "0"

    const-string v7, "1"

    if-eqz p2, :cond_1f

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-virtual {p1, v6}, Lcom/android/systemui/bixby2/controller/NotificationController;->getNotificationSettingStatus(Z)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1e

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v6, v7}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_1e
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v6, v2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_1f
    iget-object p2, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Category:Ljava/lang/String;

    const-string v8, "NOTIFICATION_NOT_RING_AS_SET"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->getNotificationSettingStatus(Z)I

    move-result p1

    const/high16 p2, 0x200000

    and-int/2addr p1, p2

    if-eqz p1, :cond_20

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v6, v7}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_20
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v6, v2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_21
    iget-object p2, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Category:Ljava/lang/String;

    const-string v8, "APP_NOTIFICATION_NOT_RECEIVED"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    if-eqz p1, :cond_25

    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->getAppNotificationSettingStatus(Ljava/lang/String;)I

    move-result p1

    and-int p2, p1, v0

    if-eqz p2, :cond_22

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "2"

    invoke-direct {v3, v6, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_22
    const/high16 p2, 0x400000

    and-int/2addr p2, p1

    if-eqz p2, :cond_23

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v6, v7}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_23
    const/high16 p2, 0x800000

    and-int/2addr p1, p2

    if-eqz p1, :cond_24

    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "3"

    invoke-direct {v3, v6, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_24
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v6, v2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_25
    new-instance v3, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    :cond_26
    :goto_3
    if-nez v3, :cond_27

    if-eqz p3, :cond_29

    :cond_27
    iget-boolean p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;->DEBUG:Z

    if-eqz p0, :cond_28

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "responseCode = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", responseMessage = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    iget p0, v3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object p1, v3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-virtual {p3, p0, p1}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    :cond_29
    return-void
.end method
