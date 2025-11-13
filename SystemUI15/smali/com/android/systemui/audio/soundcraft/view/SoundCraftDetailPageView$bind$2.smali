.class public final Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$2;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 13

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$2;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->batteryInfoBox:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftLocalViewModelStoreOwner;->current:Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_20

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    const-class v1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;

    invoke-static {p1, v0, v0, v1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$2$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->notifyChange()V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateLayout "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundCraft.BatteryInfoBoxView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->budsBatteryView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->cradleBatteryView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;

    new-instance v8, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "-1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->batteryLevelLeft:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v8, v2}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->setBatteryLeft(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->batteryLevelRight:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v8, v2}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->setBatteryRight(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v8}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryLeft()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->isValid(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "%"

    const/4 v4, 0x0

    if-nez v2, :cond_4

    invoke-virtual {v8}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryRight()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    if-nez v2, :cond_5

    move-object v2, v0

    :cond_5
    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->budsBatteryView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    move v2, v5

    goto :goto_0

    :cond_6
    move v2, v4

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    if-nez v6, :cond_7

    move-object v6, v0

    :cond_7
    iget-object v6, v6, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->budsBatteryInfoText:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryLeft()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryRight()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->isValid(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "R "

    if-eqz v10, :cond_e

    invoke-static {v9}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->isValid(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sub-int/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v12, 0xf

    if-ge v10, v12, :cond_b

    if-eqz v2, :cond_9

    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-le v2, v10, :cond_8

    goto :goto_1

    :cond_8
    move-object v7, v9

    :goto_1
    move-object v9, v7

    :catch_0
    const-string v2, "R \u2022 L "

    invoke-static {v2, v9, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-le v2, v10, :cond_a

    goto :goto_2

    :cond_a
    move-object v7, v9

    :goto_2
    move-object v9, v7

    :catch_1
    const-string v2, "L \u2022 R "

    invoke-static {v2, v9, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :catch_2
    :cond_b
    invoke-static {v9}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->isValid(Ljava/lang/String;)Z

    move-result v10

    const-string v12, "L "

    if-eqz v10, :cond_d

    if-eqz v2, :cond_c

    const-string v2, "% \u2022 L "

    invoke-static {v11, v9, v2, v7, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_c
    const-string v2, "% \u2022 R "

    invoke-static {v12, v7, v2, v9, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_d
    invoke-static {v12, v7, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_e
    invoke-static {v11, v9, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    if-nez v2, :cond_f

    move-object v2, v0

    :cond_f
    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->budsIconLeft:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v6, v6, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {v6}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    if-eqz v6, :cond_10

    sget-object v9, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v6, v4}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->getServerIconDrawableWithDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_10

    goto :goto_4

    :cond_10
    move-object v6, v0

    :goto_4
    if-nez v6, :cond_11

    const v6, 0x7f08126f

    invoke-virtual {v7, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_11
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    if-nez v2, :cond_12

    move-object v2, v0

    :cond_12
    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->budsIconLeft:Landroid/widget/ImageView;

    invoke-virtual {v8}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryLeft()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->isValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v6, v4

    goto :goto_5

    :cond_13
    move v6, v1

    :goto_5
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    if-nez v2, :cond_14

    move-object v2, v0

    :cond_14
    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->budsIconRight:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v6, v6, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {v6}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    if-eqz v6, :cond_15

    sget-object v9, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v6, v5}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->getServerIconDrawableWithDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_15

    goto :goto_6

    :cond_15
    move-object v5, v0

    :goto_6
    if-nez v5, :cond_16

    const v5, 0x7f081270

    invoke-virtual {v7, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_16
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    if-nez v2, :cond_17

    move-object v2, v0

    :cond_17
    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->budsIconRight:Landroid/widget/ImageView;

    invoke-virtual {v8}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryRight()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    move v5, v4

    goto :goto_7

    :cond_18
    move v5, v1

    :goto_7
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->batteryLevelCradle:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v5, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    if-nez v5, :cond_1a

    move-object v5, v0

    :cond_1a
    iget-object v5, v5, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->cradleBatteryView:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move v1, v4

    :cond_1b
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    if-nez v1, :cond_1c

    move-object v1, v0

    :cond_1c
    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->cradleIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1d

    sget-object v5, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x3

    invoke-static {v4, v2, v5}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->getServerIconDrawableWithDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1d

    goto :goto_8

    :cond_1d
    const v2, 0x7f08126e

    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v8, p1}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->setBatteryCradle(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    if-nez p0, :cond_1e

    goto :goto_9

    :cond_1e
    move-object v0, p0

    :goto_9
    iget-object p0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->cradleBatteryInfoText:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryCradle()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    return-void

    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
