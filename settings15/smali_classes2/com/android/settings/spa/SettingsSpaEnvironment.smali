.class public final Lcom/android/settings/spa/SettingsSpaEnvironment;
.super Lcom/android/settingslib/spa/framework/common/SpaEnvironment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final logger:Lcom/android/settingslib/spa/framework/common/SpaLogger;

.field public final pageProviderRepository:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/spa/SettingsSpaEnvironment$pageProviderRepository$1;

    invoke-direct {v0, p0}, Lcom/android/settings/spa/SettingsSpaEnvironment$pageProviderRepository$1;-><init>(Lcom/android/settings/spa/SettingsSpaEnvironment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spa/SettingsSpaEnvironment;->pageProviderRepository:Lkotlin/Lazy;

    const-string v0, "settings_enable_spa_metrics"

    invoke-static {p1, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/settings/spa/core/instrumentation/SpaLogMetricsProvider;->INSTANCE:Lcom/android/settings/spa/core/instrumentation/SpaLogMetricsProvider;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/settings/spa/SettingsSpaEnvironment$logger$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/android/settings/spa/SettingsSpaEnvironment;->logger:Lcom/android/settingslib/spa/framework/common/SpaLogger;

    return-void
.end method
