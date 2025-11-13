.class final Lcom/android/systemui/volume/view/standard/VolumePanelWindow$storeInteractor$2;
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
.field final synthetic this$0:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/standard/VolumePanelWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$storeInteractor$2;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/store/StoreInteractor;

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$storeInteractor$2;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    sget v1, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getStore$2()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    return-object v0
.end method
