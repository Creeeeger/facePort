.class public final synthetic Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;

.field public final synthetic f$1:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

.field public final synthetic f$2:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda2;->f$2:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda2;->f$2:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    :cond_0
    return-void
.end method
