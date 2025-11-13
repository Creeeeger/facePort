.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScreenshotView;

.field public final synthetic f$1:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    invoke-static {p1, p0}, Lcom/android/systemui/screenshot/ScreenshotView;->$r8$lambda$Tf31RvG0lt00LF4NDwVWj_maCPk(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    invoke-static {p1, p0}, Lcom/android/systemui/screenshot/ScreenshotView;->$r8$lambda$x3Uq4C8wZsLvVh9eOQAqAMYXksE(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    iget-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    iget-object v2, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->prepareSharedTransition()V

    sget-object v0, Lcom/android/systemui/screenshot/ActionIntentCreator;->INSTANCE:Lcom/android/systemui/screenshot/ActionIntentCreator;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->subject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/screenshot/ActionIntentCreator;->createShare(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mCallbacks:Lcom/android/systemui/screenshot/ScreenshotController$3;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->owner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p0, v3}, Lcom/android/systemui/screenshot/ScreenshotController$3;->onAction(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
