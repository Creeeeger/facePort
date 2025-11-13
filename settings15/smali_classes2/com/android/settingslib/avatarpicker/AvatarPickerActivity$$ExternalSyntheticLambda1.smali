.class public final synthetic Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->cancel$1$1()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mAdapter:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;

    iget p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    iget-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mPreselectedImages:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->this$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mPreselectedImages:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    if-eq p0, v1, :cond_0

    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "android.resource"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Preselected avatar images must be resources."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mUserIconColors:[I

    aget p0, p0, p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "default_icon_tint_color"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mAvatarPhotoController:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mTakePictureUri:Landroid/net/Uri;

    const-string v1, "output"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mAvatarUi:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    const/16 v0, 0x3ea

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->mAvatarPhotoController:Lcom/android/settingslib/avatarpicker/AvatarPhotoController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController;->mAvatarUi:Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
