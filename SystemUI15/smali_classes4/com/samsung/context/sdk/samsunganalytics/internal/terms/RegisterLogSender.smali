.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final application:Landroid/app/Application;

.field public final config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field public final deviceId:Ljava/lang/String;

.field public final registerType:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->application:Landroid/app/Application;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->deviceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->registerType:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    return-void
.end method
