.class public final Landroid/app/admin/SecurityLog$SecurityEvent;
.super Ljava/lang/Object;
.source "SecurityLog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SecurityLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecurityEvent"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mEvent:Landroid/util/EventLog$Event;

.field private greylist-max-o mId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/SecurityLog$SecurityEvent$1;

    invoke-direct {v0}, Landroid/app/admin/SecurityLog$SecurityEvent$1;-><init>()V

    sput-object v0, Landroid/app/admin/SecurityLog$SecurityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(J[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    invoke-static {p3}, Landroid/util/EventLog$Event;->fromBytes([B)Landroid/util/EventLog$Event;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    return-void
.end method

.method constructor greylist-max-r <init>([B)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    return-void
.end method

.method private greylist-max-o getSuccess()Z
    .locals 5

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v2, v0, [Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    aget-object v3, v2, v1

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    aget-object v3, v2, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v4

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

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

    check-cast v2, Landroid/app/admin/SecurityLog$SecurityEvent;

    iget-object v3, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    iget-object v4, v2, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v3, v4}, Landroid/util/EventLog$Event;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    iget-wide v5, v2, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist eventEquals(Landroid/app/admin/SecurityLog$SecurityEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    iget-object v1, p1, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0, v1}, Landroid/util/EventLog$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getId()J
    .locals 2

    iget-wide v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    return-wide v0
.end method

.method public blacklist getIntegerData(I)I
    .locals 1

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getLogLevel()I
    .locals 4

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTag()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    return v1

    :pswitch_2
    invoke-direct {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :pswitch_3
    return v2

    :pswitch_4
    invoke-direct {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :pswitch_5
    return v3

    :pswitch_data_0
    .packed-switch 0x33451
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public blacklist getStringData(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTag()I
    .locals 1

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v0

    return v0
.end method

.method public whitelist getTimeNanos()J
    .locals 2

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    iget-wide v1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist redact(I)Landroid/app/admin/SecurityLog$SecurityEvent;
    .locals 6

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTag()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    const/16 v0, -0x2710

    goto :goto_0

    :sswitch_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v4

    :sswitch_1
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    return-object v4

    :sswitch_2
    :try_start_2
    invoke-virtual {p0, v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    return-object v4

    :sswitch_3
    :try_start_3
    invoke-virtual {p0, v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    return-object v4

    :sswitch_4
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getStringData(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    nop

    new-instance v1, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getId()J

    move-result-wide v3

    iget-object v5, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/util/EventLog$Event;->withNewData(Ljava/lang/Object;)Landroid/util/EventLog$Event;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    return-object v1

    :catch_4
    move-exception v0

    return-object v4

    :sswitch_5
    :try_start_5
    invoke-virtual {p0, v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    return-object v4

    :sswitch_6
    new-instance v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getId()J

    move-result-wide v3

    iget-object v1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v1, v2}, Landroid/util/EventLog$Event;->withNewData(Ljava/lang/Object;)Landroid/util/EventLog$Event;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    return-object v0

    :goto_0
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    return-object v4

    :cond_1
    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x33452 -> :sswitch_6
        0x33455 -> :sswitch_5
        0x3345d -> :sswitch_4
        0x3345e -> :sswitch_4
        0x33468 -> :sswitch_3
        0x33469 -> :sswitch_3
        0x3346a -> :sswitch_3
        0x3346d -> :sswitch_2
        0x3346e -> :sswitch_2
        0x33470 -> :sswitch_1
        0x33474 -> :sswitch_0
        0x33479 -> :sswitch_2
        0x3347a -> :sswitch_2
        0x3347b -> :sswitch_2
    .end sparse-switch
.end method

.method public greylist-max-o setId(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
