.class final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $prev:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$4;->$prev:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$4;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroid/app/Notification;

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.mediaSession"

    const-class v2, Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$4;->$prev:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$4;->$context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CommonNotifCollection - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "MediaSessionViewModel"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;

    invoke-static {p1, v2, v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;->access$getSessionController(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;Ljava/util/List;Ljava/lang/Object;)Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Landroid/media/session/MediaController;

    invoke-direct {p1, p0, v0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object p1, v1

    :cond_1
    if-eqz p1, :cond_3

    new-instance v1, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;-><init>(Landroid/content/Context;Landroid/media/session/MediaController;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :cond_3
    :goto_0
    return-object v1
.end method
