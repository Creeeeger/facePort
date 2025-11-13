.class public final Landroid/service/notification/ZenPolicy;
.super Ljava/lang/Object;
.source "ZenPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenPolicy$Builder;,
        Landroid/service/notification/ZenPolicy$ChannelType;,
        Landroid/service/notification/ZenPolicy$State;,
        Landroid/service/notification/ZenPolicy$ConversationSenders;,
        Landroid/service/notification/ZenPolicy$PeopleType;,
        Landroid/service/notification/ZenPolicy$VisualEffect;,
        Landroid/service/notification/ZenPolicy$PriorityCategory;,
        Landroid/service/notification/ZenPolicy$ModifiableField;
    }
.end annotation


# static fields
.field public static final blacklist CHANNEL_POLICY_NONE:I = 0x2

.field public static final blacklist CHANNEL_POLICY_PRIORITY:I = 0x1

.field public static final blacklist CHANNEL_POLICY_UNSET:I = 0x0

.field public static final whitelist CONVERSATION_SENDERS_ANYONE:I = 0x1

.field public static final whitelist CONVERSATION_SENDERS_IMPORTANT:I = 0x2

.field public static final whitelist CONVERSATION_SENDERS_NONE:I = 0x3

.field public static final whitelist CONVERSATION_SENDERS_UNSET:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FIELD_ALLOW_CHANNELS:I = 0x8

.field public static final blacklist FIELD_CALLS:I = 0x2

.field public static final blacklist FIELD_CONVERSATIONS:I = 0x4

.field public static final blacklist FIELD_MESSAGES:I = 0x1

.field public static final blacklist FIELD_PRIORITY_CATEGORY_ALARMS:I = 0x80

.field public static final blacklist FIELD_PRIORITY_CATEGORY_EVENTS:I = 0x20

.field public static final blacklist FIELD_PRIORITY_CATEGORY_MEDIA:I = 0x100

.field public static final blacklist FIELD_PRIORITY_CATEGORY_REMINDERS:I = 0x10

.field public static final blacklist FIELD_PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x40

.field public static final blacklist FIELD_PRIORITY_CATEGORY_SYSTEM:I = 0x200

.field public static final blacklist FIELD_VISUAL_EFFECT_AMBIENT:I = 0x8000

.field public static final blacklist FIELD_VISUAL_EFFECT_BADGE:I = 0x4000

.field public static final blacklist FIELD_VISUAL_EFFECT_FULL_SCREEN_INTENT:I = 0x400

.field public static final blacklist FIELD_VISUAL_EFFECT_LIGHTS:I = 0x800

.field public static final blacklist FIELD_VISUAL_EFFECT_NOTIFICATION_LIST:I = 0x10000

.field public static final blacklist FIELD_VISUAL_EFFECT_PEEK:I = 0x1000

.field public static final blacklist FIELD_VISUAL_EFFECT_STATUS_BAR:I = 0x2000

.field public static final blacklist NUM_PRIORITY_CATEGORIES:I = 0x9

.field public static final blacklist NUM_VISUAL_EFFECTS:I = 0x7

.field public static final whitelist PEOPLE_TYPE_ANYONE:I = 0x1

.field public static final whitelist PEOPLE_TYPE_CONTACTS:I = 0x2

.field public static final whitelist PEOPLE_TYPE_NONE:I = 0x4

.field public static final whitelist PEOPLE_TYPE_STARRED:I = 0x3

.field public static final whitelist PEOPLE_TYPE_UNSET:I = 0x0

.field public static final blacklist PRIORITY_CATEGORY_ALARMS:I = 0x5

.field public static final blacklist PRIORITY_CATEGORY_CALLS:I = 0x3

.field public static final blacklist PRIORITY_CATEGORY_CONVERSATIONS:I = 0x8

.field public static final blacklist PRIORITY_CATEGORY_EVENTS:I = 0x1

.field public static final blacklist PRIORITY_CATEGORY_MEDIA:I = 0x6

.field public static final blacklist PRIORITY_CATEGORY_MESSAGES:I = 0x2

.field public static final blacklist PRIORITY_CATEGORY_REMINDERS:I = 0x0

.field public static final blacklist PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x4

.field public static final blacklist PRIORITY_CATEGORY_SYSTEM:I = 0x7

.field public static final blacklist SELECTED_APPS_ALLOWED:I = 0x0

.field public static final blacklist SELECTED_APPS_ALLOWED_UNSET:I = -0x1

.field public static final blacklist SELECTED_APPS_DISALLOWED:I = 0x1

.field public static final blacklist SELECTED_CONTACTS_ALLOWED:I = 0x0

.field public static final blacklist SELECTED_CONTACTS_ALLOWED_UNSET:I = -0x1

.field public static final blacklist SELECTED_CONTACTS_DISALLOWED:I = 0x1

.field public static final whitelist STATE_ALLOW:I = 0x1

.field public static final whitelist STATE_DISALLOW:I = 0x2

.field public static final whitelist STATE_UNSET:I = 0x0

.field public static final blacklist VISUAL_EFFECT_AMBIENT:I = 0x5

.field public static final blacklist VISUAL_EFFECT_BADGE:I = 0x4

.field public static final blacklist VISUAL_EFFECT_FULL_SCREEN_INTENT:I = 0x0

.field public static final blacklist VISUAL_EFFECT_LIGHTS:I = 0x1

.field public static final blacklist VISUAL_EFFECT_NOTIFICATION_LIST:I = 0x6

.field public static final blacklist VISUAL_EFFECT_PEEK:I = 0x2

.field public static final blacklist VISUAL_EFFECT_STATUS_BAR:I = 0x3


# instance fields
.field private blacklist appBypassDndFlag:I

.field private blacklist exceptionContactsFlag:I

.field private blacklist mAllowChannels:I

.field private blacklist mAppsToBypassDnd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConversationSenders:I

.field private blacklist mExceptionContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsAppBypassDndOverridden:Z

.field private blacklist mIsContactsOverridden:Z

.field private blacklist mPriorityCalls:I

.field private blacklist mPriorityCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPriorityMessages:I

.field private blacklist mVisualEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowChannels(Landroid/service/notification/ZenPolicy;)I
    .locals 0

    iget p0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppsToBypassDnd(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConversationSenders(Landroid/service/notification/ZenPolicy;)I
    .locals 0

    iget p0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExceptionContacts(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriorityCalls(Landroid/service/notification/ZenPolicy;)I
    .locals 0

    iget p0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriorityMessages(Landroid/service/notification/ZenPolicy;)I
    .locals 0

    iget p0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputappBypassDndFlag(Landroid/service/notification/ZenPolicy;I)V
    .locals 0

    iput p1, p0, Landroid/service/notification/ZenPolicy;->appBypassDndFlag:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputexceptionContactsFlag(Landroid/service/notification/ZenPolicy;I)V
    .locals 0

    iput p1, p0, Landroid/service/notification/ZenPolicy;->exceptionContactsFlag:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowChannels(Landroid/service/notification/ZenPolicy;I)V
    .locals 0

    iput p1, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAppsToBypassDnd(Landroid/service/notification/ZenPolicy;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V
    .locals 0

    iput p1, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExceptionContacts(Landroid/service/notification/ZenPolicy;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAppBypassDndOverridden(Landroid/service/notification/ZenPolicy;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/ZenPolicy;->mIsAppBypassDndOverridden:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsContactsOverridden(Landroid/service/notification/ZenPolicy;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V
    .locals 0

    iput p1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPriorityCategories(Landroid/service/notification/ZenPolicy;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V
    .locals 0

    iput p1, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVisualEffects(Landroid/service/notification/ZenPolicy;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smtrimList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1}, Landroid/service/notification/ZenPolicy;->trimList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/ZenPolicy$1;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iput v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iput v0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iput-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsAppBypassDndOverridden:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/service/notification/ZenPolicy;->exceptionContactsFlag:I

    iput v2, p0, Landroid/service/notification/ZenPolicy;->appBypassDndFlag:I

    iput v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-static {v2, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iput v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iput v0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iput-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsAppBypassDndOverridden:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/service/notification/ZenPolicy;->exceptionContactsFlag:I

    iput v1, p0, Landroid/service/notification/ZenPolicy;->appBypassDndFlag:I

    iput v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    iput-object p1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    iput-object p2, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    iput p3, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iput p4, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iput p5, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iput p6, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    return-void
.end method

.method public static blacklist appBypassDndFlagToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECTED_APPS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SELECTED_APPS_DISALLOWED"

    return-object v0

    :pswitch_1
    const-string v0, "SELECTED_APPS_ALLOWED"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "unset"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist appsToBypassDndToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist channelTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalidChannelType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "none"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "priority"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "unset"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist conversationTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalidConversationType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "none"

    return-object v0

    :pswitch_1
    const-string v0, "important"

    return-object v0

    :pswitch_2
    const-string v0, "anyone"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "unset"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist exceptionContactsFlagToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECTED_CONTACTS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SELECTED_CONTACTS_DISALLOWED"

    return-object v0

    :pswitch_1
    const-string v0, "SELECTED_CONTACTS_ALLOWED"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "unset"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist fieldsToString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "FIELD_MESSAGES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "FIELD_CALLS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "FIELD_CONVERSATIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "FIELD_ALLOW_CHANNELS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, "FIELD_PRIORITY_CATEGORY_REMINDERS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    const-string v1, "FIELD_PRIORITY_CATEGORY_EVENTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const-string v1, "FIELD_PRIORITY_CATEGORY_REPEAT_CALLERS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    const-string v1, "FIELD_PRIORITY_CATEGORY_ALARMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    const-string v1, "FIELD_PRIORITY_CATEGORY_MEDIA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_9

    const-string v1, "FIELD_PRIORITY_CATEGORY_SYSTEM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_a

    const-string v1, "FIELD_VISUAL_EFFECT_FULL_SCREEN_INTENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_b

    const-string v1, "FIELD_VISUAL_EFFECT_LIGHTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_c

    const-string v1, "FIELD_VISUAL_EFFECT_PEEK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_d

    const-string v1, "FIELD_VISUAL_EFFECT_STATUS_BAR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_e

    const-string v1, "FIELD_VISUAL_EFFECT_BADGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    const-string v1, "FIELD_VISUAL_EFFECT_AMBIENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    const-string v1, "FIELD_VISUAL_EFFECT_NOTIFICATION_LIST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getZenPolicyPriorityCategoryState(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v0

    return v0

    :pswitch_2
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v0

    return v0

    :pswitch_3
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v0

    return v0

    :pswitch_4
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v0

    return v0

    :pswitch_5
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v0

    return v0

    :pswitch_6
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v0

    return v0

    :pswitch_7
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v0

    return v0

    :pswitch_8
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getZenPolicyVisualEffectState(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v0

    return v0

    :pswitch_2
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v0

    return v0

    :pswitch_3
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v0

    return v0

    :pswitch_4
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v0

    return v0

    :pswitch_5
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v0

    return v0

    :pswitch_6
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist indexToCategory(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "convs"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "system"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "media"

    return-object v0

    :pswitch_3
    const-string v0, "alarms"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "repeatCallers"

    return-object v0

    :pswitch_5
    const-string v0, "calls"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "messages"

    return-object v0

    :pswitch_7
    const-string v0, "events"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "reminders"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist indexToVisualEffect(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "notificationList"

    return-object v0

    :pswitch_1
    const-string v0, "ambient"

    return-object v0

    :pswitch_2
    const-string v0, "badge"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "statusBar"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "peek"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "lights"

    return-object v0

    :pswitch_6
    const-string v0, "fullScreenIntent"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist peopleTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalidPeopleType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "none"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "starred_contacts"

    return-object v0

    :pswitch_2
    const-string v0, "contacts"

    return-object v0

    :pswitch_3
    const-string v0, "anyone"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "unset"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist priorityCategoriesToString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->indexToCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/service/notification/ZenPolicy;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist stateToBoolean(IZ)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    return p1

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalidState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "disallow"

    return-object v0

    :pswitch_1
    const-string v0, "allow"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "unset"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist trimList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private blacklist visualEffectsToString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->indexToVisualEffect(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/service/notification/ZenPolicy;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist apply(Landroid/service/notification/ZenPolicy;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v3, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iget v3, p1, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    if-ge v2, v3, :cond_2

    iget v2, p1, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iput v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iget v3, p1, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    if-ge v2, v3, :cond_3

    iget v2, p1, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iput v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    iget v2, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iget v3, p1, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    if-ge v2, v3, :cond_4

    iget v2, p1, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iput v2, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p1, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    iget-object v3, p1, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getAppBypassDndFlag()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getAppBypassDndFlag()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenPolicy;->appBypassDndFlag:I

    :cond_9
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getExceptionContactsFlag()I

    move-result v0

    if-eq v0, v1, :cond_a

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getExceptionContactsFlag()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenPolicy;->exceptionContactsFlag:I

    :cond_a
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getExceptionContacts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    iget-boolean v0, p1, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getAppsToBypassDnd()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    iget-boolean v0, p1, Landroid/service/notification/ZenPolicy;->mIsAppBypassDndOverridden:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsAppBypassDndOverridden:Z

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    if-eq v0, v2, :cond_d

    iget v0, p1, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    if-eqz v0, :cond_d

    iget v0, p1, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    iput v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    :cond_d
    return-void
.end method

.method public blacklist copy()Landroid/service/notification/ZenPolicy;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenPolicy;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/service/notification/ZenPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10e00000001L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000002L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000003L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000004L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000005L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000006L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000007L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000008L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000009L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000aL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000bL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000cL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000dL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000eL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000fL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000011L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000010L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/notification/ZenPolicy;

    iget-object v3, v2, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    iget-object v4, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    iget-object v4, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iget v4, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iget v4, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iget v4, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenPolicy;->appBypassDndFlag:I

    iget v4, p0, Landroid/service/notification/ZenPolicy;->appBypassDndFlag:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenPolicy;->exceptionContactsFlag:I

    iget v4, p0, Landroid/service/notification/ZenPolicy;->exceptionContactsFlag:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenPolicy;->mIsAppBypassDndOverridden:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenPolicy;->mIsAppBypassDndOverridden:Z

    if-ne v3, v4, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    iget v4, v2, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    iget v5, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    if-ne v4, v5, :cond_3

    move v1, v0

    :cond_3
    return v1

    :cond_4
    return v3
.end method

.method public blacklist getAllowedChannels()I
    .locals 1

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    return v0
.end method

.method public blacklist getAppBypassDndFlag()I
    .locals 1

    iget v0, p0, Landroid/service/notification/ZenPolicy;->appBypassDndFlag:I

    return v0
.end method

.method public blacklist getAppsToBypassDnd()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getExceptionContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getExceptionContactsFlag()I
    .locals 1

    iget v0, p0, Landroid/service/notification/ZenPolicy;->exceptionContactsFlag:I

    return v0
.end method

.method public whitelist getPriorityCallSenders()I
    .locals 1

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    return v0
.end method

.method public whitelist getPriorityCategoryAlarms()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryCalls()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryConversations()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryEvents()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryMedia()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryMessages()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryReminders()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryRepeatCallers()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategorySystem()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getPriorityChannelsAllowed()I
    .locals 1

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getPriorityConversationSenders()I
    .locals 1

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    return v0
.end method

.method public whitelist getPriorityMessageSenders()I
    .locals 1

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    return v0
.end method

.method public whitelist getVisualEffectAmbient()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectBadge()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectFullScreenIntent()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectLights()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectNotificationList()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectPeek()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectStatusBar()I
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    iget v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isAppBypassDndOverridden()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsAppBypassDndOverridden:Z

    return v0
.end method

.method public blacklist isCategoryAllowed(IZ)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/service/notification/ZenPolicy;->getZenPolicyPriorityCategoryState(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/service/notification/ZenPolicy;->stateToBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public blacklist isContactsOverridden()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    return v0
.end method

.method public blacklist isVisualEffectAllowed(IZ)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/service/notification/ZenPolicy;->getZenPolicyVisualEffectState(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/service/notification/ZenPolicy;->stateToBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public blacklist overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;
    .locals 5

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p1, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v3, v0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget v3, p1, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iput v3, v0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    iget v3, p1, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iput v3, v0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    iget v3, p1, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iput v3, v0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p1, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    iget-object v3, p1, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget v1, p1, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    if-eqz v1, :cond_7

    iget v1, p1, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    iput v1, v0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    :cond_7
    return-object v0
.end method

.method public blacklist shouldHideAllVisualEffects()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldShowAllVisualEffects()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public blacklist toProto()[B
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v2, 0x10e00000001L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000002L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000003L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000004L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000005L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000006L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000007L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000008L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000009L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000aL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000bL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000cL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000dL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000eL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e0000000fL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000010L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000011L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000012L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000013L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v2, 0x10e00000014L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "priorityCategories=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy;->priorityCategoriesToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], visualEffects=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy;->visualEffectsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], priorityCallsSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->peopleTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priorityMessagesSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->peopleTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priorityConversationSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->conversationTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appBypassDndFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenPolicy;->appBypassDndFlag:I

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->appBypassDndFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appsToBypassDnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->appsToBypassDndToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exceptionContactsFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenPolicy;->exceptionContactsFlag:I

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->exceptionContactsFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exceptionContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->appsToBypassDndToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isContactsOverridden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAppBypassDndOverridden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenPolicy;->mIsAppBypassDndOverridden:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", allowChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->channelTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget v0, p0, Landroid/service/notification/ZenPolicy;->appBypassDndFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Landroid/service/notification/ZenPolicy;->exceptionContactsFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsAppBypassDndOverridden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
