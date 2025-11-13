.class public Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final HANDLERS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.samsung.android.settings.accessibility.broadcast.AccessibilityShortcutReceiver"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver;->HANDLERS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "A11yBroadcastReceiver"

    if-eqz p2, :cond_0

    const-string p0, "[onReceive] ACTION_BOOT_COMPLETED"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/Thread;

    new-instance p2, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "[onReceive] ACTION_LOCALE_CHANGED"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/Thread;

    new-instance p2, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
