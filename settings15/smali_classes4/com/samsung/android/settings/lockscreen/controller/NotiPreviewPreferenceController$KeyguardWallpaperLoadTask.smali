.class public final Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Void;

    const-string p1, "NotiPreviewPreferenceController"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.android.systemui.keyguard.image"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    const-string/jumbo v1, "type=wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :try_start_0
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Null wallpaper recieved from KeyguardProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->-$$Nest$mcropBitmap(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Caught Exception while fetching wallpaper from KeyguardProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "NotiPreviewPreferenceController"

    const-string/jumbo v1, "set lockscreen notification preview wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->-$$Nest$fgetmNotificationPreview(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->-$$Nest$fgetmNotificationPreview(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/widget/ImageView;

    move-result-object p1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController$KeyguardWallpaperLoadTask;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;->-$$Nest$fgetmNotificationPreview(Lcom/samsung/android/settings/lockscreen/controller/NotiPreviewPreferenceController;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    return-void
.end method

.method public final onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
