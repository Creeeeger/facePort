.class public Lcom/samsung/android/allshare/media/ContentInfo$Builder;
.super Ljava/lang/Object;
.source "ContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/ContentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mStartingPosition:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStartingPosition(Lcom/samsung/android/allshare/media/ContentInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J

    return-wide v0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J

    return-void
.end method


# virtual methods
.method public whitelist build()Lcom/samsung/android/allshare/media/ContentInfo;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/samsung/android/allshare/media/ContentInfo;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/media/ContentInfo;-><init>(Lcom/samsung/android/allshare/media/ContentInfo$Builder;Lcom/samsung/android/allshare/media/ContentInfo-IA;)V

    return-object v0
.end method

.method public whitelist setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J

    return-object p0
.end method
