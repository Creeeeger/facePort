.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final collator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/systemui/edgelighting/data/AppInfo;

    check-cast p2, Lcom/android/systemui/edgelighting/data/AppInfo;

    :try_start_0
    iget v0, p1, Lcom/android/systemui/edgelighting/data/AppInfo;->priority:I

    iget v1, p2, Lcom/android/systemui/edgelighting/data/AppInfo;->priority:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;->collator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/data/AppInfo;->appName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/systemui/edgelighting/data/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sub-int p0, v1, v0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to compare AppInfo. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLightingSettingManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_1
    return p0
.end method
