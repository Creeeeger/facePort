.class public final Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Result;
.super Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallResult;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mThumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallResult;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Result;->mThumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "thumbnail_file_descriptor"

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Result;->mThumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method
