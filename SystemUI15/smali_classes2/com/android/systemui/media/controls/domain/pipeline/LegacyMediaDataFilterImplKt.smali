.class public abstract Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImplKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SMARTSPACE_MAX_AGE:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-string v2, "debug.sysui.smartspace_max_age"

    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImplKt;->SMARTSPACE_MAX_AGE:J

    return-void
.end method

.method public static synthetic getSMARTSPACE_MAX_AGE$annotations()V
    .locals 0

    return-void
.end method
