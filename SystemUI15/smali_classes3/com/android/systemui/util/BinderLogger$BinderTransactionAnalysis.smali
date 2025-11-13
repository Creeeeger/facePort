.class final Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis$Companion;


# instance fields
.field private final isSystemUi:Z

.field private final logMessage:Ljava/lang/String;

.field private final traceMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;->Companion:Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis$Companion;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/StackTraceElement;Ljava/lang/StackTraceElement;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;->isSystemUi:Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/util/BinderLogger;->Companion:Lcom/android/systemui/util/BinderLogger$Companion;

    invoke-static {v0, p2}, Lcom/android/systemui/util/BinderLogger$Companion;->access$getSimpleCallRefWithFileAndLineNumber(Lcom/android/systemui/util/BinderLogger$Companion;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/util/BinderLogger;->Companion:Lcom/android/systemui/util/BinderLogger$Companion;

    invoke-static {v0, p2}, Lcom/android/systemui/util/BinderLogger$Companion;->access$getSimpleCallRef(Lcom/android/systemui/util/BinderLogger$Companion;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "()"

    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    sget-object v0, Lcom/android/systemui/util/BinderLogger;->Companion:Lcom/android/systemui/util/BinderLogger$Companion;

    invoke-static {v0, p3}, Lcom/android/systemui/util/BinderLogger$Companion;->access$getBinderCallRef(Lcom/android/systemui/util/BinderLogger$Companion;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p3

    const-string v0, " -> "

    invoke-static {p2, v0, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_1

    const-string p3, ", but the call did not originate from System UI"

    goto :goto_1

    :cond_1
    const-string p3, ""

    :goto_1
    const-string v0, "Blocking binder transaction detected"

    const-string v1, ": "

    invoke-static {v0, p3, v1, p2}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;->logMessage:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string/jumbo p1, "sysui"

    goto :goto_2

    :cond_2
    const-string p1, "core"

    :goto_2
    invoke-static {p1, v1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;->traceMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLogMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;->logMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final getTraceMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;->traceMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final isSystemUi()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;->isSystemUi:Z

    return p0
.end method
