.class public final synthetic Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mAudioSwitch:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
