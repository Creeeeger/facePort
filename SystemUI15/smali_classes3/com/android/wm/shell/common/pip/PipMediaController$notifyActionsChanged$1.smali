.class public final Lcom/android/wm/shell/common/pip/PipMediaController$notifyActionsChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $actions:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController$notifyActionsChanged$1;->$actions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/wm/shell/common/pip/PipMediaController$ActionListener;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController$notifyActionsChanged$1;->$actions:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/pip/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    return-void
.end method
