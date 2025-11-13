.class public final Lcom/android/systemui/flags/FeatureFlagsReleaseStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Lcom/android/systemui/flags/FeatureFlagsReleaseStartable$1;

    invoke-direct {p0, p2}, Lcom/android/systemui/flags/FeatureFlagsReleaseStartable$1;-><init>(Lcom/android/systemui/flags/FeatureFlags;)V

    const-string p2, "SysUIFlags"

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 0

    return-void
.end method
