.class public Landroid/provider/ProviderFrameworkInitializer;
.super Ljava/lang/Object;
.source "ProviderFrameworkInitializer.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/provider/BlockedNumbersManager;
    .locals 1

    new-instance v0, Landroid/provider/BlockedNumbersManager;

    invoke-direct {v0, p0}, Landroid/provider/BlockedNumbersManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .locals 3

    const-class v0, Landroid/provider/BlockedNumbersManager;

    new-instance v1, Landroid/provider/ProviderFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/provider/ProviderFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "blocked_numbers"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    return-void
.end method
