.class public Lcom/samsung/android/biometrics/app/setting/BssApplication;
.super Landroid/app/Application;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/ActivityMonitor;->sInstance:Lcom/samsung/android/biometrics/app/setting/ActivityMonitor;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const-class v0, Lcom/samsung/android/biometrics/app/setting/ActivityMonitor;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/ActivityMonitor;->sInstance:Lcom/samsung/android/biometrics/app/setting/ActivityMonitor;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/ActivityMonitor;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/samsung/android/biometrics/app/setting/ActivityMonitor;->sInstance:Lcom/samsung/android/biometrics/app/setting/ActivityMonitor;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    goto :goto_2

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_2
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/ActivityMonitor;->sInstance:Lcom/samsung/android/biometrics/app/setting/ActivityMonitor;

    .line 30
    .line 31
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/BssApplication$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/BssApplication$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/BssApplication;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/BssApplication$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Landroid/app/Application;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
