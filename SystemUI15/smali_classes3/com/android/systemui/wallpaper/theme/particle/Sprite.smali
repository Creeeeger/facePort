.class public final Lcom/android/systemui/wallpaper/theme/particle/Sprite;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public currentFrame:I

.field public frameSize:I

.field public height:F

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mModifierCount:I

.field public final mModifiers:[Lcom/android/systemui/wallpaper/theme/SpriteModifier;

.field public mScale:F

.field public final visible:Z

.field public width:F

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->visible:Z

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/wallpaper/theme/SpriteModifier;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifiers:[Lcom/android/systemui/wallpaper/theme/SpriteModifier;

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->x:F

    iput p2, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->y:F

    iput p3, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->width:F

    iput p4, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->height:F

    return-void
.end method
