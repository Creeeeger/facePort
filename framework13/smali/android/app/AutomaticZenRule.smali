.class public final Landroid/app/AutomaticZenRule;
.super Ljava/lang/Object;
.source "AutomaticZenRule.java"

# interfaces
.implements Landroid/os/Parcelable;


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

.field public static final blacklist MAX_STRING_LENGTH:I = 0x3e8


# instance fields
.field private greylist-max-o conditionId:Landroid/net/Uri;

.field private blacklist configurationActivity:Landroid/content/ComponentName;

.field private greylist-max-o creationTime:J

.field private greylist-max-o enabled:Z

.field private greylist-max-o interruptionFilter:I

.field private blacklist mModified:Z

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mZenPolicy:Landroid/service/notification/ZenPolicy;

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o owner:Landroid/content/ComponentName;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 334
    new-instance v0, Landroid/app/AutomaticZenRule$1;

    invoke-direct {v0}, Landroid/app/AutomaticZenRule$1;-><init>()V

    sput-object v0, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 47
    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    .line 128
    const-class v1, Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Landroid/app/AutomaticZenRule;->getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 129
    const-class v1, Landroid/content/ComponentName;

    .line 130
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 129
    invoke-static {v1}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 131
    const-class v1, Landroid/content/ComponentName;

    .line 132
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 131
    invoke-static {v1}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    .line 134
    const-class v1, Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenPolicy;

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "configurationActivity"    # Landroid/content/ComponentName;
    .param p4, "conditionId"    # Landroid/net/Uri;
    .param p5, "policy"    # Landroid/service/notification/ZenPolicy;
    .param p6, "interruptionFilter"    # I
    .param p7, "enabled"    # Z

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 47
    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    .line 103
    invoke-static {p1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 104
    invoke-static {p2}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 105
    invoke-static {p3}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 106
    invoke-static {p4}, Landroid/app/AutomaticZenRule;->getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 107
    iput p6, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    .line 108
    iput-boolean p7, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 109
    iput-object p5, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 110
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "configurationActivity"    # Landroid/content/ComponentName;
    .param p4, "conditionId"    # Landroid/net/Uri;
    .param p5, "policy"    # Landroid/service/notification/ZenPolicy;
    .param p6, "interruptionFilter"    # I
    .param p7, "enabled"    # Z
    .param p8, "creationTime"    # J

    .line 118
    invoke-direct/range {p0 .. p7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    .line 119
    iput-wide p8, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    .line 120
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "conditionId"    # Landroid/net/Uri;
    .param p4, "interruptionFilter"    # I
    .param p5, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    .line 73
    return-void
.end method

.method private static blacklist getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "cn"    # Landroid/content/ComponentName;

    .line 351
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 352
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-object v0
.end method

.method private static blacklist getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 360
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 363
    :cond_0
    return-object p0
.end method

.method private static blacklist getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "input"    # Landroid/net/Uri;

    .line 371
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 372
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 374
    :cond_0
    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 313
    instance-of v0, p1, Landroid/app/AutomaticZenRule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 314
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 315
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/AutomaticZenRule;

    .line 316
    .local v2, "other":Landroid/app/AutomaticZenRule;
    iget-boolean v3, v2, Landroid/app/AutomaticZenRule;->enabled:Z

    iget-boolean v4, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/app/AutomaticZenRule;->mModified:Z

    iget-boolean v4, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 318
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    iget v4, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 320
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 321
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 322
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 323
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    .line 324
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v2, Landroid/app/AutomaticZenRule;->creationTime:J

    iget-wide v5, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    nop

    .line 316
    :goto_0
    return v1
.end method

.method public whitelist getConditionId()Landroid/net/Uri;
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getConfigurationActivity()Landroid/content/ComponentName;
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getCreationTime()J
    .locals 2

    .line 201
    iget-wide v0, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    return-wide v0
.end method

.method public whitelist getInterruptionFilter()I
    .locals 1

    .line 165
    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOwner()Landroid/content/ComponentName;
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 330
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    .line 331
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 330
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    return v0
.end method

.method public blacklist isModified()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    return v0
.end method

.method public whitelist setConditionId(Landroid/net/Uri;)V
    .locals 1
    .param p1, "conditionId"    # Landroid/net/Uri;

    .line 208
    invoke-static {p1}, Landroid/app/AutomaticZenRule;->getTrimmedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 209
    return-void
.end method

.method public whitelist setConfigurationActivity(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 255
    invoke-static {p1}, Landroid/app/AutomaticZenRule;->getTrimmedComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 256
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 230
    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 231
    return-void
.end method

.method public whitelist setInterruptionFilter(I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    .line 216
    iput p1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    .line 217
    return-void
.end method

.method public blacklist setModified(Z)V
    .locals 0
    .param p1, "modified"    # Z

    .line 238
    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    .line 239
    return-void
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 223
    invoke-static {p1}, Landroid/app/AutomaticZenRule;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 262
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public whitelist setZenPolicy(Landroid/service/notification/ZenPolicy;)V
    .locals 1
    .param p1, "zenPolicy"    # Landroid/service/notification/ZenPolicy;

    .line 245
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 246
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    const-string v1, ",interruptionFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    const-string v1, ",pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    const-string v1, ",conditionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    const-string v1, ",owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 305
    const-string v1, ",configActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    const-string v1, ",creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 307
    const-string v1, ",mZenPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 279
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    :goto_0
    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 288
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 289
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 290
    iget-wide v2, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 291
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 292
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    return-void
.end method
