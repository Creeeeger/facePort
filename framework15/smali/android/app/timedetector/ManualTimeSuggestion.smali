.class public final Landroid/app/timedetector/ManualTimeSuggestion;
.super Ljava/lang/Object;
.source "ManualTimeSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timedetector/ManualTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/timedetector/ManualTimeSuggestion$1;

    invoke-direct {v0}, Landroid/app/timedetector/ManualTimeSuggestion$1;-><init>()V

    sput-object v0, Landroid/app/timedetector/ManualTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/time/UnixEpochTime;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/timedetector/TimeSuggestionHelper;

    const-class v1, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-direct {v0, v1, p1}, Landroid/app/timedetector/TimeSuggestionHelper;-><init>(Ljava/lang/Class;Landroid/app/time/UnixEpochTime;)V

    iput-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/timedetector/TimeSuggestionHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/TimeSuggestionHelper;

    iput-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/timedetector/TimeSuggestionHelper;Landroid/app/timedetector/ManualTimeSuggestion-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/timedetector/ManualTimeSuggestion;-><init>(Landroid/app/timedetector/TimeSuggestionHelper;)V

    return-void
.end method

.method public static blacklist parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timedetector/ManualTimeSuggestion;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Landroid/app/timedetector/ManualTimeSuggestion;

    const-class v1, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-static {v1, p0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleParseCommandLineArg(Ljava/lang/Class;Landroid/os/ShellCommand;)Landroid/app/timedetector/TimeSuggestionHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/timedetector/ManualTimeSuggestion;-><init>(Landroid/app/timedetector/TimeSuggestionHelper;)V

    return-object v0
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Manual"

    const-class v1, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-static {p0, v0, v1}, Landroid/app/timedetector/TimeSuggestionHelper;->handlePrintCommandLineOpts(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public varargs blacklist addDebugInfo([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0, p1}, Landroid/app/timedetector/TimeSuggestionHelper;->addDebugInfo([Ljava/lang/String;)V

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/timedetector/ManualTimeSuggestion;

    iget-object v1, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    iget-object v2, v0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v1, v2}, Landroid/app/timedetector/TimeSuggestionHelper;->handleEquals(Landroid/app/timedetector/TimeSuggestionHelper;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
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

    iget-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->getDebugInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnixEpochTime()Landroid/app/time/UnixEpochTime;
    .locals 1

    iget-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0, p1, p2}, Landroid/app/timedetector/TimeSuggestionHelper;->handleWriteToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
