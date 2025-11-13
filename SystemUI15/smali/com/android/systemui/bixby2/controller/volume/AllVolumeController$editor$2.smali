.class final Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$editor$2;
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
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$editor$2;->this$0:Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences$Editor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$editor$2;->this$0:Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;

    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->access$getPreferences(Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$editor$2;->invoke()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method
