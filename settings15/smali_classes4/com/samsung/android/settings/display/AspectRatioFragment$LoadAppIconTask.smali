.class public final Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final holder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

.field public final row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

.field public final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->holder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iput-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object v1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v2, v2, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHandler:Lcom/samsung/android/settings/display/AspectRatioFragment$6;

    new-instance v3, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
