.class public final Lcom/android/settings/notification/zen/ZenModeBackend;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final RULE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final ZEN_MODE_FROM_ANYONE:Ljava/lang/String; = "zen_mode_from_anyone"

.field protected static final ZEN_MODE_FROM_CONTACTS:Ljava/lang/String; = "zen_mode_from_contacts"

.field public static final ZEN_MODE_FROM_NONE:Ljava/lang/String; = "zen_mode_from_none"

.field protected static final ZEN_MODE_FROM_STARRED:Ljava/lang/String; = "zen_mode_from_starred"

.field public static final sINM:Landroid/app/INotificationManager;

.field public static volatile sInstance:Lcom/android/settings/notification/zen/ZenModeBackend;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mPolicy:Landroid/app/NotificationManager$Policy;

.field public mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

.field public mRuleId:Ljava/lang/String;

.field public mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->sINM:Landroid/app/INotificationManager;

    new-instance v0, Lcom/android/settings/notification/zen/ZenModeBackend$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->RULE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRuleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "zen_mode"

    iget v2, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    :cond_0
    return-void
.end method

.method public static canAppBypassDnd(ILjava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p0}, Landroid/app/INotificationManager;->canAppBypassDnd(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ZenModeSettingsBackend"

    const-string v0, "Error calling NoMan"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;
    .locals 2

    sget-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->sInstance:Lcom/android/settings/notification/zen/ZenModeBackend;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/settings/notification/zen/ZenModeBackend;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/notification/zen/ZenModeBackend;->sInstance:Lcom/android/settings/notification/zen/ZenModeBackend;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeBackend;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/notification/zen/ZenModeBackend;->sInstance:Lcom/android/settings/notification/zen/ZenModeBackend;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/android/settings/notification/zen/ZenModeBackend;->sInstance:Lcom/android/settings/notification/zen/ZenModeBackend;

    return-object p0
.end method

.method public static getKeyFromSetting(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "zen_mode_from_none"

    return-object p0

    :cond_0
    const-string p0, "zen_mode_from_starred"

    return-object p0

    :cond_1
    const-string p0, "zen_mode_from_contacts"

    return-object p0

    :cond_2
    const-string p0, "zen_mode_from_anyone"

    return-object p0
.end method

.method public static getSettingFromPrefKey(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "zen_mode_from_starred"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "zen_mode_from_anyone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "zen_mode_from_contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "zen_mode_from_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v4

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v3, :cond_1

    return v4

    :cond_1
    return v3

    :cond_2
    return v2

    :cond_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x387093d3 -> :sswitch_3
        -0x19386538 -> :sswitch_2
        0xb2d30af -> :sswitch_1
        0x1b955bea -> :sswitch_0
    .end sparse-switch
.end method

.method public static getZenPolicySettingFromPrefKey(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "zen_mode_from_starred"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "zen_mode_from_anyone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "zen_mode_from_contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "zen_mode_from_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v3, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v1

    :cond_2
    return v3

    :cond_3
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x387093d3 -> :sswitch_3
        -0x19386538 -> :sswitch_2
        0xb2d30af -> :sswitch_1
        0x1b955bea -> :sswitch_0
    .end sparse-switch
.end method

.method public static setAppBypassDnd(ILjava/lang/String;Z)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p0, p2}, Landroid/app/INotificationManager;->setAppBypassDnd(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ZenModeSettingsBackend"

    const-string p2, "Error calling NoMan"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final getAutomaticZenRules()[Ljava/util/Map$Entry;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    new-array p0, p0, [Ljava/util/Map$Entry;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    sget-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public final getContactsSummary(I)I
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityMessageSenders()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityCallSenders()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    if-ne p1, v0, :cond_2

    const p0, 0x7f143894

    return p0

    :cond_2
    const p0, 0x7f143893

    return p0

    :cond_3
    const p0, 0x7f143895

    return p0

    :cond_4
    const p0, 0x7f14388e

    return p0

    :cond_5
    const p0, 0x7f14388d

    return p0
.end method

.method public final getExceptionAppFlag()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getExceptionAppFlag policy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettingsBackend"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    iget p0, p0, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    return p0
.end method

.method public final getExceptionContact()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getExceptionContactFlag()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getExceptionContactFlag policy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettingsBackend"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    iget p0, p0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    return p0
.end method

.method public final getPriorityCallSenders()I
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getPriorityMessageSenders()I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getStarredContacts(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    const v2, 0x7f1438ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    return-object v0
.end method

.method public final getStarredContactsSummary()Ljava/lang/String;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "display_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "times_contacted"

    const-string v4, "starred=1"

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getStarredContacts(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Landroid/icu/text/MessageFormat;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    const v3, 0x7f1438ef

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "count"

    invoke-virtual {p0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    if-lt v0, v3, :cond_1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "contact_1"

    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    if-lt v0, v4, :cond_1

    const-string v5, "contact_2"

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const-string v0, "contact_3"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, p0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method public final isPriorityCategoryEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeZenRule(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;Z)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    return-void
.end method

.method public final savePolicyWithExceptions(IIIIIIILjava/util/List;ILjava/util/List;)V
    .locals 13

    move-object v0, p0

    new-instance v12, Landroid/app/NotificationManager$Policy;

    move-object v1, v12

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIIILjava/util/List;ILjava/util/List;)V

    iput-object v12, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v12}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method public final saveSenders(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityCallSenders()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v4

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, -0x1

    if-ne v1, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityCallSenders()I

    move-result v8

    goto :goto_0

    :cond_0
    if-ne v1, v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v8

    goto :goto_0

    :cond_1
    const/16 v8, 0x100

    if-ne v1, v8, :cond_3

    invoke-virtual {v0, v8}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v8, v8, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    goto :goto_0

    :cond_2
    const/4 v8, 0x3

    goto :goto_0

    :cond_3
    move v8, v7

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getExceptionContact()Ljava/util/List;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v11, v10, Landroid/app/NotificationManager$Policy;->state:I

    if-eq v2, v7, :cond_4

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    if-ne v2, v7, :cond_5

    move v13, v8

    goto :goto_2

    :cond_5
    move v13, v2

    :goto_2
    if-ne v1, v6, :cond_6

    const-string v2, "Calls"

    move-object v3, v2

    move v2, v13

    goto :goto_3

    :cond_6
    const-string v2, ""

    move/from16 v16, v3

    move-object v3, v2

    move/from16 v2, v16

    :goto_3
    if-ne v1, v5, :cond_7

    const-string v3, "Messages"

    move-object v14, v3

    move v3, v13

    goto :goto_4

    :cond_7
    move-object v14, v3

    move v3, v4

    :goto_4
    iget v4, v10, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-eqz v12, :cond_8

    or-int/2addr v1, v4

    goto :goto_5

    :cond_8
    not-int v1, v1

    and-int/2addr v1, v4

    :goto_5
    iget v4, v10, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v6, v10, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v7, v10, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    iget v15, v10, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    invoke-virtual {v10}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p0

    move v5, v11

    move-object v8, v9

    move v9, v15

    invoke-virtual/range {v0 .. v10}, Lcom/android/settings/notification/zen/ZenModeBackend;->savePolicyWithExceptions(IIIIIIILjava/util/List;ILjava/util/List;)V

    sget-boolean v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPrefChange allow"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "From="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettingsBackend"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public final saveSoundPolicy(IZ)V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-eqz p2, :cond_0

    or-int/2addr p1, v1

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v1

    goto :goto_0

    :goto_1
    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->state:I

    iget v7, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v8, v0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getExceptionContact()Ljava/util/List;

    move-result-object v9

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v10, p1, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    move-result-object v11

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/settings/notification/zen/ZenModeBackend;->savePolicyWithExceptions(IIIIIIILjava/util/List;ILjava/util/List;)V

    return-void
.end method

.method public final saveVisualEffectsPolicy(IZ)V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_settings_updated"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eqz p2, :cond_0

    or-int/2addr p1, v1

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v1

    :goto_0
    and-int/lit8 v5, p1, -0x4

    iget v2, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->state:I

    iget v7, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v8, v0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getExceptionContact()Ljava/util/List;

    move-result-object v9

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v10, p1, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    move-result-object v11

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/settings/notification/zen/ZenModeBackend;->savePolicyWithExceptions(IIIIIIILjava/util/List;ILjava/util/List;)V

    return-void
.end method

.method public final setLifeStyleZenModeoff()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRuleId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRuleId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final setZenMode(I)V
    .locals 4

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    const-string v1, "ZenModeSettingsBackend"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "zen_mode"

    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    return-void
.end method

.method public final setZenModeForDuration(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object p1

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    const-string v1, "ZenModeSettingsBackend"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2, p1, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "zen_mode"

    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    return-void
.end method

.method public final updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V
    .locals 1

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method
