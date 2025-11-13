.class public final Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;
.super Lcom/android/systemui/wallpaper/theme/SpriteModifier;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCurrentFrameIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/SpriteModifier;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/android/systemui/wallpaper/theme/particle/Sprite;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    iput v0, p1, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->currentFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    iget p1, p1, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->frameSize:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    :cond_0
    return-void
.end method
