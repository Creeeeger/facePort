.class final Lcom/android/settingslib/media/session/MediaSessionManagerExtKt$activeMediaChanges$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $listener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field final synthetic $this_activeMediaChanges:Landroid/media/session/MediaSessionManager;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/media/session/MediaSessionManagerExtKt$activeMediaChanges$1$1;->$this_activeMediaChanges:Landroid/media/session/MediaSessionManager;

    iput-object p2, p0, Lcom/android/settingslib/media/session/MediaSessionManagerExtKt$activeMediaChanges$1$1;->$listener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/media/session/MediaSessionManagerExtKt$activeMediaChanges$1$1;->$this_activeMediaChanges:Landroid/media/session/MediaSessionManager;

    iget-object p0, p0, Lcom/android/settingslib/media/session/MediaSessionManagerExtKt$activeMediaChanges$1$1;->$listener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
