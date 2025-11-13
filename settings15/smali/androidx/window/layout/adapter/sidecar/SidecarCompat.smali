.class public final Landroidx/window/layout/adapter/sidecar/SidecarCompat;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;,
        Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;,
        Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;,
        Landroidx/window/layout/adapter/sidecar/SidecarCompat$TranslatingCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 #2\u00020\u0001:\u0004#$%&B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0007\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000cH\u0007J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u000cH\u0016J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u000cH\u0016J\u0016\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u000cJ\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u000cH\u0002J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u000cH\u0002J\u0008\u0010!\u001a\u00020\"H\u0017R \u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Landroidx/window/layout/adapter/sidecar/SidecarCompat;",
        "Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "sidecar",
        "Landroidx/window/sidecar/SidecarInterface;",
        "sidecarAdapter",
        "Landroidx/window/layout/adapter/sidecar/SidecarAdapter;",
        "(Landroidx/window/sidecar/SidecarInterface;Landroidx/window/layout/adapter/sidecar/SidecarAdapter;)V",
        "componentCallbackMap",
        "",
        "Landroid/app/Activity;",
        "Landroidx/core/util/Consumer;",
        "Landroid/content/res/Configuration;",
        "extensionCallback",
        "Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;",
        "getSidecar",
        "()Landroidx/window/sidecar/SidecarInterface;",
        "windowListenerRegisteredContexts",
        "Landroid/os/IBinder;",
        "getWindowLayoutInfo",
        "Landroidx/window/layout/WindowLayoutInfo;",
        "activity",
        "onWindowLayoutChangeListenerAdded",
        "",
        "onWindowLayoutChangeListenerRemoved",
        "register",
        "windowToken",
        "registerConfigurationChangeListener",
        "setExtensionCallback",
        "Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat$ExtensionCallbackInterface;",
        "unregisterComponentCallback",
        "validateExtensionInterface",
        "",
        "Companion",
        "DistinctElementCallback",
        "FirstAttachAdapter",
        "TranslatingCallback",
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
.field public static final Companion:Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;

.field private static final TAG:Ljava/lang/String; = "SidecarCompat"


# instance fields
.field private final componentCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Landroidx/core/util/Consumer;",
            ">;"
        }
    .end annotation
.end field

.field private extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

.field private final sidecar:Landroidx/window/sidecar/SidecarInterface;

.field private final sidecarAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

.field private final windowListenerRegisteredContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$G1s5FU0FrG9IHsyC5kQFGVG14YY(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->registerConfigurationChangeListener$lambda$0(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->Companion:Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->Companion:Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;

    invoke-virtual {v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;->getSidecarCompat$window_release(Landroid/content/Context;)Landroidx/window/sidecar/SidecarInterface;

    move-result-object p1

    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;-><init>(Landroidx/window/core/VerificationMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, p1, v0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;-><init>(Landroidx/window/sidecar/SidecarInterface;Landroidx/window/layout/adapter/sidecar/SidecarAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroidx/window/sidecar/SidecarInterface;Landroidx/window/layout/adapter/sidecar/SidecarAdapter;)V
    .locals 1

    const-string/jumbo v0, "sidecarAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    iput-object p2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecarAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->componentCallbackMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getExtensionCallback$p(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    return-object p0
.end method

.method public static final synthetic access$getSidecarAdapter$p(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)Landroidx/window/layout/adapter/sidecar/SidecarAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecarAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    return-object p0
.end method

.method public static final synthetic access$getWindowListenerRegisteredContexts$p(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    return-object p0
.end method

.method private final registerConfigurationChangeListener(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->componentCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroidx/core/content/OnConfigurationChangedProvider;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;)V

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->componentCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/core/content/OnConfigurationChangedProvider;

    invoke-interface {p1, v0}, Landroidx/core/content/OnConfigurationChangedProvider;->addOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    :cond_0
    return-void
.end method

.method private static final registerConfigurationChangeListener$lambda$0(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V

    :cond_0
    return-void
.end method

.method private final unregisterComponentCallback(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->componentCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Consumer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Landroidx/core/content/OnConfigurationChangedProvider;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroidx/core/content/OnConfigurationChangedProvider;

    invoke-interface {v1, v0}, Landroidx/core/content/OnConfigurationChangedProvider;->removeOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    :cond_1
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->componentCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getSidecar()Landroidx/window/sidecar/SidecarInterface;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    return-object p0
.end method

.method public final getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/layout/WindowLayoutInfo;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->Companion:Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;

    invoke-virtual {v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;->getActivityWindowToken$window_release(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p0, p1}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/window/sidecar/SidecarInterface;->getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecarAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_2
    new-instance p0, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {p0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    :cond_3
    invoke-virtual {v0, p1, p0}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;->translate(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object p0

    return-object p0
.end method

.method public onWindowLayoutChangeListenerAdded(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->Companion:Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;

    invoke-virtual {v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;->getActivityWindowToken$window_release(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->register(Landroid/os/IBinder;Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;

    invoke-direct {v0, p0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method public onWindowLayoutChangeListenerRemoved(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->Companion:Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;

    invoke-virtual {v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;->getActivityWindowToken$window_release(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerRemoved(Landroid/os/IBinder;)V

    :cond_1
    invoke-direct {p0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->unregisterComponentCallback(Landroid/app/Activity;)V

    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;->clearWindowLayoutInfo(Landroid/app/Activity;)V

    :cond_2
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p0, :cond_4

    invoke-interface {p0, v1}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    :cond_4
    return-void
.end method

.method public final register(Landroid/os/IBinder;Landroid/app/Activity;)V
    .locals 1

    const-string/jumbo v0, "windowToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerAdded(Landroid/os/IBinder;)V

    :cond_0
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    :cond_1
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V

    :cond_2
    invoke-direct {p0, p2}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->registerConfigurationChangeListener(Landroid/app/Activity;)V

    return-void
.end method

.method public setExtensionCallback(Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V
    .locals 3

    const-string v0, "extensionCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    invoke-direct {v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;-><init>(Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V

    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;

    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecarAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    new-instance v2, Landroidx/window/layout/adapter/sidecar/SidecarCompat$TranslatingCallback;

    invoke-direct {v2, p0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$TranslatingCallback;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)V

    invoke-direct {v0, v1, v2}, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarAdapter;Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V

    invoke-interface {p1, v0}, Landroidx/window/sidecar/SidecarInterface;->setSidecarCallback(Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V

    :cond_0
    return-void
.end method

.method public validateExtensionInterface()Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection"
        }
    .end annotation

    const-string v0, "Illegal return type for \'onWindowLayoutChangeListenerRemoved\': "

    const-string v1, "Illegal return type for \'onWindowLayoutChangeListenerAdded\': "

    const-string v2, "Illegal return type for \'getWindowLayoutInfo\': "

    const-string v3, "Illegal return type for \'setSidecarCallback\': "

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v8, "setSidecarCallback"

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    aput-object v10, v9, v4

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v7

    :goto_1
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v3, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    :cond_2
    iget-object v3, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v3, :cond_3

    invoke-interface {v3, v6}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    :cond_3
    iget-object v3, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getWindowLayoutInfo"

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v9, v4

    invoke-virtual {v3, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v7

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v7

    :goto_3
    const-class v5, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onWindowLayoutChangeListenerAdded"

    new-array v5, v6, [Ljava/lang/Class;

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v5, v4

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, v7

    :goto_4
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    goto :goto_5

    :cond_7
    move-object v2, v7

    :goto_5
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "onWindowLayoutChangeListenerRemoved"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_6

    :cond_8
    move-object p0, v7

    :goto_6
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_7

    :cond_9
    move-object p0, v7

    :goto_7
    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance p0, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {p0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    :try_start_1
    iput v0, p0, Landroidx/window/sidecar/SidecarDeviceState;->posture:I
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catch_0
    :try_start_2
    const-class v1, Landroidx/window/sidecar/SidecarDeviceState;

    const-string/jumbo v2, "setPosture"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroidx/window/sidecar/SidecarDeviceState;

    const-string v2, "getPosture"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_a

    :goto_8
    new-instance p0, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-direct {p0}, Landroidx/window/sidecar/SidecarDisplayFeature;-><init>()V

    invoke-virtual {p0}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "displayFeature.rect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/window/sidecar/SidecarDisplayFeature;->setRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    invoke-virtual {p0, v6}, Landroidx/window/sidecar/SidecarDisplayFeature;->setType(I)V

    new-instance p0, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    invoke-direct {p0}, Landroidx/window/sidecar/SidecarWindowLayoutInfo;-><init>()V

    move v4, v6

    goto :goto_9

    :cond_a
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Invalid device posture getter/setter"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :goto_9
    return v4
.end method
