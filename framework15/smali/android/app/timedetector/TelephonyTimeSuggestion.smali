.class public final Landroid/app/timedetector/TelephonyTimeSuggestion;
.super Ljava/lang/Object;
.source "TelephonyTimeSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timedetector/TelephonyTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDebugInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSlotIndex:I

.field private final blacklist mUnixEpochTime:Landroid/app/time/UnixEpochTime;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 0

    invoke-static {p0}, Landroid/app/timedetector/TelephonyTimeSuggestion;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/timedetector/TelephonyTimeSuggestion$1;

    invoke-direct {v0}, Landroid/app/timedetector/TelephonyTimeSuggestion$1;-><init>()V

    sput-object v0, Landroid/app/timedetector/TelephonyTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->-$$Nest$fgetmSlotIndex(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->-$$Nest$fgetmUnixEpochTime(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Landroid/app/time/UnixEpochTime;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->-$$Nest$fgetmDebugInfo(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->-$$Nest$fgetmDebugInfo(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;Landroid/app/timedetector/TelephonyTimeSuggestion-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;-><init>(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)V

    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const-class v1, Landroid/app/time/UnixEpochTime;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/time/UnixEpochTime;

    new-instance v3, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    invoke-direct {v3, v0}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;-><init>(I)V

    invoke-virtual {v3, v1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->setUnixEpochTime(Landroid/app/time/UnixEpochTime;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->build()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->addDebugInfo(Ljava/util/List;)V

    :cond_0
    return-object v3
.end method

.method public static blacklist parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "--slot_index"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_1
    const-string v3, "--unix_epoch_time"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_2
    const-string v3, "--elapsed_realtime"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v3, "--reference_time"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    :goto_3
    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    new-instance v3, Landroid/app/time/UnixEpochTime;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    new-instance v5, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;-><init>(I)V

    invoke-virtual {v5, v3}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->setUnixEpochTime(Landroid/app/time/UnixEpochTime;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    move-result-object v5

    const-string v6, "Command line injection"

    invoke-virtual {v5, v6}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->build()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v6

    return-object v6

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "No unixEpochTimeMillis specified."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "No elapsedRealtimeMillis specified."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "No slotIndex specified."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_0
    .sparse-switch
        0xf650e1 -> :sswitch_3
        0x2e13e6e -> :sswitch_2
        0x18745a3a -> :sswitch_1
        0x7b56fcf1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Telephony suggestion options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --slot_index <number>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --elapsed_realtime <elapsed realtime millis>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --unix_epoch_time <Unix epoch time millis>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/app/timedetector/TelephonyTimeSuggestion;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for more information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addDebugInfo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addDebugInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

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

    check-cast v2, Landroid/app/timedetector/TelephonyTimeSuggestion;

    iget v3, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    iget v4, v2, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    iget-object v4, v2, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getDebugInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist getSlotIndex()I
    .locals 1

    iget v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    return v0
.end method

.method public blacklist getUnixEpochTime()Landroid/app/time/UnixEpochTime;
    .locals 1

    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyTimeSuggestion{mSlotIndex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnixEpochTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
