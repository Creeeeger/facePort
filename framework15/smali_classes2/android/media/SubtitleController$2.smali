.class Landroid/media/SubtitleController$2;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/SubtitleController;


# direct methods
.method constructor blacklist <init>(Landroid/media/SubtitleController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/SubtitleController$2;->this$0:Landroid/media/SubtitleController;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onEnabledChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/media/SubtitleController$2;->this$0:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    return-void
.end method

.method public whitelist onLocaleChanged(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Landroid/media/SubtitleController$2;->this$0:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    return-void
.end method
