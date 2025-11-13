.class public final synthetic Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask$$ExternalSyntheticLambda0;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask$$ExternalSyntheticLambda0;->f$2:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->holder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iget-object v2, v2, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->holder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iget-object v0, v0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
