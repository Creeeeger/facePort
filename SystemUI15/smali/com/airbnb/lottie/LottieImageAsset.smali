.class public final Lcom/airbnb/lottie/LottieImageAsset;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public final fileName:Ljava/lang/String;

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final width:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    iput p2, p0, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    iput-object p3, p0, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    return-void
.end method
