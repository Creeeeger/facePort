.class public final synthetic Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

.field public final synthetic f$1:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;Landroid/view/ViewGroup;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mInsetNavigationBarBottomHeight:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mViewContext:Landroid/content/Context;

    const v3, 0x7f070b94

    invoke-static {v0, v3, v2}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v2

    :cond_0
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "updateLayoutParamHeight() newHeight:"

    const-string v3, "DataUsageLabelManager"

    invoke-static {v2, v0, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mInsetNavigationBarBottomHeight:I

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
