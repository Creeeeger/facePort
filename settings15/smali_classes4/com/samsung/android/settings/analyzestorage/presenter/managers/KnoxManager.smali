.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Companion:Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager$Companion;

.field public static volatile instance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;

.field public static knoxInfoBundle:Landroid/os/Bundle;

.field public static final knoxInfoLocker:Ljava/util/concurrent/locks/Lock;


# instance fields
.field public final containerArray:[I

.field public final context:Landroid/content/Context;

.field public final isKnoxMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager$Companion;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->knoxInfoLocker:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->containerArray:[I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.samsung.android.knox.SemPersonaManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "com.sec.knox.moveto.containerId"

    const-string v5, "com.sec.knox.moveto.containerType"

    const/4 v6, 0x1

    const-string v7, "KnoxManager"

    if-eqz v2, :cond_3

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x3eb

    if-eq v8, v9, :cond_2

    const/16 v9, 0x3ec

    if-eq v8, v9, :cond_1

    const/4 v9, -0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x2

    goto :goto_1

    :cond_2
    const/4 v9, 0x3

    :goto_1
    if-ltz v9, :cond_3

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isKnoxModeOn() ] getContainerType : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " index : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->isKnoxMode:Z

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "getMoveToKnoxMenuList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_4

    goto :goto_3

    :cond_5
    move-object v0, v3

    :goto_3
    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_6

    const-string p1, "com.sec.knox.moveto.name"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->containerArray:[I

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    aput p1, p0, v6

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getKnoxName ] moveToKnoxMenuList is not null and knox name is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
