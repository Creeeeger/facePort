.class public final Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Result;
.super Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallResult;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mScreenshotFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallResult;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Result;->mScreenshotFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Result;->mScreenshotFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    const-string v1, "image_file_descriptor"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method
