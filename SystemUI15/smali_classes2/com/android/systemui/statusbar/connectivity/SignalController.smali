.class public abstract Lcom/android/systemui/statusbar/connectivity/SignalController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CHATTY:Z

.field public static final DEBUG:Z


# instance fields
.field public final mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

.field public final mHistory:[Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

.field public mHistoryIndex:I

.field public final mLastState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

.field public final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

.field public final mTag:Ljava/lang/String;

.field public final mTransportType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->DEBUG:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->CHATTY:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->CHATTY:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NetworkController."

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iput p3, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTransportType:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->cleanState()Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->cleanState()Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    const/16 p1, 0x40

    new-array p2, p1, [Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistory:[Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistory:[Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->cleanState()Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-result-object p4

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract cleanState()Lcom/android/systemui/statusbar/connectivity/ConnectivityState;
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Current State: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getOrderedHistoryExcludingCurrentState()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Previous State("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistory:[Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    aget-object v1, v4, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dumpTableData(Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getOrderedHistoryExcludingCurrentState()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->tableData()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/dump/DumpsysTableLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->tableColumns()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, p1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getContentDescription()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->contentDesc:[I

    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    aget p0, v0, p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget p0, p0, Lcom/android/settingslib/SignalIcon$IconGroup;->discContentDesc:I

    return p0
.end method

.method public getCurrentIconId()I
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->sbIcons:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    aget-object v0, v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    aget p0, v0, p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget p0, p0, Lcom/android/settingslib/SignalIcon$IconGroup;->sbDiscState:I

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget p0, p0, Lcom/android/settingslib/SignalIcon$IconGroup;->sbNullState:I

    return p0
.end method

.method public final getOrderedHistoryExcludingCurrentState()Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistory:[Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    aget-object v3, v3, v1

    iget-wide v3, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->time:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistoryIndex:I

    add-int/lit8 v1, v1, 0x3f

    :goto_1
    iget v5, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistoryIndex:I

    add-int/2addr v5, v4

    sub-int/2addr v5, v2

    if-lt v1, v5, :cond_2

    and-int/lit8 v5, v1, 0x3f

    aget-object v5, v3, v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final getTextIfExists(I)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final notifyListeners()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V

    return-void
.end method

.method public abstract notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
.end method

.method public final notifyListenersIfNecessary()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/connectivity/SignalController;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Change in state from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistory:[Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistoryIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->copyFrom(Lcom/android/systemui/statusbar/connectivity/ConnectivityState;)V

    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistoryIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistoryIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->time:J

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->copyFrom(Lcom/android/systemui/statusbar/connectivity/ConnectivityState;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListeners()V

    :cond_1
    return-void
.end method
