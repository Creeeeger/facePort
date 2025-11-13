.class public abstract Lcom/samsung/android/nexus/base/utils/range/Rangeable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;


# instance fields
.field public mIsSingleValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    invoke-direct {v0}, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;-><init>()V

    sput-object v0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    return-void
.end method
