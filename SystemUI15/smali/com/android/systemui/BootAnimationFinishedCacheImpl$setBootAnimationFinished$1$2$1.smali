.class public final Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$2$1;->$it:Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$2$1;->$it:Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;

    invoke-interface {p0}, Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;->onBootAnimationFinished()V

    return-void
.end method
