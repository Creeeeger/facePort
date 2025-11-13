.class public Lcom/android/systemui/qp/SubroomBluetoothSettingsView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$View;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBluetoothBackground:Landroid/widget/LinearLayout;

.field public mBluetoothButton:Landroid/widget/ImageView;

.field public final mContext:Landroid/content/Context;

.field public final mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/qp/SubscreenBleController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenBleController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;

    iput-object p0, p1, Lcom/android/systemui/qp/SubscreenBleController;->mBleView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qp/SubscreenBleController;->registerReceiver(Z)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;

    invoke-virtual {v0}, Lcom/android/systemui/qp/SubscreenBleController;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->updateView(Z)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "SubroomBluetoothSettingsView"

    const-string v1, "SBSV onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubscreenBleController;->unRegisterReceiver(Z)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0194

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mBluetoothButton:Landroid/widget/ImageView;

    const v0, 0x7f0a018e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mBluetoothBackground:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mBluetoothButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/qp/SubroomBluetoothSettingsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubroomBluetoothSettingsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubroomBluetoothSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mBluetoothButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final updateView(Z)V
    .locals 3

    const-string v0, "SBSV updateView state: "

    const-string v1, "SubroomBluetoothSettingsView"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mBluetoothBackground:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0813e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0813e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const p1, 0x7f130081

    goto :goto_1

    :cond_1
    const p1, 0x7f130080

    :goto_1
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mContext:Landroid/content/Context;

    const v2, 0x7f130eb2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mBluetoothButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
