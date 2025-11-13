.class final Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;
.super Ljava/lang/Object;
.source "AssociationState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/AssociationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceDumpContainer"
.end annotation


# instance fields
.field public blacklist mActiveTime:J

.field public final blacklist mState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field public blacklist mTotalTime:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    return-void
.end method
