.class public final Lcom/android/systemui/util/BinderLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Landroid/os/Binder$ProxyTransactListener;


# static fields
.field public static final $stable:I

.field private static final AOSP_SOURCE_FILE_MARKER:Ljava/lang/String; = "go/retraceme "

.field public static final Companion:Lcom/android/systemui/util/BinderLogger$Companion;

.field private static final KEYGUARD_PKG:Ljava/lang/String; = "com.android.keyguard"

.field private static final R8_SOURCE_FILE_MARKER:Ljava/lang/String; = "R8_"

.field private static final SYSUI_PKG:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "SystemUIBinder"

.field private static final TRACK_NAME:Ljava/lang/String; = "Blocking Binder Transactions"

.field private static final UNKNOWN:Ljava/lang/String; = "<unknown>"


# instance fields
.field private final featureFlags:Lcom/android/systemui/flags/FeatureFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/util/BinderLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/BinderLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/util/BinderLogger;->Companion:Lcom/android/systemui/util/BinderLogger$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/util/BinderLogger;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/BinderLogger;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    return-void
.end method


# virtual methods
.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic isDumpCritical()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onBootCompleted()V
    .locals 0

    return-void
.end method

.method public onTransactEnded(Ljava/lang/Object;)V
    .locals 2

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-wide/16 v0, 0x1000

    const-string p1, "Blocking Binder Transactions"

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;
    .locals 2

    and-int/lit8 p0, p3, 0x1

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    sget-object p1, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;->Companion:Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis$Companion;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis$Companion;->fromStackTrace([Ljava/lang/StackTraceElement;)Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;

    move-result-object p0

    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    invoke-virtual {p1}, Lkotlin/random/AbstractPlatformRandom;->nextInt()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;->getTraceMessage()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x1000

    const-string p3, "Blocking Binder Transactions"

    invoke-static {v0, v1, p3, p2, p1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;->isSystemUi()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;->getLogMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/BinderLogger$BinderTransactionAnalysis;->getLogMessage()Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/BinderLogger;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
