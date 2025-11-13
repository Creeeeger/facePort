.class Landroid/media/MediaActionSound$SoundState;
.super Ljava/lang/Object;
.source "MediaActionSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundState"
.end annotation


# instance fields
.field public greylist-max-o id:I

.field public final greylist-max-o name:I

.field public greylist-max-o state:I

.field final synthetic blacklist this$0:Landroid/media/MediaActionSound;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaActionSound;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaActionSound$SoundState;->this$0:Landroid/media/MediaActionSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/media/MediaActionSound$SoundState;->name:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/media/MediaActionSound$SoundState;->id:I

    iput p1, p0, Landroid/media/MediaActionSound$SoundState;->state:I

    return-void
.end method
