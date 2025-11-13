.class public abstract Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public id:I

.field public retainCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->id:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->retainCount:I

    return-void
.end method


# virtual methods
.method public abstract onLoad()Landroid/graphics/Bitmap;
.end method
