.class public final synthetic Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;

    packed-switch v0, :pswitch_data_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mPresentingChannelEditorDialog:Z

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mPresentingChannelEditorDialog:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mAppName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mAppUid:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->prepareDialogForApp(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onFinishListener:Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->prepared:Z

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call prepareDialogForApp() before calling show()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
