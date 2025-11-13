.class public Lcom/android/internal/os/BinderStats$BinderStatsEntry;
.super Ljava/lang/Object;
.source "BinderStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderStatsEntry"
.end annotation


# instance fields
.field public blacklist mEndTime:J

.field public blacklist mStartTime:J

.field public blacklist mStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderStats$BinderStatsUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStats:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist addUnit(Lcom/android/internal/os/BinderStats$BinderStatsUnit;)V
    .locals 1
    .param p1, "u"    # Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    .line 55
    iget-object v0, p0, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method
