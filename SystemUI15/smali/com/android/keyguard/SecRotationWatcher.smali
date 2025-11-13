.class public final Lcom/android/keyguard/SecRotationWatcher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentRotation:I

.field public final mHandler:Lcom/android/keyguard/SecRotationWatcher$2;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mWatcher:Lcom/android/keyguard/SecRotationWatcher$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/SecRotationWatcher;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/SecRotationWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/SecRotationWatcher$1;-><init>(Lcom/android/keyguard/SecRotationWatcher;)V

    iput-object v0, p0, Lcom/android/keyguard/SecRotationWatcher;->mWatcher:Lcom/android/keyguard/SecRotationWatcher$1;

    new-instance v0, Lcom/android/keyguard/SecRotationWatcher$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/SecRotationWatcher$2;-><init>(Lcom/android/keyguard/SecRotationWatcher;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/SecRotationWatcher;->mHandler:Lcom/android/keyguard/SecRotationWatcher$2;

    iput-object p1, p0, Lcom/android/keyguard/SecRotationWatcher;->mContext:Landroid/content/Context;

    return-void
.end method
