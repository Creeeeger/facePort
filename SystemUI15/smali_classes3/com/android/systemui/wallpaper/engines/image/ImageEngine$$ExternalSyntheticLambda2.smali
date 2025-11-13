.class public final synthetic Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/image/ImageEngine;ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    iput p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    iget v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->drawFrameSynchronized(ILandroid/graphics/Rect;)V

    return-void
.end method
