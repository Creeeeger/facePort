.class public final Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsRegistered:Z

.field public final receivers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->mIsRegistered:Z

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorIconBlacklistReceiver;

    invoke-direct {v0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorIconBlacklistReceiver;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V

    new-instance v1, Lcom/android/systemui/slimindicator/SlimIndicatorPackageReceiver;

    invoke-direct {v1, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorPackageReceiver;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
