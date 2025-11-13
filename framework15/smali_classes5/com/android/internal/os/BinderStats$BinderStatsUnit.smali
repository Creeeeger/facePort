.class public Lcom/android/internal/os/BinderStats$BinderStatsUnit;
.super Ljava/lang/Object;
.source "BinderStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderStatsUnit"
.end annotation


# instance fields
.field public blacklist binderClass:Ljava/lang/String;

.field public blacklist callCount:J

.field public blacklist callingUid:I

.field public blacklist cpuTimeMicros:J

.field public blacklist methodName:Ljava/lang/String;

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist recordedCallCount:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
