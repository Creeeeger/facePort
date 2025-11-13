.class public final Lcom/google/android/setupcompat/logging/CustomEvent;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/setupcompat/logging/CustomEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final MAX_STR_LENGTH:I = 0x32

.field static final MIN_BUNDLE_KEY_LENGTH:I = 0x3


# instance fields
.field public final metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

.field public final persistableBundle:Landroid/os/PersistableBundle;

.field public final piiValues:Landroid/os/PersistableBundle;

.field public final timestampMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/setupcompat/logging/CustomEvent$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/setupcompat/logging/CustomEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Timestamp cannot be negative."

    invoke-static {v3, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(Ljava/lang/String;Z)V

    const-string v0, "MetricKey cannot be null."

    invoke-static {p3, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Bundle cannot be null."

    invoke-static {p4, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v3, "Bundle cannot be empty."

    invoke-static {v3, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(Ljava/lang/String;Z)V

    const-string v0, "piiValues cannot be null."

    invoke-static {p5, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "bundle key"

    const/4 v5, 0x3

    const/16 v6, 0x32

    invoke-static {v5, v6, v3, v4}, Lcom/google/android/setupcompat/internal/Validations;->assertLengthInRange(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Maximum length of string value for key=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' cannot exceed 50."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iput-wide p1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    iput-object p3, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1, p4}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1, p5}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/setupcompat/logging/CustomEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/setupcompat/logging/CustomEvent;

    iget-wide v3, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    iget-wide v5, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    iget-object v3, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    if-eq v1, v3, :cond_2

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/logging/MetricKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    iget-object v3, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    if-eq v1, v3, :cond_3

    invoke-static {v1}, Lcom/google/android/setupcompat/internal/PersistableBundles;->toMap(Landroid/os/BaseBundle;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v3}, Lcom/google/android/setupcompat/internal/PersistableBundles;->toMap(Landroid/os/BaseBundle;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/android/setupcompat/internal/PersistableBundles;->LOG:Lcom/google/android/setupcompat/util/Logger;

    :goto_0
    iget-object p0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    iget-object p1, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    if-eq p0, p1, :cond_5

    invoke-static {p0}, Lcom/google/android/setupcompat/internal/PersistableBundles;->toMap(Landroid/os/BaseBundle;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p1}, Lcom/google/android/setupcompat/internal/PersistableBundles;->toMap(Landroid/os/BaseBundle;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :cond_5
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    iget-object v2, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    iget-object p0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget-object p0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    return-void
.end method
