.class Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAppIconTask"
.end annotation


# instance fields
.field private holder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

.field private row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

.field final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetholder(Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->holder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->holder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    .line 705
    iput-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 710
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object v1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 713
    iget-object v2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask$1;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
