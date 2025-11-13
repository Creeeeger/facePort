.class public final Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mButtonColorFilter:Landroid/graphics/ColorFilter;

.field public final mContext:Landroid/content/Context;

.field public mDialogView:Landroid/view/View;

.field public final mIconColor:I

.field public final mPositiveButtonListener:Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;II)V
    .locals 1

    const v0, 0x7f14060a

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mPositiveButtonListener:Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog$$ExternalSyntheticLambda0;

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mButtonColorFilter:Landroid/graphics/ColorFilter;

    iput p4, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mIconColor:I

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0211

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7e1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a0412

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f080cad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mIconColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a0c24

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mPositiveButtonListener:Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mButtonColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a0243

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaSessionReleaseDialog;->mButtonColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
