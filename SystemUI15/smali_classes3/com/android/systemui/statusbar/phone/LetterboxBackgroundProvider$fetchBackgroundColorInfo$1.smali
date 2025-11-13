.class public final Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$fetchBackgroundColorInfo$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$fetchBackgroundColorInfo$1;->this$0:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$fetchBackgroundColorInfo$1;->this$0:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->windowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isLetterboxBackgroundMultiColored()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->isLetterboxBackgroundMultiColored:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$fetchBackgroundColorInfo$1;->this$0:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->windowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getLetterboxBackgroundColorInArgb()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->letterboxBackgroundColor:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
