.class public final Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final holder:Ljava/lang/Object;

.field public final row:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->holder:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->row:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;

    iget-object v0, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->holder:Ljava/lang/Object;

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iget-object v0, v0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->holder:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;

    iget-object v0, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->holder:Ljava/lang/Object;

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iget-object v0, v0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->row:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->row:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    iget-object v0, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherActivityInfo;->semGetBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->row:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    iget-object v1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v2, v2, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
