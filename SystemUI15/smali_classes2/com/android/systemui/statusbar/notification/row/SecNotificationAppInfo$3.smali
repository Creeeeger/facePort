.class public final Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mToggleButtonContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mContentContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->updateIconNameVisibility(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->updateBottomButtonContainer(Z)V

    const p1, 0x7f0a0801

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    const v2, 0x7f130d16

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnCancelSettings:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    const v2, 0x7f070b3e

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3fa66666    # 1.3f

    invoke-static {p1, v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    const p1, 0x7f0a0802

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    const v0, 0x7f1310ad

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$5;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    invoke-static {p1, v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->updateTextColorOnOpenThemeOrColoring()V

    return-void
.end method
