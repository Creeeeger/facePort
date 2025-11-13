.class public final synthetic Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/widget/MediaAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/MediaAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/widget/MediaAnimationController;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/widget/MediaAnimationController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/MediaAnimationController;->mVideoReady:Z

    return-void
.end method
