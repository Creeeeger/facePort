.class public abstract Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsTextDirty:Z

.field public mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

.field public final mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

.field public mWith:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    return-void
.end method

.method public static getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s"

    const-string v0, " "

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final appendThisChainItemText(Ljava/lang/StringBuffer;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-static {v1, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "with:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->appendThisChainItemText(Ljava/lang/StringBuffer;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getChainText()[Ljava/lang/String;
    .locals 12

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-static {v2, v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    const-string v4, "getChainText: invalid info at "

    const/4 v5, 0x2

    const-string v6, "LightingScheduleInfo"

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_2

    :cond_0
    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_0
    if-ge v7, v9, :cond_4

    iget-object v10, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-nez v10, :cond_1

    sget-boolean v10, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    if-lez v7, :cond_2

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    add-int/2addr v7, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "getChainText: from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, " ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v7

    :goto_3
    if-ge v9, v8, :cond_b

    iget-object v10, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-nez v10, :cond_8

    sget-boolean v10, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    invoke-virtual {v10}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    if-lez v9, :cond_9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    :goto_4
    add-int/2addr v9, v0

    goto :goto_3

    :cond_b
    new-array p0, v5, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v7

    return-object p0

    :cond_c
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getChainText()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getExtraKey()Ljava/lang/String;
.end method

.method public final isTextDirty()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    iget-boolean v4, v4, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    if-nez v0, :cond_4

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->isTextDirty()Z

    move-result p0

    return p0

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final mergeText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 3

    invoke-virtual {p0, p0, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mergeTextChainItem(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mergeTextChainItem(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mergeText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    :cond_1
    return-void
.end method

.method public final mergeTextChainItem(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-static {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    xor-int/lit8 v4, v1, 0x1

    iput-boolean v4, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    sget-boolean v4, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    const-string v5, "LightingScheduleInfo"

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, "_mergeText: ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "] --> ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string v4, " = isDirty : "

    const-string v6, " mergeTextChainItem :"

    if-nez v3, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": prev : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v1, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " this : "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    if-nez v3, :cond_8

    if-nez v1, :cond_9

    :cond_8
    if-eqz v0, :cond_c

    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_b

    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_a
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0, v1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    :cond_b
    iput-boolean v2, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    :cond_c
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "NotiTextChain: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    :goto_0
    iget-object v2, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->appendThisChainItemText(Ljava/lang/StringBuffer;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)V

    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->appendThisChainItemText(Ljava/lang/StringBuffer;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
