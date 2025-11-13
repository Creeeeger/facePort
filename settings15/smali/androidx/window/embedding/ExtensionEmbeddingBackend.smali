.class public final Landroidx/window/embedding/ExtensionEmbeddingBackend;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/embedding/EmbeddingBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/ExtensionEmbeddingBackend$Api31Impl;,
        Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;,
        Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;,
        Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;,
        Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ca\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 b2\u00020\u0001:\u0005abcdeB\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!H\u0017J&\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020)0!H\u0017J\u0010\u0010*\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020,H\u0017J,\u0010-\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\'2\u0012\u0010 \u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0.0!H\u0016J\u0008\u00100\u001a\u000201H\u0002J\u0008\u00102\u001a\u00020\u001dH\u0017J\u0008\u00103\u001a\u00020\u001dH\u0017J\u0016\u00104\u001a\u00020\u001d2\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020706H\u0017J\u0012\u00108\u001a\u0004\u0018\u0001072\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0012\u00109\u001a\u0004\u0018\u0001072\u0006\u0010\u001e\u001a\u00020\u001fH\u0003J\u000e\u0010:\u001a\u0008\u0012\u0004\u0012\u00020,06H\u0017J\u0008\u0010;\u001a\u00020\u001dH\u0017J\u0010\u0010<\u001a\u0002012\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010=\u001a\u0002012\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0017J\u0016\u0010B\u001a\u00020\u001d2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!H\u0017J\u0016\u0010C\u001a\u00020\u001d2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020)0!H\u0017J\u0010\u0010D\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020,H\u0017J\u001c\u0010E\u001a\u00020\u001d2\u0012\u0010F\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0.0!H\u0016J\u0010\u0010G\u001a\u00020\u001d2\u0006\u0010H\u001a\u00020IH\u0017J\u0018\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020K2\u0006\u0010M\u001a\u000207H\u0017J\u001c\u0010N\u001a\u00020\u001d2\u0012\u0010O\u001a\u000e\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020R0PH\u0017J\u0018\u0010S\u001a\u00020K2\u0006\u0010L\u001a\u00020K2\u0006\u0010T\u001a\u00020UH\u0017J\u0016\u0010V\u001a\u00020\u001d2\u000c\u0010W\u001a\u0008\u0012\u0004\u0012\u00020,06H\u0017J\u001c\u0010X\u001a\u00020\u001d2\u0012\u0010O\u001a\u000e\u0012\u0004\u0012\u00020Y\u0012\u0004\u0012\u00020Z0PH\u0017J\u0010\u0010[\u001a\u00020\u001d2\u0006\u0010>\u001a\u00020?H\u0017J\u0018\u0010\\\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020%2\u0006\u0010]\u001a\u00020RH\u0017J\u0018\u0010^\u001a\u00020\u001d2\u0006\u0010_\u001a\u00020/2\u0006\u0010`\u001a\u00020ZH\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00060\u0008R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u00020\u000e8\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0016\u001a\u00020\u00178VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006f"
    }
    d2 = {
        "Landroidx/window/embedding/ExtensionEmbeddingBackend;",
        "Landroidx/window/embedding/EmbeddingBackend;",
        "applicationContext",
        "Landroid/content/Context;",
        "embeddingExtension",
        "Landroidx/window/embedding/EmbeddingInterfaceCompat;",
        "(Landroid/content/Context;Landroidx/window/embedding/EmbeddingInterfaceCompat;)V",
        "embeddingCallback",
        "Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;",
        "getEmbeddingExtension",
        "()Landroidx/window/embedding/EmbeddingInterfaceCompat;",
        "setEmbeddingExtension",
        "(Landroidx/window/embedding/EmbeddingInterfaceCompat;)V",
        "ruleTracker",
        "Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;",
        "splitChangeCallbacks",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;",
        "getSplitChangeCallbacks$annotations",
        "()V",
        "getSplitChangeCallbacks",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "splitSupportStatus",
        "Landroidx/window/embedding/SplitController$SplitSupportStatus;",
        "getSplitSupportStatus",
        "()Landroidx/window/embedding/SplitController$SplitSupportStatus;",
        "splitSupportStatus$delegate",
        "Lkotlin/Lazy;",
        "addEmbeddedActivityWindowInfoCallbackForActivity",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Landroidx/core/util/Consumer;",
        "Landroidx/window/embedding/EmbeddedActivityWindowInfo;",
        "addOverlayInfoCallback",
        "overlayTag",
        "",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "overlayInfoCallback",
        "Landroidx/window/embedding/OverlayInfo;",
        "addRule",
        "rule",
        "Landroidx/window/embedding/EmbeddingRule;",
        "addSplitListenerForActivity",
        "",
        "Landroidx/window/embedding/SplitInfo;",
        "areExtensionsAvailable",
        "",
        "clearOverlayAttributesCalculator",
        "clearSplitAttributesCalculator",
        "finishActivityStacks",
        "activityStacks",
        "",
        "Landroidx/window/embedding/ActivityStack;",
        "getActivityStack",
        "getActivityStackFromSplitInfoList",
        "getRules",
        "invalidateVisibleActivityStacks",
        "isActivityEmbedded",
        "pinTopActivityStack",
        "taskId",
        "",
        "splitPinRule",
        "Landroidx/window/embedding/SplitPinRule;",
        "removeEmbeddedActivityWindowInfoCallbackForActivity",
        "removeOverlayInfoCallback",
        "removeRule",
        "removeSplitListenerForActivity",
        "consumer",
        "setEmbeddingConfiguration",
        "embeddingConfig",
        "Landroidx/window/embedding/EmbeddingConfiguration;",
        "setLaunchingActivityStack",
        "Landroid/os/Bundle;",
        "options",
        "activityStack",
        "setOverlayAttributesCalculator",
        "calculator",
        "Lkotlin/Function1;",
        "Landroidx/window/embedding/OverlayAttributesCalculatorParams;",
        "Landroidx/window/embedding/OverlayAttributes;",
        "setOverlayCreateParams",
        "overlayCreateParams",
        "Landroidx/window/embedding/OverlayCreateParams;",
        "setRules",
        "rules",
        "setSplitAttributesCalculator",
        "Landroidx/window/embedding/SplitAttributesCalculatorParams;",
        "Landroidx/window/embedding/SplitAttributes;",
        "unpinTopActivityStack",
        "updateOverlayAttributes",
        "overlayAttributes",
        "updateSplitAttributes",
        "splitInfo",
        "splitAttributes",
        "Api31Impl",
        "Companion",
        "EmbeddingCallbackImpl",
        "RuleTracker",
        "SplitListenerWrapper",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

.field private static final TAG:Ljava/lang/String; = "EmbeddingBackend"

.field private static volatile globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

.field private static final globalLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final embeddingCallback:Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

.field private embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

.field private final ruleTracker:Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;

.field private final splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final splitSupportStatus$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->Companion:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/window/embedding/EmbeddingInterfaceCompat;)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    new-instance p1, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    invoke-direct {p1, p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingCallback:Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p2, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setEmbeddingCallback(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V

    :cond_0
    new-instance p1, Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;

    invoke-direct {p1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->ruleTracker:Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;

    new-instance p1, Landroidx/window/embedding/ExtensionEmbeddingBackend$splitSupportStatus$2;

    invoke-direct {p1, p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$splitSupportStatus$2;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitSupportStatus$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$areExtensionsAvailable(Landroidx/window/embedding/ExtensionEmbeddingBackend;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->areExtensionsAvailable()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getApplicationContext$p(Landroidx/window/embedding/ExtensionEmbeddingBackend;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getGlobalInstance$cp()Landroidx/window/embedding/ExtensionEmbeddingBackend;
    .locals 1

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    return-object v0
.end method

.method public static final synthetic access$getGlobalLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$setGlobalInstance$cp(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V
    .locals 0

    sput-object p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    return-void
.end method

.method private final areExtensionsAvailable()Z
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final getActivityStackFromSplitInfoList(Landroid/app/Activity;)Landroidx/window/embedding/ActivityStack;
    .locals 2

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingCallback:Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    invoke-virtual {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;->getLastInfo()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/embedding/SplitInfo;

    invoke-virtual {v0, p1}, Landroidx/window/embedding/SplitInfo;->contains(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/window/embedding/SplitInfo;->getPrimaryActivityStack()Landroidx/window/embedding/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/window/embedding/ActivityStack;->contains(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/window/embedding/SplitInfo;->getPrimaryActivityStack()Landroidx/window/embedding/ActivityStack;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Landroidx/window/embedding/SplitInfo;->getSecondaryActivityStack()Landroidx/window/embedding/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/window/embedding/ActivityStack;->contains(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/window/embedding/SplitInfo;->getSecondaryActivityStack()Landroidx/window/embedding/ActivityStack;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic getSplitChangeCallbacks$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addEmbeddedActivityWindowInfoCallbackForActivity(Landroid/app/Activity;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->addEmbeddedActivityWindowInfoCallbackForActivity(Landroid/app/Activity;Landroidx/core/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public addOverlayInfoCallback(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    const-string v0, "overlayTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayInfoCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->addOverlayInfoCallback(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Landroidx/window/embedding/OverlayInfo;

    invoke-direct {p0, p1, v0, v0}, Landroidx/window/embedding/OverlayInfo;-><init>(Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;Landroidx/window/embedding/ActivityStack;)V

    invoke-interface {p3, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public addRule(Landroidx/window/embedding/EmbeddingRule;)V
    .locals 5

    const-string v0, "rule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->ruleTracker:Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;

    invoke-virtual {v1, p1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;->contains(Landroidx/window/embedding/EmbeddingRule;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->ruleTracker:Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, p1, v4, v2, v3}, Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;->addOrUpdateRule$default(Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;Landroidx/window/embedding/EmbeddingRule;ZILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->getRules()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setRules(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public addSplitListenerForActivity(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-nez v1, :cond_0

    const-string p0, "EmbeddingBackend"

    const-string p1, "Extension not loaded, skipping callback registration."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-interface {p3, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;-><init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    iget-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingCallback:Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    invoke-virtual {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;->getLastInfo()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;->accept(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public clearOverlayAttributesCalculator()V
    .locals 0
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->clearOverlayAttributesCalculator()V

    :cond_0
    return-void
.end method

.method public clearSplitAttributesCalculator()V
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x2
    .end annotation

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->clearSplitAttributesCalculator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public finishActivityStacks(Ljava/util/Set;)V
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/ActivityStack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activityStacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->finishActivityStacks(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public getActivityStack(Landroid/app/Activity;)Landroidx/window/embedding/ActivityStack;
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingCallback:Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    invoke-virtual {v1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;->getLastActivityStacks()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/window/embedding/ActivityStack;

    invoke-virtual {v3, p1}, Landroidx/window/embedding/ActivityStack;->contains(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Landroidx/window/embedding/ActivityStack;

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->getActivityStackFromSplitInfoList(Landroid/app/Activity;)Landroidx/window/embedding/ActivityStack;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final getEmbeddingExtension()Landroidx/window/embedding/EmbeddingInterfaceCompat;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    return-object p0
.end method

.method public getRules()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->ruleTracker:Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;

    invoke-virtual {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;->getSplitRules()Landroidx/collection/ArraySet;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final getSplitChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getSplitSupportStatus()Landroidx/window/embedding/SplitController$SplitSupportStatus;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitSupportStatus$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/embedding/SplitController$SplitSupportStatus;

    return-object p0
.end method

.method public invalidateVisibleActivityStacks()V
    .locals 0
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x3
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->invalidateVisibleActivityStacks()V

    :cond_0
    return-void
.end method

.method public isActivityEmbedded(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pinTopActivityStack(ILandroidx/window/embedding/SplitPinRule;)Z
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x5
    .end annotation

    const-string/jumbo v0, "splitPinRule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->pinTopActivityStack(ILandroidx/window/embedding/SplitPinRule;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeEmbeddedActivityWindowInfoCallbackForActivity(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->removeEmbeddedActivityWindowInfoCallbackForActivity(Landroidx/core/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public removeOverlayInfoCallback(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    const-string v0, "overlayInfoCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->removeOverlayInfoCallback(Landroidx/core/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public removeRule(Landroidx/window/embedding/EmbeddingRule;)V
    .locals 2

    const-string v0, "rule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->ruleTracker:Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;

    invoke-virtual {v1, p1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;->contains(Landroidx/window/embedding/EmbeddingRule;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->ruleTracker:Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;

    invoke-virtual {v1, p1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;->removeRule(Landroidx/window/embedding/EmbeddingRule;)V

    iget-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->getRules()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setRules(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public removeSplitListenerForActivity(Landroidx/core/util/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;

    invoke-virtual {v2}, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;->getCallback()Landroidx/core/util/Consumer;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public setEmbeddingConfiguration(Landroidx/window/embedding/EmbeddingConfiguration;)V
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x5
    .end annotation

    const-string v0, "embeddingConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setEmbeddingConfiguration(Landroidx/window/embedding/EmbeddingConfiguration;)V

    :cond_0
    return-void
.end method

.method public final setEmbeddingExtension(Landroidx/window/embedding/EmbeddingInterfaceCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    return-void
.end method

.method public setLaunchingActivityStack(Landroid/os/Bundle;Landroidx/window/embedding/ActivityStack;)Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x5
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setLaunchingActivityStack(Landroid/os/Bundle;Landroidx/window/embedding/ActivityStack;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public setOverlayAttributesCalculator(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "calculator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setOverlayAttributesCalculator(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public setOverlayCreateParams(Landroid/os/Bundle;Landroidx/window/embedding/OverlayCreateParams;)Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayCreateParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setOverlayCreateParams(Landroid/os/Bundle;Landroidx/window/embedding/OverlayCreateParams;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public setRules(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->ruleTracker:Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;

    invoke-virtual {v1, p1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;->setRules(Ljava/util/Set;)V

    iget-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->getRules()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setRules(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public setSplitAttributesCalculator(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "calculator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setSplitAttributesCalculator(Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public unpinTopActivityStack(I)V
    .locals 0
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x5
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->unpinTopActivityStack(I)V

    :cond_0
    return-void
.end method

.method public updateOverlayAttributes(Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;)V
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    const-string v0, "overlayTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayAttributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->updateOverlayAttributes(Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;)V

    :cond_0
    return-void
.end method

.method public updateSplitAttributes(Landroidx/window/embedding/SplitInfo;Landroidx/window/embedding/SplitAttributes;)V
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x3
    .end annotation

    const-string/jumbo v0, "splitInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "splitAttributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->updateSplitAttributes(Landroidx/window/embedding/SplitInfo;Landroidx/window/embedding/SplitAttributes;)V

    :cond_0
    return-void
.end method
