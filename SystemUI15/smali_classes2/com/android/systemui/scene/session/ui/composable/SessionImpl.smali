.class public final Lcom/android/systemui/scene/session/ui/composable/SessionImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final storage:Lcom/android/systemui/scene/session/shared/SessionStorage;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/systemui/scene/session/ui/composable/SessionImpl;-><init>(Lcom/android/systemui/scene/session/shared/SessionStorage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/scene/session/shared/SessionStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/scene/session/shared/SessionStorage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/android/systemui/scene/session/shared/SessionStorage;

    invoke-direct {p1}, Lcom/android/systemui/scene/session/shared/SessionStorage;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/scene/session/ui/composable/SessionImpl;-><init>(Lcom/android/systemui/scene/session/shared/SessionStorage;)V

    return-void
.end method
