.class public final synthetic Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

.field public final synthetic f$1:Lcom/android/systemui/plugins/VolumeDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogComponent;Lcom/android/systemui/plugins/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/VolumeDialog;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSamsungVolumeDialog:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    return-object p0
.end method
