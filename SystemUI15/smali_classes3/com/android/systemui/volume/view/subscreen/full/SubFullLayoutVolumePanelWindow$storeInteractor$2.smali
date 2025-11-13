.class final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$storeInteractor$2;
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
.field final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$storeInteractor$2;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/store/StoreInteractor;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$storeInteractor$2;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    sget v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->$r8$clinit:I

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    return-object v0
.end method
