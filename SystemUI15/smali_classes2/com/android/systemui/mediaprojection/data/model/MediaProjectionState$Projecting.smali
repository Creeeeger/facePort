.class public abstract Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState;


# instance fields
.field public final hostPackage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting;->hostPackage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHostPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting;->hostPackage:Ljava/lang/String;

    return-object p0
.end method
