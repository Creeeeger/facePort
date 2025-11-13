.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final application:Landroid/app/Application;

.field public final config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field public final deviceId:Ljava/lang/String;

.field public final registerType:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->SEND_PREVIOUS_REGISTRATION_INFO:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->application:Landroid/app/Application;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->deviceId:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->registerType:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 17
    .line 18
    return-void
.end method
