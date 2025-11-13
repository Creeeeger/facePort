.class public Landroid/app/NotificationManager$Policy;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManager$Policy$ConversationSenders;,
        Landroid/app/NotificationManager$Policy$PrioritySenders;
    }
.end annotation


# static fields
.field public static final greylist-max-o ALL_PRIORITY_CATEGORIES:[I

.field private static final greylist-max-o ALL_SUPPRESSED_EFFECTS:[I

.field public static final whitelist CONVERSATION_SENDERS_ANYONE:I = 0x1

.field public static final whitelist CONVERSATION_SENDERS_IMPORTANT:I = 0x2

.field public static final whitelist CONVERSATION_SENDERS_NONE:I = 0x3

.field public static final blacklist CONVERSATION_SENDERS_UNSET:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationManager$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PRIORITY_CATEGORY_ALARMS:I = 0x20

.field public static final whitelist PRIORITY_CATEGORY_CALLS:I = 0x8

.field public static final whitelist PRIORITY_CATEGORY_CONVERSATIONS:I = 0x100

.field public static final whitelist PRIORITY_CATEGORY_EVENTS:I = 0x2

.field public static final whitelist PRIORITY_CATEGORY_MEDIA:I = 0x40

.field public static final whitelist PRIORITY_CATEGORY_MESSAGES:I = 0x4

.field public static final whitelist PRIORITY_CATEGORY_REMINDERS:I = 0x1

.field public static final whitelist PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x10

.field public static final whitelist PRIORITY_CATEGORY_SYSTEM:I = 0x80

.field public static final whitelist PRIORITY_SENDERS_ANY:I = 0x0

.field public static final whitelist PRIORITY_SENDERS_CONTACTS:I = 0x1

.field public static final whitelist PRIORITY_SENDERS_STARRED:I = 0x2

.field private static final greylist-max-o SCREEN_OFF_SUPPRESSED_EFFECTS:[I

.field private static final greylist-max-o SCREEN_ON_SUPPRESSED_EFFECTS:[I

.field public static final blacklist SELECTED_APPS_ALLOWED:I = 0x0

.field public static final blacklist SELECTED_APPS_ALLOWED_UNSET:I = -0x1

.field public static final blacklist SELECTED_APPS_DISALLOWED:I = 0x1

.field public static final blacklist SELECTED_CONTACTS_ALLOWED:I = 0x0

.field public static final blacklist SELECTED_CONTACTS_ALLOWED_UNSET:I = -0x1

.field public static final blacklist SELECTED_CONTACTS_DISALLOWED:I = 0x1

.field public static final greylist-max-o STATE_CHANNELS_BYPASSING_DND:I = 0x1

.field public static final blacklist STATE_PRIORITY_CHANNELS_BLOCKED:I = 0x2

.field public static final greylist-max-o STATE_UNSET:I = -0x1

.field public static final greylist-max-o SUPPRESSED_EFFECTS_UNSET:I = -0x1

.field public static final whitelist SUPPRESSED_EFFECT_AMBIENT:I = 0x80

.field public static final whitelist SUPPRESSED_EFFECT_BADGE:I = 0x40

.field public static final whitelist SUPPRESSED_EFFECT_FULL_SCREEN_INTENT:I = 0x4

.field public static final whitelist SUPPRESSED_EFFECT_LIGHTS:I = 0x8

.field public static final whitelist SUPPRESSED_EFFECT_NOTIFICATION_LIST:I = 0x100

.field public static final whitelist SUPPRESSED_EFFECT_PEEK:I = 0x10

.field public static final whitelist SUPPRESSED_EFFECT_SCREEN_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUPPRESSED_EFFECT_SCREEN_ON:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUPPRESSED_EFFECT_STATUS_BAR:I = 0x20


# instance fields
.field public final blacklist appBypassDndFlag:I

.field public final blacklist exceptionContactsFlag:I

.field private blacklist mAppBypassDndList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExceptionContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final whitelist priorityCallSenders:I

.field public final whitelist priorityCategories:I

.field public final whitelist priorityConversationSenders:I

.field public final whitelist priorityMessageSenders:I

.field public final greylist-max-o state:I

.field public final whitelist suppressedVisualEffects:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/16 v3, 0x80

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/app/NotificationManager$Policy;->SCREEN_OFF_SUPPRESSED_EFFECTS:[I

    const/4 v0, 0x2

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/16 v3, 0x40

    const/16 v4, 0x100

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/app/NotificationManager$Policy;->SCREEN_ON_SUPPRESSED_EFFECTS:[I

    new-instance v0, Landroid/app/NotificationManager$Policy$1;

    invoke-direct {v0}, Landroid/app/NotificationManager$Policy$1;-><init>()V

    sput-object v0, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x1
        0x2
        0x4
        0x8
        0x10
        0x100
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor whitelist <init>(III)V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .locals 7

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-void
.end method

.method public constructor blacklist <init>(IIIIII)V
    .locals 8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIILjava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(IIIIIIILjava/util/List;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iput p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iput p3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iput p4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iput p5, p0, Landroid/app/NotificationManager$Policy;->state:I

    iput p6, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iput p7, p0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    if-eqz p8, :cond_0

    move-object v0, p8

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    iput p9, p0, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    if-eqz p10, :cond_1

    move-object v0, p10

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object v0, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iput p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iput p3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iput p4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iput p5, p0, Landroid/app/NotificationManager$Policy;->state:I

    iput p6, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    if-eqz p7, :cond_0

    move-object v1, p7

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v1, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    iput v0, p0, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iput p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iput p3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iput p4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iput p5, p0, Landroid/app/NotificationManager$Policy;->state:I

    iput p6, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    if-eqz p7, :cond_0

    move-object v1, p7

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v1, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    iput v0, p0, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    if-eqz p8, :cond_1

    move-object v0, p8

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object v0, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIIILjava/util/List;ILjava/util/List;)V

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o areAllVisualEffectsSuppressed(I)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v1, v1, v0

    and-int v2, p0, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    if-lez p3, :cond_1

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static blacklist conversationSendersToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalidConversationType{"

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

    :pswitch_1
    const-string/jumbo v0, "none"

    return-object v0

    :pswitch_2
    const-string v0, "important"

    return-object v0

    :pswitch_3
    const-string v0, "anyone"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "unset"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static greylist-max-o effectToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "SUPPRESSED_EFFECT_NOTIFICATION_LIST"

    return-object v0

    :sswitch_1
    const-string v0, "SUPPRESSED_EFFECT_AMBIENT"

    return-object v0

    :sswitch_2
    const-string v0, "SUPPRESSED_EFFECT_BADGE"

    return-object v0

    :sswitch_3
    const-string v0, "SUPPRESSED_EFFECT_STATUS_BAR"

    return-object v0

    :sswitch_4
    const-string v0, "SUPPRESSED_EFFECT_PEEK"

    return-object v0

    :sswitch_5
    const-string v0, "SUPPRESSED_EFFECT_LIGHTS"

    return-object v0

    :sswitch_6
    const-string v0, "SUPPRESSED_EFFECT_FULL_SCREEN_INTENT"

    return-object v0

    :sswitch_7
    const-string v0, "SUPPRESSED_EFFECT_SCREEN_ON"

    return-object v0

    :sswitch_8
    const-string v0, "SUPPRESSED_EFFECT_SCREEN_OFF"

    return-object v0

    :sswitch_9
    const-string v0, "SUPPRESSED_EFFECTS_UNSET"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_9
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x4 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o getAllSuppressedVisualEffects()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v2, v2, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static blacklist policyState(ZZ)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    if-nez p1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method public static whitelist priorityCategoriesToString(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_3

    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    aget v2, v2, v1

    and-int v4, p0, v2

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->priorityCategoryToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    not-int v3, v2

    and-int/2addr p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o priorityCategoryToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "PRIORITY_CATEGORY_CONVERSATIONS"

    return-object v0

    :sswitch_1
    const-string v0, "PRIORITY_CATEGORY_SYSTEM"

    return-object v0

    :sswitch_2
    const-string v0, "PRIORITY_CATEGORY_MEDIA"

    return-object v0

    :sswitch_3
    const-string v0, "PRIORITY_CATEGORY_ALARMS"

    return-object v0

    :sswitch_4
    const-string v0, "PRIORITY_CATEGORY_REPEAT_CALLERS"

    return-object v0

    :sswitch_5
    const-string v0, "PRIORITY_CATEGORY_CALLS"

    return-object v0

    :sswitch_6
    const-string v0, "PRIORITY_CATEGORY_MESSAGES"

    return-object v0

    :sswitch_7
    const-string v0, "PRIORITY_CATEGORY_EVENTS"

    return-object v0

    :sswitch_8
    const-string v0, "PRIORITY_CATEGORY_REMINDERS"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x4 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist prioritySendersToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY_SENDERS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "PRIORITY_SENDERS_STARRED"

    return-object v0

    :pswitch_1
    const-string v0, "PRIORITY_SENDERS_CONTACTS"

    return-object v0

    :pswitch_2
    const-string v0, "PRIORITY_SENDERS_ANY"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist secAreAllVisualEffectsSuppressed(I)Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    sget-object v1, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v1, v1, v0

    const/16 v3, 0x80

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/app/NotificationManager$Policy;->supportLedIndicator()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    and-int v2, p0, v1

    if-nez v2, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static blacklist secAreAnyScreenOffEffectsSuppressed(I)Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/app/NotificationManager$Policy;->SCREEN_OFF_SUPPRESSED_EFFECTS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, Landroid/app/NotificationManager$Policy;->SCREEN_OFF_SUPPRESSED_EFFECTS:[I

    aget v1, v1, v0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/app/NotificationManager$Policy;->supportLedIndicator()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    and-int v3, p0, v1

    if-eqz v3, :cond_2

    return v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secAreAnyScreenOnEffectsSuppressed(I)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/app/NotificationManager$Policy;->SCREEN_ON_SUPPRESSED_EFFECTS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Landroid/app/NotificationManager$Policy;->SCREEN_ON_SUPPRESSED_EFFECTS:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    and-int v2, p0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist supportLedIndicator()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/led/led_blink"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist suppressedEffectsToString(I)Ljava/lang/String;
    .locals 5

    if-gtz p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_3

    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v2, v2, v1

    and-int v4, p0, v2

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->effectToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    not-int v3, v2

    and-int/2addr p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist suppressedVisualEffectsEqual(II)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 p1, p1, 0x10

    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    or-int/lit8 p1, p1, 0x4

    or-int/lit8 p1, p1, 0x8

    or-int/lit16 p1, p1, 0x80

    :cond_2
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_3

    or-int/lit8 p2, p2, 0x10

    :cond_3
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_4

    or-int/lit8 p2, p2, 0x4

    or-int/lit8 p2, p2, 0x8

    or-int/lit16 p2, p2, 0x80

    :cond_4
    and-int/lit8 v1, p1, 0x2

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_5

    move v1, p2

    goto :goto_0

    :cond_5
    move v1, p1

    :goto_0
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_6

    return v3

    :cond_6
    and-int/lit8 v1, p1, 0x1

    and-int/lit8 v2, p2, 0x1

    if-eq v1, v2, :cond_9

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_7

    move v1, p2

    goto :goto_1

    :cond_7
    move v1, p1

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_8

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_8

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_9

    :cond_8
    return v3

    :cond_9
    and-int/lit8 v1, p1, -0x3

    and-int/lit8 v1, v1, -0x2

    and-int/lit8 v2, p2, -0x3

    and-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_a

    goto :goto_2

    :cond_a
    move v0, v3

    :goto_2
    return v0
.end method

.method private static greylist-max-o toggleEffects(I[IZ)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    if-eqz p2, :cond_0

    or-int/2addr p0, v1

    goto :goto_1

    :cond_0
    not-int v2, v1

    and-int/2addr p0, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method


# virtual methods
.method public blacklist addAppBypassDnd(Ljava/lang/String;IZ)V
    .locals 9

    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add bypass dnd app - pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " allow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    :cond_1
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    sget-object v4, Landroid/service/notification/ZenModeConfig;->ZenConfigLock:Ljava/lang/Object;

    monitor-enter v4

    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    if-nez p3, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    sget-object v4, Landroid/service/notification/ZenModeConfig;->ZenConfigLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_4
    :goto_1
    iget-object v4, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addAppBypassDnd app="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    return-void

    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    :cond_6
    :goto_3
    return-void
.end method

.method public blacklist allowAlarms()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist allowCalls()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist allowCallsFrom()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    return v0
.end method

.method public blacklist allowConversations()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist allowConversationsFrom()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    return v0
.end method

.method public blacklist allowEvents()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist allowMedia()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist allowMessages()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist allowMessagesFrom()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    return v0
.end method

.method public blacklist allowPriorityChannels()Z
    .locals 3

    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public blacklist allowReminders()Z
    .locals 2

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist allowRepeatCallers()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist allowSystem()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist copy()Landroid/app/NotificationManager$Policy;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Landroid/app/NotificationManager$Policy;

    invoke-direct {v1, v0}, Landroid/app/NotificationManager$Policy;-><init>(Landroid/os/Parcel;)V
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

    const-wide v2, 0x20e00000001L

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-static {p1, v2, v3, v4}, Landroid/app/NotificationManager$Policy;->bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v2, 0x10e00000002L

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10e00000003L

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x20e00000004L

    iget v4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {p1, v2, v3, v4}, Landroid/app/NotificationManager$Policy;->bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/NotificationManager$Policy;

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v4, v2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {p0, v3, v4}, Landroid/app/NotificationManager$Policy;->suppressedVisualEffectsEqual(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/app/NotificationManager$Policy;->state:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->state:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    iget-object v4, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    iget-object v4, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v1
.end method

.method public blacklist getAppBypassDndList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getExceptionContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    return-object v0
.end method

.method public blacklist hasPriorityChannels()Z
    .locals 2

    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setAppBypassDndList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "set bypass dnd app list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public blacklist setExceptionContacts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public blacklist showAmbient()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist showBadges()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist showFullScreenIntents()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist showInNotificationList()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist showLights()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist showPeeking()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist showStatusBarIcons()Z
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationManager.Policy["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "priorityCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->priorityCategoriesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",priorityCallSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",priorityMessageSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",priorityConvSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->conversationSendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",exceptionContactsFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->exceptionContactsFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mExceptionContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",appBypassDndFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->appBypassDndFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAppBypassDndList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",suppressedVisualEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->suppressedEffectsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ",hasPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ",areChannelsBypassingDnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v1, p0, Landroid/app/NotificationManager$Policy;->state:I

    const-string/jumbo v2, "true"

    const-string v3, "false"

    const-string/jumbo v4, "unset"

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ",allowPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Landroid/app/NotificationManager$Policy;->state:I

    if-ne v6, v5, :cond_3

    move-object v2, v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mAppBypassDndList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
