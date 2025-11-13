.class final Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$preferences$2;
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

.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$preferences$2;->this$0:Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$preferences$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$preferences$2;->this$0:Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$preferences$2;->$context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->access$getSharedPreferences(Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$preferences$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
