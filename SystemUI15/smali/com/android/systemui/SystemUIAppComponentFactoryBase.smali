.class public abstract Lcom/android/systemui/SystemUIAppComponentFactoryBase;
.super Landroidx/core/app/AppComponentFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/SystemUIAppComponentFactoryBase$Companion;

.field public static systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;


# instance fields
.field public componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->Companion:Lcom/android/systemui/SystemUIAppComponentFactoryBase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/AppComponentFactory;-><init>()V

    return-void
.end method

.method public static final access$createSystemUIInitializerInternal(Lcom/android/systemui/SystemUIAppComponentFactoryBase;Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Failed to initialize SysUI"

    sget-object v1, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->createSystemUIInitializer(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializerImpl;

    move-result-object v1

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/systemui/SystemUIInitializer;->init(Z)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V

    sput-object v1, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-object v1
.end method


# virtual methods
.method public abstract createSystemUIInitializer(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializerImpl;
.end method

.method public final instantiateActivityCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/dagger/ContextComponentResolver;

    iget-object v0, v0, Lcom/android/systemui/dagger/ContextComponentResolver;->mActivityCreators:Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/android/systemui/dagger/ContextComponentResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateActivityCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final instantiateApplicationCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/core/app/AppComponentFactory;->instantiateApplicationCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object p1

    instance-of p2, p1, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;

    new-instance v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateApplicationCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateApplicationCompat$1;-><init>(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V

    invoke-interface {p2, v0}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;->setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "App must implement ContextInitializer"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final instantiateProviderCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/core/app/AppComponentFactory;->instantiateProviderCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object p1

    instance-of p2, p1, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;

    new-instance v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateProviderCompat$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateProviderCompat$1;-><init>(Lcom/android/systemui/SystemUIAppComponentFactoryBase;Landroid/content/ContentProvider;)V

    invoke-interface {p2, v0}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;->setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;)V

    :cond_0
    return-object p1
.end method

.method public final instantiateReceiverCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/dagger/ContextComponentResolver;

    iget-object v0, v0, Lcom/android/systemui/dagger/ContextComponentResolver;->mBroadcastReceiverCreators:Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/android/systemui/dagger/ContextComponentResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateReceiverCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final instantiateServiceCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/dagger/ContextComponentResolver;

    iget-object v0, v0, Lcom/android/systemui/dagger/ContextComponentResolver;->mServiceCreators:Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/android/systemui/dagger/ContextComponentResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateServiceCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object v0

    :cond_2
    return-object v0
.end method
