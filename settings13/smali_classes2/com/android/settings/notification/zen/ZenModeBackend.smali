.class public Lcom/android/settings/notification/zen/ZenModeBackend;
.super Ljava/lang/Object;
.source "ZenModeBackend.java"


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

.field private static mDefaultRuleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sINM:Landroid/app/INotificationManager;

.field private static sInstance:Lcom/android/settings/notification/zen/ZenModeBackend;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field protected mPolicy:Landroid/app/NotificationManager$Policy;

.field mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

.field mRuleId:Ljava/lang/String;

.field protected mZenMode:I


# direct methods
.method static bridge synthetic -$$Nest$smgetDefaultRuleIds()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/android/settings/notification/zen/ZenModeBackend;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "notification"

    .line 83
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->sINM:Landroid/app/INotificationManager;

    .line 699
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeBackend$1;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenModeBackend$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->RULE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ZenModeSettingsBackend"

    .line 73
    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRuleId:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    .line 94
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "notification"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenMode()V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->updatePolicy()V

    return-void
.end method

.method private clearDeprecatedEffects(I)I
    .locals 0

    and-int/lit8 p0, p1, -0x4

    return p0
.end method

.method private createAutomaticZenRule(Ljava/lang/String;)V
    .locals 11

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    .line 146
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "scheme"

    .line 147
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 155
    new-instance v3, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    new-instance v4, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;

    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    new-instance v1, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v1}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    .line 158
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getCallOption()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/zen/ZenModeBackend;->getZenPolicyFromBixbyRoutine(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    .line 159
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getRepeatedCaller()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    .line 160
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getMessageOption()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/zen/ZenModeBackend;->getZenPolicyFromBixbyRoutine(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    .line 161
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getApp_exist_list()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowAppsToBypassDnd(Ljava/lang/String;)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    .line 162
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContact_exist_list()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowExceptionContacts(Ljava/lang/String;)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v9

    .line 164
    new-instance v10, Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->lifestyle_zen_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, v10

    move-object v5, v0

    move-object v6, v9

    invoke-direct/range {v1 .. v8}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    .line 172
    invoke-virtual {v10, v9}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    const/4 p1, 0x1

    .line 173
    invoke-virtual {v10, p1}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v10}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRuleId:Ljava/lang/String;

    .line 175
    new-instance v1, Landroid/service/notification/Condition;

    const-string v2, "ZenRuleTest Rule"

    invoke-direct {v1, v0, v2, p1}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 177
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRuleId:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Landroid/app/NotificationManager;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    return-void
.end method

.method protected static getContactSettingFromZenPolicySetting(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static getDefaultRuleIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 619
    sget-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mDefaultRuleIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 620
    sget-object v0, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mDefaultRuleIds:Ljava/util/List;

    .line 622
    :cond_0
    sget-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mDefaultRuleIds:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;
    .locals 1

    .line 87
    sget-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->sInstance:Lcom/android/settings/notification/zen/ZenModeBackend;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenModeBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->sInstance:Lcom/android/settings/notification/zen/ZenModeBackend;

    .line 90
    :cond_0
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

    const-string/jumbo p0, "zen_mode_from_none"

    return-object p0

    :cond_0
    const-string/jumbo p0, "zen_mode_from_starred"

    return-object p0

    :cond_1
    const-string/jumbo p0, "zen_mode_from_contacts"

    return-object p0

    :cond_2
    const-string/jumbo p0, "zen_mode_from_anyone"

    return-object p0
.end method

.method protected static getKeyFromZenPolicySetting(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "zen_mode_from_none"

    return-object p0

    :cond_0
    const-string/jumbo p0, "zen_mode_from_starred"

    return-object p0

    :cond_1
    const-string/jumbo p0, "zen_mode_from_contacts"

    return-object p0

    :cond_2
    const-string/jumbo p0, "zen_mode_from_anyone"

    return-object p0
.end method

.method private getNewSuppressedEffects(ZI)I
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eqz p1, :cond_0

    or-int p1, v0, p2

    goto :goto_0

    :cond_0
    not-int p1, p2

    and-int/2addr p1, v0

    .line 311
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->clearDeprecatedEffects(I)I

    move-result p0

    return p0
.end method

.method private getPrioritySenders(I)I
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityCallSenders()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityMessageSenders()I

    move-result p0

    return p0

    :cond_1
    const/16 v0, 0x100

    if-ne p1, v0, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityConversationSenders()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static getSettingFromPrefKey(Ljava/lang/String;)I
    .locals 5

    .line 531
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "zen_mode_from_starred"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "zen_mode_from_anyone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "zen_mode_from_contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "zen_mode_from_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    return v4

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

.method private getStarredContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 647
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->queryStarredContactsData()Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 648
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getStarredContacts(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 651
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_1
    throw p0
.end method

.method private getZenPolicyFromBixbyRoutine(I)I
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, p0, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method protected static getZenPolicySettingFromPrefKey(Ljava/lang/String;)I
    .locals 4

    .line 516
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "zen_mode_from_starred"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "zen_mode_from_anyone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "zen_mode_from_contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "zen_mode_from_none"

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

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x387093d3 -> :sswitch_3
        -0x19386538 -> :sswitch_2
        0xb2d30af -> :sswitch_1
        0x1b955bea -> :sswitch_0
    .end sparse-switch
.end method

.method private queryAllContactsData()Landroid/database/Cursor;
    .locals 6

    .line 693
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "display_name"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private queryStarredContactsData()Landroid/database/Cursor;
    .locals 6

    .line 686
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "display_name"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "starred=1"

    const/4 v4, 0x0

    const-string/jumbo v5, "times_contacted"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected addZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 0

    .line 555
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public canAppBypassDnd(Ljava/lang/String;I)Z
    .locals 1

    .line 731
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->canAppBypassDnd(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 733
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->TAG:Ljava/lang/String;

    const-string p2, "Error calling NoMan"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getAlarmsTotalSilencePeopleSummary(I)I
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    .line 430
    sget p0, Lcom/android/settings/R$string;->zen_mode_none_messages:I

    return p0

    :cond_0
    const/16 p0, 0x8

    if-ne p1, p0, :cond_1

    .line 432
    sget p0, Lcom/android/settings/R$string;->zen_mode_none_calls:I

    return p0

    :cond_1
    const/16 p0, 0x100

    if-ne p1, p0, :cond_2

    .line 434
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_no_conversations:I

    return p0

    .line 436
    :cond_2
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_no_conversations:I

    return p0
.end method

.method protected getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method

.method public getAutomaticZenRules()[Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .line 606
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    .line 607
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    .line 608
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 609
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    new-array p0, p0, [Ljava/util/Map$Entry;

    .line 608
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    .line 610
    sget-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public getConsolidatedPolicy()Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 550
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0
.end method

.method protected getContactsCallsSummary(Landroid/service/notification/ZenPolicy;)I
    .locals 0

    .line 486
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    .line 496
    sget p0, Lcom/android/settings/R$string;->zen_mode_none_calls:I

    return p0

    .line 493
    :cond_0
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_starred:I

    return p0

    .line 491
    :cond_1
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_contacts:I

    return p0

    .line 489
    :cond_2
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_anyone:I

    return p0
.end method

.method protected getContactsMessagesSummary(Landroid/service/notification/ZenPolicy;)I
    .locals 0

    .line 501
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    .line 511
    sget p0, Lcom/android/settings/R$string;->zen_mode_none_messages:I

    return p0

    .line 508
    :cond_0
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_starred:I

    return p0

    .line 506
    :cond_1
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_contacts:I

    return p0

    .line 504
    :cond_2
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_anyone:I

    return p0
.end method

.method getContactsNumberSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 677
    new-instance p1, Landroid/icu/text/MessageFormat;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->zen_mode_contacts_count:I

    .line 678
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 680
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 681
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->queryAllContactsData()Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "count"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-virtual {p1, v0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContactsSummary(I)I
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityMessageSenders()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
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

    .line 462
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_none_messages:I

    return p0

    .line 464
    :cond_2
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_none_calls:I

    return p0

    .line 458
    :cond_3
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_starred:I

    return p0

    .line 456
    :cond_4
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_contacts:I

    return p0

    .line 454
    :cond_5
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_anyone:I

    return p0
.end method

.method protected getConversationSummary()I
    .locals 1

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityConversationSenders()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 481
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_no_conversations:I

    return p0

    .line 479
    :cond_0
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_no_conversations:I

    return p0

    .line 477
    :cond_1
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_important_conversations:I

    return p0

    .line 475
    :cond_2
    sget p0, Lcom/android/settings/R$string;->zen_mode_from_all_conversations:I

    return p0
.end method

.method public getExceptionContact()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getNewDefaultPriorityCategories(ZI)I
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-eqz p1, :cond_0

    or-int/2addr p0, p2

    goto :goto_0

    :cond_0
    not-int p1, p2

    and-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public getPriorityCallSenders()I
    .locals 1

    const/16 v0, 0x8

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getPriorityConversationSenders()I
    .locals 1

    const/16 v0, 0x100

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public getPriorityMessageSenders()I
    .locals 1

    const/4 v0, 0x4

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method getStarredContacts(Landroid/database/Cursor;)Ljava/util/List;
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

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 633
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 635
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->zen_mode_starred_contacts_empty_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 636
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    return-object v0
.end method

.method getStarredContactsSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 657
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getStarredContacts()Ljava/util/List;

    move-result-object p1

    .line 658
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 659
    new-instance v1, Landroid/icu/text/MessageFormat;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->zen_mode_starred_contacts_summary_contacts:I

    .line 660
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 661
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 662
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 663
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "count"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const/4 v3, 0x0

    .line 665
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "contact_1"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 667
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "contact_2"

    invoke-interface {p0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 669
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "contact_3"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_0
    invoke-virtual {v1, p0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->state:I

    return p0
.end method

.method protected getZenMode()I
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    const-string/jumbo v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    return v0
.end method

.method protected isPriorityCategoryEnabled(I)Z
    .locals 0

    .line 216
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

.method protected isVisualEffectSuppressed(I)Z
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeZenRule(Ljava/lang/String;)Z
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected saveConversationSenders(I)V
    .locals 8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    .line 360
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getNewDefaultPriorityCategories(ZI)I

    move-result v3

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    move-object v2, p0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/notification/zen/ZenModeBackend;->savePolicy(IIIII)V

    return-void
.end method

.method protected savePolicy(IIIII)V
    .locals 7

    .line 287
    new-instance v6, Landroid/app/NotificationManager$Policy;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 289
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v6}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method protected savePolicyWithContactException(IIIIIILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 296
    new-instance v9, Landroid/app/NotificationManager$Policy;

    move-object v1, v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIILjava/util/List;)V

    iput-object v9, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 298
    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method public saveSenders(II)V
    .locals 12

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityCallSenders()I

    move-result v0

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v1

    .line 326
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPrioritySenders(I)I

    move-result v2

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getExceptionContact()Ljava/util/List;

    move-result-object v10

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getState()I

    move-result v8

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v11, v4

    if-ne p2, v3, :cond_1

    move p2, v2

    :cond_1
    const/16 v2, 0x8

    if-ne p1, v2, :cond_2

    const-string v0, "Calls"

    move v5, p2

    goto :goto_1

    :cond_2
    const-string v2, ""

    move v5, v0

    move-object v0, v2

    :goto_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const-string v0, "Messages"

    move v6, p2

    goto :goto_2

    :cond_3
    move v6, v1

    .line 347
    :goto_2
    invoke-virtual {p0, v11, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getNewDefaultPriorityCategories(ZI)I

    move-result v4

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v7, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v9, p1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/notification/zen/ZenModeBackend;->savePolicyWithContactException(IIIIIILjava/util/List;)V

    .line 352
    sget-boolean p1, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPrefChange allow"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " allow"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "From="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method protected saveSoundPolicy(IZ)V
    .locals 8

    .line 277
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getNewDefaultPriorityCategories(ZI)I

    move-result v1

    .line 279
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v2, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v3, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v4, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v5, p1, Landroid/app/NotificationManager$Policy;->state:I

    iget v6, p1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getExceptionContact()Ljava/util/List;

    move-result-object v7

    move-object v0, p0

    .line 279
    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/notification/zen/ZenModeBackend;->savePolicyWithContactException(IIIIIILjava/util/List;)V

    return-void
.end method

.method protected saveVisualEffectsPolicy(IZ)V
    .locals 11

    .line 266
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_settings_updated"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    invoke-direct {p0, p2, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getNewSuppressedEffects(ZI)I

    move-result v7

    .line 271
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v4, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v5, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v6, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v8, p1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v9, p1, Landroid/app/NotificationManager$Policy;->state:I

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getExceptionContact()Ljava/util/List;

    move-result-object v10

    move-object v3, p0

    .line 271
    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/notification/zen/ZenModeBackend;->savePolicyWithContactException(IIIIIILjava/util/List;)V

    return-void
.end method

.method public setAppBypassDnd(Ljava/lang/String;IZ)V
    .locals 1

    .line 739
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/zen/ZenModeBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->setAppBypassDnd(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 741
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->TAG:Ljava/lang/String;

    const-string p2, "Error calling NoMan"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method setDefaultZenPolicy(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;
    .locals 4

    .line 563
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->getZenPolicySenders(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 570
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->getZenPolicySenders(I)I

    move-result v1

    .line 577
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowConversationsFrom()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    .line 584
    :goto_1
    new-instance v3, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v3, p1}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 585
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result p1

    invoke-virtual {v3, p1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    .line 586
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 587
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 588
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    .line 589
    invoke-virtual {p1, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    .line 590
    invoke-virtual {p1, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 591
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 592
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 593
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 594
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showFullScreenIntents()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 595
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showLights()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 596
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showAmbient()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 597
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showInNotificationList()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 598
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showBadges()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 599
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showPeeking()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 600
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showStatusBarIcons()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    .line 601
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    return-object p0
.end method

.method public setLifeStyleZenMode(Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->createAutomaticZenRule(Ljava/lang/String;)V

    return-void
.end method

.method public setLifeStyleZenModeoff()V
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRuleId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRuleId:Ljava/lang/String;

    goto :goto_1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 134
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

    .line 135
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AutomaticZenRule;

    .line 136
    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 137
    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setZenMode(I)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getZenMode()I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    return-void
.end method

.method public setZenModeForDuration(I)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    .line 199
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    .line 198
    invoke-static {v0, p1, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object p1

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 200
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getZenMode()I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    return-void
.end method

.method toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 626
    new-instance p0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 627
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0
.end method

.method protected updatePolicy()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    :cond_0
    return-void
.end method

.method protected updateZenMode()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    const-string/jumbo v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    return-void
.end method

.method protected updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result p0

    return p0
.end method
