.class public final synthetic Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/appclips/AppClipsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsActivity;

    iget p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->setError(I)V

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->finish()V

    return-void

    :pswitch_0
    check-cast p1, Landroid/graphics/Bitmap;

    sget-object p0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x10104e2

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    iget-object v1, v0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mRoot:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p1, v0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mPreview:Landroid/widget/ImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/net/Uri;

    iget-object p0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCallingPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.CAPTURE_CONTENT_FOR_NOTE_STATUS_CODE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_SCREENSHOT_URI:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :try_start_0
    iget-object p1, v0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    sget-object p0, Lcom/android/systemui/screenshot/appclips/AppClipsEvent;->SCREENSHOT_FOR_NOTE_ACCEPTED:Lcom/android/systemui/screenshot/appclips/AppClipsEvent;

    iget-object p1, v0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget v1, v0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCallingPackageUid:I

    iget-object v2, v0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mCallingPackageName:Ljava/lang/String;

    invoke-interface {p1, p0, v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/appclips/AppClipsActivity;->finish()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
