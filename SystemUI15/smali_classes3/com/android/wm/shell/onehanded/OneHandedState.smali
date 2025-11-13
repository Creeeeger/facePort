.class public final Lcom/android/wm/shell/onehanded/OneHandedState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sCurrentState:I


# instance fields
.field public final mStateChangeListeners:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedState;->mStateChangeListeners:Ljava/util/List;

    const/4 p0, 0x0

    sput p0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    return-void
.end method


# virtual methods
.method public final setState(I)V
    .locals 1

    sput p1, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedState;->mStateChangeListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedState;->mStateChangeListeners:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedState$$ExternalSyntheticLambda0;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
