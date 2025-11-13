.class public Landroid/app/Application;
.super Landroid/content/ContextWrapper;
.source "Application.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Application$OnProvideAssistDataListener;,
        Landroid/app/Application$ActivityLifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Application"


# instance fields
.field private greylist mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mAssistCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$OnProvideAssistDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;

.field private blacklist mFlipfont:I

.field public greylist mLoadedApk:Landroid/app/LoadedApk;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 65
    iput-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Application;->mFlipfont:I

    .line 244
    return-void
.end method

.method private greylist collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 605
    :try_start_0
    iget-object v2, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 606
    iget-object v2, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 608
    :cond_0
    monitor-exit v1

    .line 609
    return-object v0

    .line 608
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist getLoadedApkInfo()Ljava/lang/String;
    .locals 2

    .line 247
    iget-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    if-nez v0, :cond_0

    .line 248
    const-string/jumbo v0, "null"

    return-object v0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    iget-object v1, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getProcessName()Ljava/lang/String;
    .locals 1

    .line 355
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final greylist attach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 365
    invoke-virtual {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 366
    invoke-static {p1}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iput-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    .line 367
    return-void
.end method

.method blacklist dispatchActivityConfigurationChanged(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 592
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 593
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 594
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 595
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityConfigurationChanged(Landroid/app/Activity;)V

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 384
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 385
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 387
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist dispatchActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 573
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 574
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 576
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist dispatchActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 477
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 478
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 479
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 480
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 396
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 397
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 398
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 399
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPostDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 583
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 584
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 585
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 586
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostDestroyed(Landroid/app/Activity;)V

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPostPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 487
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 488
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 489
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 490
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostPaused(Landroid/app/Activity;)V

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPostResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 457
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 458
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 459
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 460
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostResumed(Landroid/app/Activity;)V

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 552
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 553
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 554
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 555
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 559
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPostStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 427
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 428
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 429
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 430
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStarted(Landroid/app/Activity;)V

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPostStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 517
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 518
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 519
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 520
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStopped(Landroid/app/Activity;)V

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 372
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 375
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 563
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 564
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 565
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 566
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreDestroyed(Landroid/app/Activity;)V

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPrePaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 467
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 468
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 469
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 470
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPrePaused(Landroid/app/Activity;)V

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPreResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 437
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 439
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 440
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreResumed(Landroid/app/Activity;)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 528
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 529
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 530
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 531
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPreStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 407
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 408
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 409
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 410
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStarted(Landroid/app/Activity;)V

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-r dispatchActivityPreStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 497
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 498
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 500
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStopped(Landroid/app/Activity;)V

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist dispatchActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 447
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 448
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 449
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 450
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 540
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 541
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 542
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 543
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist dispatchActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 417
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 418
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 419
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 420
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist dispatchActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 507
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 508
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 509
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 510
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-o dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 614
    monitor-enter p0

    .line 615
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 616
    monitor-exit p0

    return-void

    .line 618
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 619
    .local v0, "callbacks":[Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    if-eqz v0, :cond_1

    .line 621
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 622
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$OnProvideAssistDataListener;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$OnProvideAssistDataListener;->onProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 619
    .end local v0    # "callbacks":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist-max-o getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .locals 9

    .line 630
    invoke-super {p0}, Landroid/content/ContextWrapper;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 631
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_0

    .line 632
    return-object v0

    .line 634
    :cond_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    const-string v2, "Application"

    if-eqz v1, :cond_1

    .line 635
    const-string v1, "getAutofillClient(): null on super, trying to find activity thread"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 642
    .local v1, "activityThread":Landroid/app/ActivityThread;
    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 643
    return-object v3

    .line 645
    :cond_2
    iget-object v4, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 646
    .local v4, "activityCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_7

    .line 647
    iget-object v6, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 648
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 649
    .local v6, "record":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v6, :cond_3

    .line 650
    goto :goto_1

    .line 652
    :cond_3
    iget-object v7, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 653
    .local v7, "activity":Landroid/app/Activity;
    if-nez v7, :cond_4

    .line 654
    goto :goto_1

    .line 656
    :cond_4
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 657
    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_5

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAutofillClient(): found activity for "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ": "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_5
    invoke-virtual {v7}, Landroid/app/Activity;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    return-object v2

    .line 646
    .end local v6    # "record":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v7    # "activity":Landroid/app/Activity;
    :cond_6
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 663
    .end local v5    # "i":I
    :cond_7
    sget-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_8

    .line 664
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAutofillClient(): none of the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " activities on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " have focus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_8
    return-object v3
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 292
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/app/Application;->mFlipfont:I

    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v0, v1, :cond_0

    .line 293
    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    .line 294
    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Landroid/app/Application;->mFlipfont:I

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 299
    return-void
.end method

.method public whitelist onCreate()V
    .locals 0

    .line 275
    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    .line 277
    return-void
.end method

.method public whitelist onLowMemory()V
    .locals 1

    .line 303
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->dispatchLowMemory()V

    .line 304
    return-void
.end method

.method public whitelist onTerminate()V
    .locals 0

    .line 287
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 308
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchTrimMemory(I)V

    .line 309
    return-void
.end method

.method public whitelist registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 320
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 312
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 313
    return-void
.end method

.method public whitelist registerOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/Application$OnProvideAssistDataListener;

    .line 332
    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    .line 336
    :cond_0
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    monitor-exit p0

    .line 338
    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 326
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 328
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 316
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 317
    return-void
.end method

.method public whitelist unregisterOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/Application$OnProvideAssistDataListener;

    .line 341
    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 345
    :cond_0
    monitor-exit p0

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
