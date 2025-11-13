.class public final Landroid/app/usage/UsageEventsQuery$Builder;
.super Ljava/lang/Object;
.source "UsageEventsQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageEventsQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBeginTimeMillis:J

.field private final blacklist mEndTimeMillis:J

.field private final blacklist mEventTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBeginTimeMillis(Landroid/app/usage/UsageEventsQuery$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mBeginTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEndTimeMillis(Landroid/app/usage/UsageEventsQuery$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mEndTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventTypes(Landroid/app/usage/UsageEventsQuery$Builder;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mEventTypes:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageNames(Landroid/app/usage/UsageEventsQuery$Builder;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mPackageNames:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/app/usage/UsageEventsQuery$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mUserId:I

    return p0
.end method

.method public constructor whitelist <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mEventTypes:Landroid/util/ArraySet;

    const/16 v0, -0x2710

    iput v0, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mUserId:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mPackageNames:Landroid/util/ArraySet;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mBeginTimeMillis:J

    iput-wide p3, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mEndTimeMillis:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid period"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/app/usage/UsageEventsQuery;
    .locals 2

    new-instance v0, Landroid/app/usage/UsageEventsQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/usage/UsageEventsQuery;-><init>(Landroid/app/usage/UsageEventsQuery$Builder;Landroid/app/usage/UsageEventsQuery-IA;)V

    return-object v0
.end method

.method public varargs whitelist setEventTypes([I)Landroid/app/usage/UsageEventsQuery$Builder;
    .locals 5

    if-eqz p1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mEventTypes:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    if-ltz v1, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mEventTypes:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid usage event type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventTypes is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs whitelist setPackageNames([Ljava/lang/String;)Landroid/app/usage/UsageEventsQuery$Builder;
    .locals 3

    if-eqz p1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mPackageNames:Landroid/util/ArraySet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "pkgNames is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setUserId(I)Landroid/app/usage/UsageEventsQuery$Builder;
    .locals 0

    iput p1, p0, Landroid/app/usage/UsageEventsQuery$Builder;->mUserId:I

    return-object p0
.end method
