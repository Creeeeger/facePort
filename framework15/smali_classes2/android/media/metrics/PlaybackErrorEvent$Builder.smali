.class public final Landroid/media/metrics/PlaybackErrorEvent$Builder;
.super Ljava/lang/Object;
.source "PlaybackErrorEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/PlaybackErrorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mErrorCode:I

.field private blacklist mException:Ljava/lang/Exception;

.field private blacklist mMetricsBundle:Landroid/os/Bundle;

.field private blacklist mSubErrorCode:I

.field private blacklist mTimeSinceCreatedMillis:J


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mErrorCode:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mTimeSinceCreatedMillis:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/metrics/PlaybackErrorEvent;
    .locals 10

    iget-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v9, Landroid/media/metrics/PlaybackErrorEvent;

    iget v3, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mErrorCode:I

    iget v4, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mSubErrorCode:I

    iget-wide v5, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mTimeSinceCreatedMillis:J

    iget-object v7, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Landroid/media/metrics/PlaybackErrorEvent;-><init>(Ljava/lang/String;IIJLandroid/os/Bundle;Landroid/media/metrics/PlaybackErrorEvent-IA;)V

    return-object v1
.end method

.method public whitelist setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mErrorCode:I

    return-object p0
.end method

.method public whitelist setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mException:Ljava/lang/Exception;

    return-object p0
.end method

.method public whitelist setMetricsBundle(Landroid/os/Bundle;)Landroid/media/metrics/PlaybackErrorEvent$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mSubErrorCode:I

    return-object p0
.end method

.method public whitelist setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mTimeSinceCreatedMillis:J

    return-object p0
.end method
