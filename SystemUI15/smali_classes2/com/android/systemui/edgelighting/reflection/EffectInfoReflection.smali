.class public final Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;
.super Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->createInstance([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo"

    return-object p0
.end method
