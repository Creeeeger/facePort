.class public final Lcom/google/android/setupdesign/util/Partner;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static partner:Lcom/google/android/setupdesign/util/Partner;

.field public static searched:Z


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/setupdesign/util/Partner;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/setupdesign/util/Partner;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method public static declared-synchronized resetForTesting()V
    .locals 2

    const-class v0, Lcom/google/android/setupdesign/util/Partner;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/google/android/setupdesign/util/Partner;->searched:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/setupdesign/util/Partner;->partner:Lcom/google/android/setupdesign/util/Partner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
