.class public Lcom/samsung/android/app/CoreStatePool;
.super Ljava/lang/Object;
.source "CoreStatePool.java"


# static fields
.field private static final blacklist sStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/CoreState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/CoreStatePool;->sStateList:Ljava/util/ArrayList;

    .line 38
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {}, Lcom/samsung/android/desktopmode/DexCoreState;->getInstance()Lcom/samsung/android/desktopmode/DexCoreState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$updateFrom$0(Landroid/os/Bundle;Ljava/util/HashMap;Lcom/samsung/android/app/CoreState;)V
    .locals 4
    .param p0, "states"    # Landroid/os/Bundle;
    .param p1, "changes"    # Ljava/util/HashMap;
    .param p2, "coreState"    # Lcom/samsung/android/app/CoreState;

    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, "state":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p2, v0}, Lcom/samsung/android/app/CoreState;->updateFrom(Landroid/os/Bundle;)I

    move-result v1

    .line 51
    .local v1, "change":I
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v1    # "change":I
    :cond_0
    return-void
.end method

.method public static blacklist updateFrom(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 3
    .param p0, "states"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v0, "changes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/samsung/android/app/CoreStatePool;->sStateList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/CoreStatePool$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/CoreStatePool$$ExternalSyntheticLambda0;-><init>(Landroid/os/Bundle;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 56
    return-object v0
.end method
