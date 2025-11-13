.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogSender;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogSender;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogSender;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-void
.end method
