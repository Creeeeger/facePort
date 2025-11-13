.class public final synthetic Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/toast/ToastUI;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:Ljava/lang/CharSequence;

.field public final synthetic f$6:Landroid/app/ITransientNotificationCallback;

.field public final synthetic f$7:Landroid/os/IBinder;

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/ToastUI;IILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotificationCallback;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/toast/ToastUI;

    iput p2, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$4:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$5:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$6:Landroid/app/ITransientNotificationCallback;

    iput-object p8, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$7:Landroid/os/IBinder;

    iput p9, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$8:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/toast/ToastUI;

    iget v2, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$1:I

    iget v3, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$2:I

    iget-object v12, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$4:Landroid/os/IBinder;

    iget-object v13, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$5:Ljava/lang/CharSequence;

    iget-object v14, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$6:Landroid/app/ITransientNotificationCallback;

    iget-object v11, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$7:Landroid/os/IBinder;

    iget v0, v0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$8:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/toast/ToastUI;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v10}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/toast/ToastUI;->mContext:Landroid/content/Context;

    const-class v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    const/4 v9, 0x0

    const-string v8, "ToastLog"

    iget-object v7, v1, Lcom/android/systemui/toast/ToastUI;->mToastLogger:Lcom/android/systemui/toast/ToastLogger;

    if-nez v6, :cond_0

    invoke-interface {v15}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/toast/ToastLogger$logOnSkipToastForInvalidDisplay$2;->INSTANCE:Lcom/android/systemui/toast/ToastLogger$logOnSkipToastForInvalidDisplay$2;

    iget-object v4, v7, Lcom/android/systemui/toast/ToastLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v4, v8, v1, v2, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v12, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput v3, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v4, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v5, v6}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    iget v5, v1, Lcom/android/systemui/toast/ToastUI;->mOrientation:I

    iget-object v4, v1, Lcom/android/systemui/toast/ToastUI;->mToastFactory:Lcom/android/systemui/toast/ToastFactory;

    iget-object v9, v4, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    if-eqz v9, :cond_1

    new-instance v16, Lcom/android/systemui/toast/SystemUIToast;

    iget-object v4, v4, Lcom/android/systemui/toast/ToastFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-interface {v9, v13, v12, v6}, Lcom/android/systemui/plugins/ToastPlugin;->createToast(Ljava/lang/CharSequence;Ljava/lang/String;I)Lcom/android/systemui/plugins/ToastPlugin$Toast;

    move-result-object v9

    move-object/from16 v17, v4

    move-object/from16 v4, v16

    move/from16 v18, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-object v6, v3

    move-object/from16 v19, v7

    move-object v7, v13

    move/from16 v20, v0

    move-object v0, v8

    move-object v8, v9

    move/from16 v21, v2

    const/4 v2, 0x0

    move-object v9, v12

    move/from16 v22, v10

    move/from16 v10, v17

    move-object/from16 v23, v11

    move/from16 v11, v18

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/toast/SystemUIToast;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/ToastPlugin$Toast;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    move/from16 v20, v0

    move/from16 v21, v2

    move/from16 v18, v5

    move/from16 v17, v6

    move-object/from16 v19, v7

    move-object v0, v8

    move/from16 v22, v10

    move-object/from16 v23, v11

    const/4 v2, 0x0

    new-instance v16, Lcom/android/systemui/toast/SystemUIToast;

    iget-object v5, v4, Lcom/android/systemui/toast/ToastFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v4, v16

    move-object v6, v3

    move-object v7, v13

    move-object v8, v12

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/toast/SystemUIToast;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;II)V

    :goto_0
    iput-object v4, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    iget-object v4, v4, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    :cond_2
    iput-object v14, v1, Lcom/android/systemui/toast/ToastUI;->mCallback:Landroid/app/ITransientNotificationCallback;

    new-instance v4, Landroid/widget/ToastPresenter;

    iget-object v5, v1, Lcom/android/systemui/toast/ToastUI;->mIAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    iget-object v6, v1, Lcom/android/systemui/toast/ToastUI;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-direct {v4, v3, v5, v6, v12}, Landroid/widget/ToastPresenter;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;Landroid/app/INotificationManager;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    invoke-virtual {v4}, Landroid/widget/ToastPresenter;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/toast/ToastLogger$logOnShowToast$2;->INSTANCE:Lcom/android/systemui/toast/ToastLogger$logOnShowToast$2;

    move-object/from16 v7, v19

    iget-object v7, v7, Lcom/android/systemui/toast/ToastLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v7, v0, v5, v6, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    move/from16 v5, v21

    iput v5, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-object v12, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v13, v1, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    iget-object v0, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    iget-object v14, v0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/systemui/toast/SystemUIToast;->getGravity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v0, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    invoke-virtual {v0}, Lcom/android/systemui/toast/SystemUIToast;->getXOffset()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v0, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    invoke-virtual {v0}, Lcom/android/systemui/toast/SystemUIToast;->getYOffset()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    invoke-virtual {v2}, Lcom/android/systemui/toast/SystemUIToast;->getHorizontalMargin()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    invoke-virtual {v3}, Lcom/android/systemui/toast/SystemUIToast;->getVerticalMargin()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v1, Lcom/android/systemui/toast/ToastUI;->mCallback:Landroid/app/ITransientNotificationCallback;

    iget-object v1, v1, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    iget-object v5, v1, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    if-nez v5, :cond_4

    iget-object v1, v1, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v24, v22

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    move/from16 v24, v1

    :goto_2
    move-object/from16 v16, v23

    move/from16 v17, v20

    move/from16 v20, v0

    move/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v13 .. v24}, Landroid/widget/ToastPresenter;->show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;Z)V

    :goto_3
    return-void
.end method
