.class public final Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sCount:I

.field public static final sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/nexus/particle/emitter/FactorType;->values()[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    array-length v0, v0

    sput v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
