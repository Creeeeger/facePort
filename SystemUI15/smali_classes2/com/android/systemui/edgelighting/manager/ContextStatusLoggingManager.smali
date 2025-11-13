.class public final Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mInstance:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mLastUpdateTime:J


# direct methods
.method public static -$$Nest$msendEdgeLightingStatusLogging(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "edge_lighting_color_type"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EL13"

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "edge_lighting_transparency"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "EL14"

    invoke-static {v5, v1, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "edge_lighting_thickness"

    invoke-static {v5, v7, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "EL15"

    invoke-static {v5, v3, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EL20"

    invoke-static {v6, v5, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "EL21"

    invoke-static {v6, v2, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "EL22"

    invoke-static {v7, v6, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContextStatusLoggingManager"

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mLastUpdateTime:J

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mInstance:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;-><init>()V

    sput-object v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mInstance:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mInstance:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    return-object v0
.end method

.method public static makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "extra"

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo p0, "value"

    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_CONTEXTSERVICE_ENABLE_SURVEY:Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo p1, "sendContextServiceLog -  servey mode feature not enabled"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "sendStatusContextLogging: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "data"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final updateStatusLoggingItem(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xf731400

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateStatusLoggingItem: on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mLastUpdateTime:J

    new-instance v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;-><init>(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;)V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Void;

    const/4 p1, 0x0

    const/4 v1, 0x0

    aput-object v1, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    const/4 p1, 0x2

    aput-object v1, p0, p1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
