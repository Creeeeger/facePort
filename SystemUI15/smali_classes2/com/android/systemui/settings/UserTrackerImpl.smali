.class public final Lcom/android/systemui/settings/UserTrackerImpl;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final backgroundContext:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final backgroundHandler:Landroid/os/Handler;

.field public final callbacks:Ljava/util/List;

.field public final context:Landroid/content/Context;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final featureFlagsProvider:Ljavax/inject/Provider;

.field public final iActivityManager:Landroid/app/IActivityManager;

.field public initialized:Z

.field public final mutex:Ljava/lang/Object;

.field public final userContext$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

.field public final userHandle$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

.field public final userId$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

.field public final userManager:Landroid/os/UserManager;

.field public final userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/android/systemui/settings/UserTrackerImpl;

    const-string/jumbo v2, "userId"

    const-string v3, "getUserId()I"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lcom/android/systemui/settings/UserTrackerImpl;

    const-string/jumbo v5, "userHandle"

    const-string v6, "getUserHandle()Landroid/os/UserHandle;"

    invoke-direct {v2, v3, v5, v6, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Lcom/android/systemui/settings/UserTrackerImpl;

    const-string/jumbo v5, "userContext"

    const-string v6, "getUserContext()Landroid/content/Context;"

    invoke-static {v3, v5, v6, v4, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    move-result-object v3

    const-class v5, Lcom/android/systemui/settings/UserTrackerImpl;

    const-string/jumbo v6, "userProfiles"

    const-string v7, "getUserProfiles()Ljava/util/List;"

    invoke-static {v5, v6, v7, v4, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    move-result-object v1

    filled-new-array {v0, v2, v3, v1}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/android/systemui/settings/UserTrackerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Landroid/os/UserManager;Landroid/app/IActivityManager;Lcom/android/systemui/dump/DumpManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider;",
            "Landroid/os/UserManager;",
            "Landroid/app/IActivityManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userManager:Landroid/os/UserManager;

    iput-object p4, p0, Lcom/android/systemui/settings/UserTrackerImpl;->iActivityManager:Landroid/app/IActivityManager;

    iput-object p5, p0, Lcom/android/systemui/settings/UserTrackerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p8, p0, Lcom/android/systemui/settings/UserTrackerImpl;->backgroundHandler:Landroid/os/Handler;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userId$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    new-instance p2, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userHandle$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    new-instance p2, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    invoke-direct {p2, p1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userContext$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    new-instance p1, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p1, p2}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/settings/DataItem;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, p2}, Lcom/android/systemui/settings/DataItem;-><init>(Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-boolean p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    const-string v0, "Initialized: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userProfiles: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    const-string p2, "Callbacks:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/settings/DataItem;

    iget-object p2, p2, Lcom/android/systemui/settings/DataItem;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/settings/UserTracker$Callback;

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public final getUserContext()Landroid/content/Context;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userContext$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method public final getUserHandle()Landroid/os/UserHandle;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userHandle$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0
.end method

.method public final getUserId()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userId$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getUserInfo()Landroid/content/pm/UserInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v0, :cond_0

    return-object v1

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Collection contains no element matching the predicate."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserProfiles()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string p2, "android.intent.action.PROFILE_AVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :sswitch_1
    const-string p2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :sswitch_2
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :sswitch_3
    const-string p2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :sswitch_4
    const-string p2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :sswitch_5
    const-string p2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :sswitch_6
    const-string p2, "android.intent.action.PROFILE_UNAVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :sswitch_7
    const-string p2, "android.intent.action.PROFILE_ADDED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :sswitch_8
    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :sswitch_9
    const-string p2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :sswitch_a
    const-string p2, "android.intent.action.PROFILE_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    iget-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    new-instance v3, Landroid/content/pm/UserInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v2, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->setValue(Lcom/android/systemui/settings/UserTrackerImpl;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    iget-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    monitor-enter p2

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p2

    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/DataItem;

    iget-object v1, v0, Lcom/android/systemui/settings/DataItem;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/UserTracker$Callback;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/systemui/settings/DataItem;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;

    invoke-direct {v2, v1, p2, p1}, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;-><init>(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit p2

    throw p0

    :goto_3
    monitor-exit p2

    throw p0

    :cond_3
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cb403db -> :sswitch_a
        -0x572580a2 -> :sswitch_9
        -0x49d08e2b -> :sswitch_8
        -0x425109fb -> :sswitch_7
        -0x3f52b66b -> :sswitch_6
        -0x33813a72 -> :sswitch_5
        -0x16fbb1bb -> :sswitch_4
        -0xc02da2e -> :sswitch_3
        -0x122164c -> :sswitch_2
        0x3eac4465 -> :sswitch_1
        0x780f8d4e -> :sswitch_0
    .end sparse-switch
.end method

.method public final removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/settings/UserTrackerImpl$removeCallback$1$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/settings/UserTrackerImpl$removeCallback$1$1;-><init>(Lcom/android/systemui/settings/UserTracker$Callback;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setUserIdInternal(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userId$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v6, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v3, v6, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p0, p1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->setValue(Lcom/android/systemui/settings/UserTrackerImpl;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userHandle$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    const/4 v3, 0x1

    aget-object v3, v6, v3

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->setValue(Lcom/android/systemui/settings/UserTrackerImpl;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userContext$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    const/4 v1, 0x2

    aget-object v1, v6, v1

    invoke-virtual {p1, p0, v2}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->setValue(Lcom/android/systemui/settings/UserTrackerImpl;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p1, v0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    new-instance v5, Landroid/content/pm/UserInfo;

    invoke-direct {v5, v3}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v3, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->setValue(Lcom/android/systemui/settings/UserTrackerImpl;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :goto_1
    monitor-exit v4

    throw p0
.end method
