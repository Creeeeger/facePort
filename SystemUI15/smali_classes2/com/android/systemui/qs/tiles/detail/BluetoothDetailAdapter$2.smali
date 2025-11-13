.class public final Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mPairedDevices:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    const v2, 0x7f0a0132

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShareTitleDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
