.class final Lcom/android/systemui/screenshot/resources/Messages$savingScreenshotAnnouncement$2;
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
.field final synthetic this$0:Lcom/android/systemui/screenshot/resources/Messages;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/resources/Messages;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/resources/Messages$savingScreenshotAnnouncement$2;->this$0:Lcom/android/systemui/screenshot/resources/Messages;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/screenshot/resources/Messages$savingScreenshotAnnouncement$2;->this$0:Lcom/android/systemui/screenshot/resources/Messages;

    iget-object p0, p0, Lcom/android/systemui/screenshot/resources/Messages;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f131011

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
