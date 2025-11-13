.class public final Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Always;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Always;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Always;

    invoke-direct {v0}, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Always;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Always;->INSTANCE:Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Always;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Always"

    return-object p0
.end method
