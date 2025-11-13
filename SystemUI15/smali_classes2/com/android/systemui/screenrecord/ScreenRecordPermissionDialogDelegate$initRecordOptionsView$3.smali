.class public final Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$initRecordOptionsView$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$initRecordOptionsView$3;->this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$initRecordOptionsView$3;->this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->audioSwitch:Landroid/widget/Switch;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
