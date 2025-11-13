.class final Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$appName$2;
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$appName$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$appName$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$appName$2;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$appName$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/media/mediaoutput/ext/PackageManagerExtKt;->getAppLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
