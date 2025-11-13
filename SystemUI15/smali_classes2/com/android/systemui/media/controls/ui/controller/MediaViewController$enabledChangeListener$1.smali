.class public final Lcom/android/systemui/media/controls/ui/controller/MediaViewController$enabledChangeListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$EnabledChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$enabledChangeListener$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnabledChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$enabledChangeListener$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method
