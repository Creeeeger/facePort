.class public final Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeDisposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$Companion;

.field private static final TAG:Ljava/lang/String; = "VolumeUnsubscriber"


# instance fields
.field private final handler$delegate:Lkotlin/Lazy;

.field private final observer:Lcom/samsung/systemui/splugins/volume/VolumeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->Companion:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "TT;>;>;",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observers:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observer:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$handler$2;->INSTANCE:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$handler$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->handler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getObserver$p(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)Lcom/samsung/systemui/splugins/volume/VolumeObserver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observer:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    return-object p0
.end method

.method public static final synthetic access$getObservers$p(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observers:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->handler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observer:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispose() : main thread, remove observer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeUnsubscriber"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observers:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->observer:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;

    invoke-direct {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
