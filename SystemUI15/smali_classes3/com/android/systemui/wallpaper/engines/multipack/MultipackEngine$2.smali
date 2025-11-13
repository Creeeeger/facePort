.class public final Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$2;->this$0:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$2;->this$0:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v0, "Plugin wallpaper consumer accepted"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$2;->this$0:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;

    new-instance v0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->runAsWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
