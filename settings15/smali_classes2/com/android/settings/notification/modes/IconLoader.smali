.class public final Lcom/android/settings/notification/modes/IconLoader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final MISSING:Landroid/graphics/drawable/Drawable;

.field public static sInstance:Lcom/android/settings/notification/modes/IconLoader;


# instance fields
.field public final mBackgroundExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field public final mCache:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    sput-object v0, Lcom/android/settings/notification/modes/IconLoader;->MISSING:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/notification/modes/IconLoader;->mCache:Landroid/util/LruCache;

    invoke-static {p1}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/modes/IconLoader;->mBackgroundExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method

.method public static getFallbackIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const v0, 0x1080616

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x1080611

    goto :goto_0

    :pswitch_1
    const v0, 0x1080615

    goto :goto_0

    :pswitch_2
    const v0, 0x1080610

    goto :goto_0

    :pswitch_3
    const v0, 0x108060f

    goto :goto_0

    :pswitch_4
    const v0, 0x108060e

    goto :goto_0

    :pswitch_5
    const v0, 0x1080613

    goto :goto_0

    :pswitch_6
    const v0, 0x1080614

    goto :goto_0

    :pswitch_7
    const v0, 0x1080612

    :goto_0
    :pswitch_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/settings/notification/modes/IconLoader;
    .locals 2

    sget-object v0, Lcom/android/settings/notification/modes/IconLoader;->sInstance:Lcom/android/settings/notification/modes/IconLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/notification/modes/IconLoader;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/notification/modes/IconLoader;-><init>(Ljava/util/concurrent/ExecutorService;)V

    sput-object v0, Lcom/android/settings/notification/modes/IconLoader;->sInstance:Lcom/android/settings/notification/modes/IconLoader;

    :cond_0
    sget-object v0, Lcom/android/settings/notification/modes/IconLoader;->sInstance:Lcom/android/settings/notification/modes/IconLoader;

    return-object v0
.end method
