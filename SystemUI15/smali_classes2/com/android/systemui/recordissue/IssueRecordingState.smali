.class public final Lcom/android/systemui/recordissue/IssueRecordingState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ALL_ISSUE_TYPES:Ljava/util/Map;

.field public static final Companion:Lcom/android/systemui/recordissue/IssueRecordingState$Companion;


# instance fields
.field public isRecording:Z

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/recordissue/IssueRecordingState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/recordissue/IssueRecordingState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/recordissue/IssueRecordingState;->Companion:Lcom/android/systemui/recordissue/IssueRecordingState$Companion;

    new-instance v0, Lkotlin/Pair;

    const v1, 0x7f130da6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/traceur/TraceUtils$PresetTraceType;->PERFORMANCE:Lcom/android/traceur/TraceUtils$PresetTraceType;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    const v2, 0x7f131426

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/traceur/TraceUtils$PresetTraceType;->UI:Lcom/android/traceur/TraceUtils$PresetTraceType;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    const v3, 0x7f1301df

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/traceur/TraceUtils$PresetTraceType;->BATTERY:Lcom/android/traceur/TraceUtils$PresetTraceType;

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    const v4, 0x7f13135e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/traceur/TraceUtils$PresetTraceType;->THERMAL:Lcom/android/traceur/TraceUtils$PresetTraceType;

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recordissue/IssueRecordingState;->ALL_ISSUE_TYPES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/UserFileManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    check-cast p2, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v0, "record_issue"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/recordissue/IssueRecordingState;->prefs:Landroid/content/SharedPreferences;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recordissue/IssueRecordingState;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method
