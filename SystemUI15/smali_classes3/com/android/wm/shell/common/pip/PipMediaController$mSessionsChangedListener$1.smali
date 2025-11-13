.class public final Lcom/android/wm/shell/common/pip/PipMediaController$mSessionsChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/pip/PipMediaController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/pip/PipMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController$mSessionsChangedListener$1;->this$0:Lcom/android/wm/shell/common/pip/PipMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController$mSessionsChangedListener$1;->this$0:Lcom/android/wm/shell/common/pip/PipMediaController;

    sget v0, Lcom/android/wm/shell/common/pip/PipMediaController;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    return-void
.end method
