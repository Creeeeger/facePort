.class public final Lcom/android/systemui/util/TraceUtils$Companion$namedRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/TraceNameSupplier;


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/TraceUtils$Companion$namedRunnable$1;->$tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/util/TraceUtils$Companion$namedRunnable$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/TraceUtils$Companion$namedRunnable$1;->$tag:Ljava/lang/String;

    return-object p0
.end method

.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/TraceUtils$Companion$namedRunnable$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
