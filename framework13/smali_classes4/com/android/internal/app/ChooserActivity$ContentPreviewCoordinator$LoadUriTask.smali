.class Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadUriTask"
.end annotation


# instance fields
.field public final blacklist mBmp:Landroid/graphics/Bitmap;

.field public final blacklist mExtraCount:I

.field public final blacklist mImageResourceId:I

.field public blacklist mMainPreviewTitle:Ljava/lang/String;

.field public blacklist mMainPreviewTitleId:I

.field public blacklist mSubPreviewTitle:Ljava/lang/String;

.field public blacklist mSubPreviewTitleId:I

.field public final blacklist mUri:Landroid/net/Uri;

.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
    .param p2, "imageResourceId"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extraCount"    # I
    .param p5, "bmp"    # Landroid/graphics/Bitmap;

    .line 881
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitleId:I

    .line 867
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitleId:I

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitle:Ljava/lang/String;

    .line 869
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitle:Ljava/lang/String;

    .line 882
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mImageResourceId:I

    .line 883
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mUri:Landroid/net/Uri;

    .line 884
    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    .line 885
    iput-object p5, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    .line 886
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;ILandroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
    .param p2, "imageResourceId"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extraCount"    # I
    .param p5, "bmp"    # Landroid/graphics/Bitmap;
    .param p6, "mainPreviewTitleId"    # I
    .param p7, "subPreviewTitleId"    # I
    .param p8, "mainPreviewTitle"    # Ljava/lang/String;
    .param p9, "subPreviewTitle"    # Ljava/lang/String;

    .line 873
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;ILandroid/graphics/Bitmap;)V

    .line 874
    iput p6, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitleId:I

    .line 875
    iput p7, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitleId:I

    .line 876
    iput-object p8, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitle:Ljava/lang/String;

    .line 877
    iput-object p9, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitle:Ljava/lang/String;

    .line 878
    return-void
.end method
