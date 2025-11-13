.class public final Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromStackTrace([Ljava/lang/StackTraceElement;)Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;
    .locals 9

    array-length p0, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ge p0, v0, :cond_0

    new-instance p0, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;

    invoke-direct {p0, v1, v2, v2}, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;-><init>(ZLjava/lang/StackTraceElement;Ljava/lang/StackTraceElement;)V

    return-object p0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/StackTraceElement;

    array-length v0, p1

    const/4 v3, 0x1

    move-object v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v0, :cond_5

    aget-object v6, p1, v5

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v8, "$Stub$Proxy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v3, :cond_1

    move-object v4, p0

    move-object v2, v6

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/android/systemui/util/BinderLogger;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v8, "com.android.systemui"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "com.android.keyguard"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    new-instance p1, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v4

    :goto_1
    invoke-direct {p1, v3, v6, p0}, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;-><init>(ZLjava/lang/StackTraceElement;Ljava/lang/StackTraceElement;)V

    return-object p1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move-object p0, v6

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;-><init>(ZLjava/lang/StackTraceElement;Ljava/lang/StackTraceElement;)V

    return-object p0
.end method
