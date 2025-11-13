.class final Lcom/android/systemui/media/MediaOutputView$onUnhandledKeyEventListener$2;
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
.field final synthetic $audioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaOutputView$onUnhandledKeyEventListener$2;->$audioManager:Landroid/media/AudioManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaOutputView$onUnhandledKeyEventListener$2;->$audioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt$volumeKeyHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt$volumeKeyHandler$1;-><init>(Landroid/media/AudioManager;)V

    return-object v0
.end method
