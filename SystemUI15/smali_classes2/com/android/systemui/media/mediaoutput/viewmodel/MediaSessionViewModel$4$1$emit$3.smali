.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$3;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$3;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$3;->INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$3;

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

    sget-object p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;

    invoke-virtual {p1}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->MEDIA_SESSION_BLOCKED_LIST:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
