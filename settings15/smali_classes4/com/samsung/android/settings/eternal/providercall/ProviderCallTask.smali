.class public final Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;
.super Ljava/util/concurrent/FutureTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mMethod:Ljava/lang/String;

.field public mUid:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;


# direct methods
.method public static createTask(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;

    new-instance v1, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask$ProviderCallWorker;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask$ProviderCallWorker;->mContext:Landroid/content/Context;

    iput-object p1, v1, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask$ProviderCallWorker;->mUid:Ljava/lang/String;

    iput-object p2, v1, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask$ProviderCallWorker;->mUri:Landroid/net/Uri;

    iput-object p3, v1, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask$ProviderCallWorker;->mMethod:Ljava/lang/String;

    iput-object p4, v1, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask$ProviderCallWorker;->mArgs:Ljava/lang/String;

    iput-object p5, v1, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask$ProviderCallWorker;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, v0, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;->mUid:Ljava/lang/String;

    iput-object p2, v0, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;->mUri:Landroid/net/Uri;

    iput-object p3, v0, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;->mMethod:Ljava/lang/String;

    return-object v0
.end method
