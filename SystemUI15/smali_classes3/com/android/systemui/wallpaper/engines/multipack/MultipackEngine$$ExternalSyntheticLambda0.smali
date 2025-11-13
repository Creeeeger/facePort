.class public final synthetic Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;

.field public final synthetic f$1:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;Lcom/android/systemui/wallpaper/engines/WallpaperEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->TAG:Ljava/lang/String;

    const-string v2, "changeWallpaper : transition finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, v0, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/engines/multipack/MultipackEngine;->initSubEngine(Lcom/android/systemui/wallpaper/engines/WallpaperEngine;)V

    return-void
.end method
