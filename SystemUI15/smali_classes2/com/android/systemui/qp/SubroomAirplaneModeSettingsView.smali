.class public Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$View;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAirplaneBackground:Landroid/widget/LinearLayout;

.field public mAirplaneButton:Landroid/widget/ImageView;

.field public final mContext:Landroid/content/Context;

.field public final mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/qp/SubscreenAirplaneController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenAirplaneController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;

    iput-object p0, p1, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qp/SubscreenAirplaneController;->registerReceiver(Z)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->updateView(Z)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubscreenAirplaneController;->unRegisterReceiver(Z)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mAirplaneButton:Landroid/widget/ImageView;

    const v0, 0x7f0a00b9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mAirplaneBackground:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mAirplaneButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mAirplaneButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final updateView(Z)V
    .locals 3

    const-string v0, "SASV updateView state: "

    const-string v1, "SubroomAirplaneModeSettingsView"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mAirplaneBackground:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0813e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0813e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const p1, 0x7f130081

    goto :goto_1

    :cond_1
    const p1, 0x7f130080

    :goto_1
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mContext:Landroid/content/Context;

    const v2, 0x7f13018e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mAirplaneButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
