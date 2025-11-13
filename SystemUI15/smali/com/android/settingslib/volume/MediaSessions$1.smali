.class public final Lcom/android/settingslib/volume/MediaSessions$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/volume/MediaSessions;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/volume/MediaSessions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/volume/MediaSessions$1;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions$1;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/volume/MediaSessions;->onActiveSessionsUpdatedH(Ljava/util/List;)V

    return-void
.end method
