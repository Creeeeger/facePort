.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-boolean p0, p1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->isClosed:Z

    return p0
.end method
