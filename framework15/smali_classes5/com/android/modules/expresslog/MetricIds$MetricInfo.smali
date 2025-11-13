.class final Lcom/android/modules/expresslog/MetricIds$MetricInfo;
.super Ljava/lang/Object;
.source "MetricIds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/modules/expresslog/MetricIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MetricInfo"
.end annotation


# instance fields
.field public blacklist mHash:J

.field public blacklist mType:I


# direct methods
.method constructor blacklist <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/modules/expresslog/MetricIds$MetricInfo;->mHash:J

    iput p3, p0, Lcom/android/modules/expresslog/MetricIds$MetricInfo;->mType:I

    return-void
.end method
