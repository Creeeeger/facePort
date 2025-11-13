.class Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;
.super Landroid/os/AsyncTask;
.source "NotiPreviewPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardWallpaperLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;-><init>(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    const-string p1, "NotiPreviewPreferenceController"

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.android.systemui.keyguard.image"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->-$$Nest$misLandscape(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/landscape?"

    goto :goto_0

    :cond_0
    const-string v1, "/portrait?"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type=wallpaper"

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->access$000(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    const/4 v1, 0x0

    .line 321
    :try_start_0
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Null wallpaper recieved from KeyguardProvider"

    .line 323
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 326
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->-$$Nest$mcropBitmap(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Caught Exception while fetching wallpaper from KeyguardProvider"

    .line 328
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 307
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 335
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "NotiPreviewPreferenceController"

    const-string v1, "set lockscreen notification preview wallpaper"

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->-$$Nest$fgetmNotificationPreview(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 338
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->-$$Nest$fgetmNotificationPreview(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/widget/ImageView;

    move-result-object p1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 339
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->-$$Nest$fgetmNotificationPreview(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->access$100(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_lock_settings_notification_preview_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->-$$Nest$fgetmNotificationPreview(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 307
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 310
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
