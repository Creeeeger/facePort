.class public final synthetic Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumePanelDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanelDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    return-void
.end method


# virtual methods
.method public final onSliceAction(Landroidx/slice/widget/EventInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/slice/widget/EventInfo;->actionType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
