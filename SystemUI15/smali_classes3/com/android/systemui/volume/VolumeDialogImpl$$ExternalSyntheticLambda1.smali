.class public final synthetic Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    return-void
.end method


# virtual methods
.method public final onPostureChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->onPostureChanged(I)V

    return-void
.end method
