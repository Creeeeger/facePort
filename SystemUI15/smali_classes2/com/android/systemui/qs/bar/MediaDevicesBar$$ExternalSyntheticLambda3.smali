.class public final synthetic Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
