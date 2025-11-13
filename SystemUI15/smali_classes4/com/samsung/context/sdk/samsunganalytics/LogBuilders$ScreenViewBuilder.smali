.class public final Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;
.super Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->logs:Ljava/util/Map;

    const-string v1, "pn"

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failure to build Log : Screen name cannot be null"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->throwException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "t"

    const-string v1, "pv"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ts"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->logs:Ljava/util/Map;

    return-object p0
.end method

.method public final setScreenView$1(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Failure to set Screen View : Screen name cannot be null."

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->throwException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "pn"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
