.class public final Landroid/app/time/ExternalTimeSuggestion;
.super Ljava/lang/Object;
.source "ExternalTimeSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/ExternalTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/time/ExternalTimeSuggestion$1;

    invoke-direct {v0}, Landroid/app/time/ExternalTimeSuggestion$1;-><init>()V

    sput-object v0, Landroid/app/time/ExternalTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/timedetector/TimeSuggestionHelper;

    new-instance v1, Landroid/app/time/UnixEpochTime;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    const-class v2, Landroid/app/time/ExternalTimeSuggestion;

    invoke-direct {v0, v2, v1}, Landroid/app/timedetector/TimeSuggestionHelper;-><init>(Ljava/lang/Class;Landroid/app/time/UnixEpochTime;)V

    iput-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/timedetector/TimeSuggestionHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/TimeSuggestionHelper;

    iput-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/timedetector/TimeSuggestionHelper;Landroid/app/time/ExternalTimeSuggestion-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/time/ExternalTimeSuggestion;-><init>(Landroid/app/timedetector/TimeSuggestionHelper;)V

    return-void
.end method

.method public static blacklist parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/time/ExternalTimeSuggestion;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Landroid/app/time/ExternalTimeSuggestion;

    const-class v1, Landroid/app/time/ExternalTimeSuggestion;

    invoke-static {v1, p0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleParseCommandLineArg(Ljava/lang/Class;Landroid/os/ShellCommand;)Landroid/app/timedetector/TimeSuggestionHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/time/ExternalTimeSuggestion;-><init>(Landroid/app/timedetector/TimeSuggestionHelper;)V

    return-object v0
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "External"

    const-class v1, Landroid/app/time/ExternalTimeSuggestion;

    invoke-static {p0, v0, v1}, Landroid/app/timedetector/TimeSuggestionHelper;->handlePrintCommandLineOpts(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public varargs whitelist addDebugInfo([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

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

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;

    iget-object v1, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    iget-object v2, v0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v1, v2}, Landroid/app/timedetector/TimeSuggestionHelper;->handleEquals(Landroid/app/timedetector/TimeSuggestionHelper;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDebugInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->getDebugInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnixEpochTime()Landroid/app/time/UnixEpochTime;
    .locals 1

    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0, p1, p2}, Landroid/app/timedetector/TimeSuggestionHelper;->handleWriteToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
