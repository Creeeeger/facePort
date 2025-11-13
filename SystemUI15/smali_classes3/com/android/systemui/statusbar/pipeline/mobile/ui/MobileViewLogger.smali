.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public final collectionStatuses:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Lcom/android/systemui/Dumpable;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->collectionStatuses:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "Collection statuses per view:---"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->collectionStatuses:Ljava/util/Map;

    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$dump$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$dump$1;-><init>(Ljava/io/PrintWriter;)V

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final logCollectionStarted(Landroid/view/View;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->collectionStatuses:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;->getIdForLogging(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$logCollectionStarted$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$logCollectionStarted$2;

    const-string v2, "MobileViewLogger"

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;->getIdForLogging(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;->getIdForLogging(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->location:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logCollectionStopped(Landroid/view/View;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->collectionStatuses:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;->getIdForLogging(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$logCollectionStopped$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$logCollectionStopped$2;

    const-string v2, "MobileViewLogger"

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;->getIdForLogging(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;->getIdForLogging(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->location:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logNewViewBinding(Landroid/view/View;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$logNewViewBinding$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$logNewViewBinding$2;

    const-string v2, "MobileViewLogger"

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;->getIdForLogging(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$Companion;->getIdForLogging(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->location:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
