.class public Landroid/app/admin/DevicePolicyEventLogger;
.super Ljava/lang/Object;
.source "DevicePolicyEventLogger.java"


# instance fields
.field private blacklist mAdminPackageName:Ljava/lang/String;

.field private blacklist mBooleanValue:Z

.field private final blacklist mEventId:I

.field private blacklist mIntValue:I

.field private blacklist mKnoxBundleValue:Landroid/os/Bundle;

.field private blacklist mStringArrayValue:[Ljava/lang/String;

.field private blacklist mTimePeriodMs:J


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mEventId:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mKnoxBundleValue:Landroid/os/Bundle;

    return-void
.end method

.method public static blacklist createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 1

    new-instance v0, Landroid/app/admin/DevicePolicyEventLogger;

    invoke-direct {v0, p0}, Landroid/app/admin/DevicePolicyEventLogger;-><init>(I)V

    return-object v0
.end method

.method private static blacklist stringArrayValueToBytes([Ljava/lang/String;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/stats/devicepolicy/nano/StringList;

    invoke-direct {v0}, Landroid/stats/devicepolicy/nano/StringList;-><init>()V

    iput-object p0, v0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getAdminPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBoolean()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mBooleanValue:Z

    return v0
.end method

.method public blacklist getEventId()I
    .locals 1

    iget v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mEventId:I

    return v0
.end method

.method public blacklist getInt()I
    .locals 1

    iget v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mIntValue:I

    return v0
.end method

.method public blacklist getKnoxBundleValue()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mKnoxBundleValue:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getStringArray()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTimePeriod()J
    .locals 2

    iget-wide v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mTimePeriodMs:J

    return-wide v0
.end method

.method public blacklist setAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 0

    iput-object p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 0

    iput-boolean p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mBooleanValue:Z

    return-object p0
.end method

.method public blacklist setInt(I)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 0

    iput p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mIntValue:I

    return-object p0
.end method

.method public blacklist setKnoxBundleValue(Landroid/os/Bundle;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mKnoxBundleValue:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public blacklist setStrings(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 4

    const-string/jumbo v0, "values parameter cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p3

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    const/4 v3, 0x1

    aput-object p2, v0, v3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    array-length v3, p3

    invoke-static {p3, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public blacklist setStrings(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 4

    const-string/jumbo v0, "values parameter cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public varargs blacklist setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 0

    iput-object p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 0

    iput-wide p1, p0, Landroid/app/admin/DevicePolicyEventLogger;->mTimePeriodMs:J

    return-object p0
.end method

.method public blacklist write()V
    .locals 9

    iget-object v0, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->stringArrayValueToBytes([Ljava/lang/String;)[B

    move-result-object v0

    iget v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mEventId:I

    iget-object v3, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    iget v4, p0, Landroid/app/admin/DevicePolicyEventLogger;->mIntValue:I

    iget-boolean v5, p0, Landroid/app/admin/DevicePolicyEventLogger;->mBooleanValue:Z

    iget-wide v6, p0, Landroid/app/admin/DevicePolicyEventLogger;->mTimePeriodMs:J

    const/16 v1, 0x67

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZJ[B)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "aN"

    iget v3, p0, Landroid/app/admin/DevicePolicyEventLogger;->mEventId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "iV"

    iget v3, p0, Landroid/app/admin/DevicePolicyEventLogger;->mIntValue:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "bV"

    iget-boolean v3, p0, Landroid/app/admin/DevicePolicyEventLogger;->mBooleanValue:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "tpms"

    iget-wide v3, p0, Landroid/app/admin/DevicePolicyEventLogger;->mTimePeriodMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v2, "kB"

    iget-object v3, p0, Landroid/app/admin/DevicePolicyEventLogger;->mKnoxBundleValue:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    const-string/jumbo v3, "saV"

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/admin/DevicePolicyEventLogger;->mStringArrayValue:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mKnoxBundleValue:Landroid/os/Bundle;

    const-string/jumbo v4, "targetPackageName"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/DevicePolicyEventLogger;->mKnoxBundleValue:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "apN"

    iget-object v3, p0, Landroid/app/admin/DevicePolicyEventLogger;->mAdminPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->logDpmsKA(Landroid/os/Bundle;)V

    return-void
.end method
