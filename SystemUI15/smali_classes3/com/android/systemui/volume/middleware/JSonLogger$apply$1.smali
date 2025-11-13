.class public final Lcom/android/systemui/volume/middleware/JSonLogger$apply$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

.field public final synthetic this$0:Lcom/android/systemui/volume/middleware/JSonLogger;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/android/systemui/volume/middleware/JSonLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/JSonLogger$apply$1;->$action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    iput-object p2, p0, Lcom/android/systemui/volume/middleware/JSonLogger$apply$1;->this$0:Lcom/android/systemui/volume/middleware/JSonLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/volume/middleware/JSonLogger$apply$1;->$action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/JSonLogger$apply$1;->this$0:Lcom/android/systemui/volume/middleware/JSonLogger;

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/JSonLogger;->log:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/basic/util/LogWrapper;->p(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
