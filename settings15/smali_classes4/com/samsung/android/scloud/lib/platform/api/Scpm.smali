.class public final Lcom/samsung/android/scloud/lib/platform/api/Scpm;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final configuration:Lcom/samsung/android/scloud/lib/platform/api/Configuration;

.field public final registration:Lcom/samsung/android/scloud/lib/platform/api/Registration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;

    const-string v1, "ConfigurationApi"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/Scpm;->configuration:Lcom/samsung/android/scloud/lib/platform/api/Configuration;

    new-instance v0, Lcom/samsung/android/scloud/lib/platform/api/Registration;

    const-string v1, "RegistrationApi"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/Scpm;->registration:Lcom/samsung/android/scloud/lib/platform/api/Registration;

    return-void
.end method
