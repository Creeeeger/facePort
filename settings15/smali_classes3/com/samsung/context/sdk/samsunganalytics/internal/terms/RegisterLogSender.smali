.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final application:Landroid/app/Application;

.field public final config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field public final deviceId:Ljava/lang/String;

.field public final registerType:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->SEND_PREVIOUS_REGISTRATION_INFO:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->application:Landroid/app/Application;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->registerType:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    return-void
.end method
