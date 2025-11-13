.class public abstract Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBounds:Landroid/graphics/RectF;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->mBounds:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onRelease()V
.end method
