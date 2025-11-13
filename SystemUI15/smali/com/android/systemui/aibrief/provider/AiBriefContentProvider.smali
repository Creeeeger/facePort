.class public final Lcom/android/systemui/aibrief/provider/AiBriefContentProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x0

.field public static final CLEAR_SUGGESTION_NOW_BAR:Ljava/lang/String; = "CLEAR_SUGGESTION_NOW_BAR"

.field public static final CLEAR_SUGGESTION_REMOTE_NOW_BAR:Ljava/lang/String; = "CLEAR_SUGGESTION_REMOTE_NOW_BAR"

.field public static final CREATE_SUGGESTION_NOW_BAR:Ljava/lang/String; = "CREATE_SUGGESTION_NOW_BAR"

.field public static final CREATE_SUGGESTION_REMOTE_NOW_BAR:Ljava/lang/String; = "CREATE_SUGGESTION_REMOTE_NOW_BAR"

.field public static final Companion:Lcom/android/systemui/aibrief/provider/AiBriefContentProvider$Companion;

.field public static final GET_SUGGESTION_REMOTE_SPORTS_SCORE:Ljava/lang/String; = "GET_SUGGESTION_REMOTE_SPORTS_SCORE"

.field public static final UPDATE_SUGGESTION_NOW_BAR_NEED_TO_UNLOCK:Ljava/lang/String; = "UPDATE_SUGGESTION_NOW_BAR_NEED_TO_UNLOCK"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/aibrief/provider/AiBriefContentProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/aibrief/provider/AiBriefContentProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/aibrief/provider/AiBriefContentProvider;->Companion:Lcom/android/systemui/aibrief/provider/AiBriefContentProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v1, "data"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "call( method:"

    const-string v3, ", arg:"

    const-string v4, ", extrasBundle:"

    invoke-static {v2, p1, v3, p2, v4}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiBriefContentProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v3, "ERROR call() extras is null"

    const-class v4, Lcom/android/systemui/aibrief/AiBriefManager;

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "CREATE_SUGGESTION_NOW_BAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz p3, :cond_2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/aibrief/AiBriefManager;

    if-eqz v0, :cond_c

    invoke-interface {v0, p3}, Lcom/android/systemui/aibrief/AiBriefManager;->createNowBar(Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "CLEAR_SUGGESTION_NOW_BAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/aibrief/AiBriefManager;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/systemui/aibrief/AiBriefManager;->hideNowBar()V

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "GET_SUGGESTION_REMOTE_SPORTS_SCORE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    if-eqz p3, :cond_6

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/aibrief/AiBriefManager;

    if-eqz p0, :cond_5

    invoke-interface {p0, p3}, Lcom/android/systemui/aibrief/AiBriefManager;->findSportsScoreRemoteViews(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :cond_5
    return-object v0

    :cond_6
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_3
    const-string v0, "CREATE_SUGGESTION_REMOTE_NOW_BAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_8

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/aibrief/AiBriefManager;

    if-eqz v0, :cond_c

    invoke-interface {v0, p3}, Lcom/android/systemui/aibrief/AiBriefManager;->createRemoteNowBar(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_8
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_4
    const-string v0, "UPDATE_SUGGESTION_NOW_BAR_NEED_TO_UNLOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_a

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/aibrief/AiBriefManager;

    if-eqz v0, :cond_c

    invoke-interface {v0, p3}, Lcom/android/systemui/aibrief/AiBriefManager;->updateNowBarNeedToUnlock(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_5
    const-string v0, "CLEAR_SUGGESTION_REMOTE_NOW_BAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/aibrief/AiBriefManager;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/systemui/aibrief/AiBriefManager;->hideRemoteNowBar()V

    :cond_c
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5bb18806 -> :sswitch_5
        -0x3c79a247 -> :sswitch_4
        -0x30ffa5f7 -> :sswitch_3
        -0x28a8e787 -> :sswitch_2
        -0x16275cff -> :sswitch_1
        0x514463d2 -> :sswitch_0
    .end sparse-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p0, "AiBriefContentProvider"

    const-string p1, "delete()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, "AiBriefContentProvider"

    const-string p1, "getType()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const-string p0, "AiBriefContentProvider"

    const-string p1, "insert()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const-string p0, "AiBriefContentProvider"

    const-string p1, "query()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p0, "AiBriefContentProvider"

    const-string/jumbo p1, "update()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
