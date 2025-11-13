.class public final Landroid/app/compat/PackageOverride;
.super Ljava/lang/Object;
.source "PackageOverride.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/compat/PackageOverride$Builder;,
        Landroid/app/compat/PackageOverride$EvaluatedOverride;
    }
.end annotation


# static fields
.field public static final blacklist VALUE_DISABLED:I = 0x2

.field public static final blacklist VALUE_ENABLED:I = 0x1

.field public static final blacklist VALUE_UNDEFINED:I


# instance fields
.field private final blacklist mEnabled:Z

.field private final blacklist mMaxVersionCode:J

.field private final blacklist mMinVersionCode:J


# direct methods
.method private constructor blacklist <init>(JJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    iput-wide p3, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    iput-boolean p5, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(JJZLandroid/app/compat/PackageOverride-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/compat/PackageOverride;-><init>(JJZ)V

    return-void
.end method

.method public static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/compat/PackageOverride;
    .locals 7

    new-instance v6, Landroid/app/compat/PackageOverride;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/app/compat/PackageOverride;-><init>(JJZ)V

    return-object v6
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/compat/PackageOverride;

    iget-wide v3, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    iget-wide v5, v2, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    iget-wide v5, v2, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    iget-boolean v4, v2, Landroid/app/compat/PackageOverride;->mEnabled:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist evaluate(J)I
    .locals 2

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist evaluateForAllVersions()I
    .locals 4

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMaxVersionCode()J
    .locals 2

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    return-wide v0
.end method

.method public whitelist getMinVersionCode()J
    .locals 2

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%d,%d,%b]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
