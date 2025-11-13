.class Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask$1;
.super Ljava/lang/Object;
.source "CameraCutoutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;

.field final synthetic val$appName:Ljava/lang/CharSequence;

.field final synthetic val$icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask$1;->this$1:Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;

    iput-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask$1;->val$icon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask$1;->val$appName:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask$1;->this$1:Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->-$$Nest$fgetholder(Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask$1;->val$icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask$1;->this$1:Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->-$$Nest$fgetholder(Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppLabel()Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask$1;->val$appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
