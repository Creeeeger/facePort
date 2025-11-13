.class public Lcom/android/systemui/util/wakelock/WakeLock$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final NO_TIMEOUT:J = -0x1L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLevelsAndFlags:I

.field private final mLogger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

.field private mMaxTimeout:J

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/systemui/util/wakelock/WakeLock;->DEFAULT_LEVELS_AND_FLAGS:I

    iput v0, p0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mLevelsAndFlags:I

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mMaxTimeout:J

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mLogger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mLogger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

    iget-object v2, p0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mTag:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mLevelsAndFlags:I

    iget-wide v4, p0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mMaxTimeout:J

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/wakelock/WakeLock;->createWakeLock(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;IJ)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public setLevelsAndFlags(I)Lcom/android/systemui/util/wakelock/WakeLock$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mLevelsAndFlags:I

    return-object p0
.end method

.method public setMaxTimeout(J)Lcom/android/systemui/util/wakelock/WakeLock$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mMaxTimeout:J

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method
