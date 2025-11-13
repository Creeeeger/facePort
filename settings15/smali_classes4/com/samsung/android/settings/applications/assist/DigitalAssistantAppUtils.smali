.class public abstract Lcom/samsung/android/settings/applications/assist/DigitalAssistantAppUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static setAssistantApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/role/RoleManager;

    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    :try_start_0
    const-string v1, "android.app.role.ASSISTANT"

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/applications/assist/DigitalAssistantAppUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5, v6, p0}, Lcom/samsung/android/settings/applications/assist/DigitalAssistantAppUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/role/RoleManager;->setDefaultApplication(Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :catch_0
    return-void
.end method
