.class final Lcom/android/settings/overlay/FeatureFactoryImpl$faceFeatureProvider$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settings/biometrics/face/FaceFeatureProviderImpl;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$faceFeatureProvider$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/overlay/FeatureFactoryImpl$faceFeatureProvider$2;

    invoke-direct {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl$faceFeatureProvider$2;-><init>()V

    sput-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$faceFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$faceFeatureProvider$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/settings/biometrics/face/FaceFeatureProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method
