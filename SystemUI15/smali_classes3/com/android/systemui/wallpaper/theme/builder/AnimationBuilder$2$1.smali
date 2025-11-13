.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public final synthetic this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

.field public final synthetic val$sequence:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iput p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->val$sequence:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mApkResources:Landroid/content/res/Resources;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mImageSetIds:[I

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->val$sequence:I

    aget p1, p1, v1

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->val$sequence:I

    iput p0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->preSequence:I

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
