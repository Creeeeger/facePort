.class public final Landroid/app/AutomaticZenRule;
.super Ljava/lang/Object;
.source "AutomaticZenRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AutomaticZenRule$AzrWithId;,
        Landroid/app/AutomaticZenRule$Builder;,
        Landroid/app/AutomaticZenRule$ModifiableField;,
        Landroid/app/AutomaticZenRule$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DISABLED:I = 0x0

.field private static final blacklist ENABLED:I = 0x1

.field public static final blacklist FIELD_ICON:I = 0x4

.field public static final blacklist FIELD_INTERRUPTION_FILTER:I = 0x2

.field public static final blacklist FIELD_NAME:I = 0x1

.field public static final blacklist MAX_DESC_LENGTH:I = 0x96

.field public static final blacklist MAX_STRING_LENGTH:I = 0x3e8

.field public static final blacklist TYPE_BEDTIME:I = 0x3

.field public static final blacklist TYPE_DRIVING:I = 0x4

.field public static final blacklist TYPE_IMMERSIVE:I = 0x5

.field public static final blacklist TYPE_MANAGED:I = 0x7

.field public static final blacklist TYPE_OTHER:I = 0x0

.field public static final blacklist TYPE_SCHEDULE_CALENDAR:I = 0x2

.field public static final blacklist TYPE_SCHEDULE_TIME:I = 0x1

.field public static final blacklist TYPE_THEATER:I = 0x6

.field public static final blacklist TYPE_UNKNOWN:I = -0x1


# instance fields
.field private greylist-max-o conditionId:Landroid/net/Uri;

.field private blacklist configurationActivity:Landroid/content/ComponentName;

.field private greylist-max-o creationTime:J

.field private greylist-max-o enabled:Z

.field private greylist-max-o interruptionFilter:I

.field private blacklist mAllowManualInvocation:Z

.field private blacklist mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

.field private blacklist mIconResId:I

.field private blacklist mModified:Z

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mTriggerDescription:Ljava/lang/String;

.field private blacklist mType:I

.field private blacklist mZenPolicy:Landroid/service/notification/ZenPolicy;

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o owner:Landroid/content/ComponentName;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputcreationTime(Landroid/app/AutomaticZenRule;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowManualInvocation(Landroid/app/AutomaticZenRule;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceEffects(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenDeviceEffects;)V
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIconResId(Landroid/app/AutomaticZenRule;I)V
    .locals 0

    iput p1, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTriggerDescription(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmType(Landroid/app/AutomaticZenRule;I)V
    .locals 0

    iput p1, p0, Landroid/app/AutomaticZenRule;->mType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckValidType(I)I
    .locals 0

    invoke-static {p0}, Landroid/app/AutomaticZenRule;->checkValidType(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/AutomaticZenRule$1;

    invoke-direct {v0}, Landroid/app/AutomaticZenRule$1;-><init>()V

    sput-object v0, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Landroid/app/AutomaticZenRule;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    const-class v1, Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Landroid/app/AutomaticZenRule;->getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-static {v1}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-static {v1}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    const-class v1, Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenPolicy;

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v0, v2

    :cond_3
    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenDeviceEffects;

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    :cond_4
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    iput v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    invoke-static {p1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    invoke-static {p2}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    invoke-static {p3}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-static {p4}, Landroid/app/AutomaticZenRule;->getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    iput p6, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    iput-boolean p7, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    iput-object p5, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    iput-wide p8, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    return-void
.end method

.method private static blacklist checkValidType(I)I
    .locals 2

    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Rule type must be one of TYPE_UNKNOWN, TYPE_OTHER, TYPE_SCHEDULE_TIME, TYPE_SCHEDULE_CALENDAR, TYPE_BEDTIME, TYPE_DRIVING, TYPE_IMMERSIVE, TYPE_THEATER, or TYPE_MANAGED"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return p0
.end method

.method public static blacklist fieldsToString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "FIELD_NAME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "FIELD_INTERRUPTION_FILTER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "FIELD_ICON"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
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

.method private static blacklist getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getTrimmedString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method private static blacklist getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Landroid/app/AutomaticZenRule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/AutomaticZenRule;

    iget-boolean v3, v2, Landroid/app/AutomaticZenRule;->enabled:Z

    iget-boolean v4, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/app/AutomaticZenRule;->mModified:Z

    iget-boolean v4, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    iget v4, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v2, Landroid/app/AutomaticZenRule;->creationTime:J

    iget-wide v5, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    iget-object v4, v2, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-object v5, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, v2, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    iget-boolean v5, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    if-ne v4, v5, :cond_3

    iget v4, v2, Landroid/app/AutomaticZenRule;->mIconResId:I

    iget v5, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    if-ne v4, v5, :cond_3

    iget-object v4, v2, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v2, Landroid/app/AutomaticZenRule;->mType:I

    iget v5, p0, Landroid/app/AutomaticZenRule;->mType:I

    if-ne v4, v5, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    nop

    :goto_1
    return v1

    :cond_4
    return v3
.end method

.method public whitelist getConditionId()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getConfigurationActivity()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getCreationTime()J
    .locals 2

    iget-wide v0, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    return-wide v0
.end method

.method public blacklist getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;
    .locals 1

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    return-object v0
.end method

.method public blacklist getIconResId()I
    .locals 1

    iget v0, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    return v0
.end method

.method public whitelist getInterruptionFilter()I
    .locals 1

    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOwner()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTriggerDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    return v0
.end method

.method public whitelist getZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 1

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    iget v1, v0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    iget-object v6, v0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v9, v0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-boolean v1, v0, Landroid/app/AutomaticZenRule;->mModified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-wide v11, v0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, v0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    iget-boolean v1, v0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget v1, v0, Landroid/app/AutomaticZenRule;->mIconResId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    iget v1, v0, Landroid/app/AutomaticZenRule;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1

    :cond_0
    iget-boolean v1, v0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    iget v1, v0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    iget-object v6, v0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    iget-boolean v1, v0, Landroid/app/AutomaticZenRule;->mModified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-wide v10, v0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, v0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    return v0
.end method

.method public blacklist isManualInvocationAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    return v0
.end method

.method public blacklist isModified()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    return v0
.end method

.method public whitelist setConditionId(Landroid/net/Uri;)V
    .locals 1

    invoke-static {p1}, Landroid/app/AutomaticZenRule;->getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    return-void
.end method

.method public whitelist setConfigurationActivity(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {p1}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public blacklist setDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    return-void
.end method

.method public blacklist setIconResId(I)V
    .locals 0

    iput p1, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    return-void
.end method

.method public whitelist setInterruptionFilter(I)V
    .locals 0

    iput p1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    return-void
.end method

.method public blacklist setManualInvocationAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    return-void
.end method

.method public blacklist setModified(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    return-void
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    return-void
.end method

.method public blacklist setTriggerDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    return-void
.end method

.method public blacklist setType(I)V
    .locals 1

    invoke-static {p1}, Landroid/app/AutomaticZenRule;->checkValidType(I)I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    return-void
.end method

.method public whitelist setZenPolicy(Landroid/service/notification/ZenPolicy;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",interruptionFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",conditionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",configActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mZenPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ",deviceEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowManualInvocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",iconResId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",triggerDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/AutomaticZenRule;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist validate()V
    .locals 1

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    invoke-static {v0}, Landroid/app/AutomaticZenRule;->checkValidType(I)I

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->validate()V

    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v2, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->mAllowManualInvocation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/AutomaticZenRule;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mTriggerDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/AutomaticZenRule;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    return-void
.end method
