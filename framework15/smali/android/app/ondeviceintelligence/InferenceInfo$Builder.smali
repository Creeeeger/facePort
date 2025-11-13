.class public Landroid/app/ondeviceintelligence/InferenceInfo$Builder;
.super Ljava/lang/Object;
.source "InferenceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ondeviceintelligence/InferenceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist endTimeMs:J

.field private blacklist startTimeMs:J

.field private blacklist suspendedTimeMs:J

.field private blacklist uid:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/ondeviceintelligence/InferenceInfo;
    .locals 9

    new-instance v8, Landroid/app/ondeviceintelligence/InferenceInfo;

    iget v1, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->uid:I

    iget-wide v2, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->startTimeMs:J

    iget-wide v4, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->endTimeMs:J

    iget-wide v6, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->suspendedTimeMs:J

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/app/ondeviceintelligence/InferenceInfo;-><init>(IJJJ)V

    return-object v8
.end method

.method public blacklist setEndTimeMs(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->endTimeMs:J

    return-object p0
.end method

.method public blacklist setStartTimeMs(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->startTimeMs:J

    return-object p0
.end method

.method public blacklist setSuspendedTimeMs(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->suspendedTimeMs:J

    return-object p0
.end method

.method public blacklist setUid(I)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->uid:I

    return-object p0
.end method
