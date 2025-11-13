.class public final Lcom/android/systemui/knox/DualDarMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockoutAttemptDeadline:J

.field public mLockoutAttemptTimeout:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    iput-wide v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/knox/DualDarMonitor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getInnerAuthUserId(I)I
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    move-result p0

    const-string v0, "getInnerAuthUserId - userId : "

    const-string v1, ", ret : "

    const-string v2, "DualDarMonitor"

    invoke-static {p1, p0, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
