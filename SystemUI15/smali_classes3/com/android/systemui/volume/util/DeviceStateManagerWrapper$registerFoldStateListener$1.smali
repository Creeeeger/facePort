.class public final Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $foldState:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;->$foldState:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;->this$0:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;->$foldState:Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;->this$0:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    iput-boolean v0, p0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->isFolded:Z

    return-void
.end method
