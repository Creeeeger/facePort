.class public final Lcom/android/launcher3/icons/IconFactory;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sPool:Lcom/android/launcher3/icons/IconFactory;

.field public static final sPoolSync:Ljava/lang/Object;


# instance fields
.field public final mPoolId:I

.field public next:Lcom/android/launcher3/icons/IconFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/icons/IconFactory;->mPoolId:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/launcher3/icons/IconFactory;->mPoolId:I

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    sget-object v1, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    iput-object v1, p0, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    sput-object p0, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    monitor-exit v0

    :goto_0
    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
