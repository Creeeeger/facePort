.class public final Lcom/android/launcher3/icons/IconFactory;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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

.method private constructor <init>(Landroid/content/Context;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    iput p4, p0, Lcom/android/launcher3/icons/IconFactory;->mPoolId:I

    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;
    .locals 4

    sget-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    sput-object p0, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    const/4 p0, 0x0

    iput-object p0, v1, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/launcher3/icons/IconFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/icons/IconFactory;-><init>(Landroid/content/Context;III)V

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
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
