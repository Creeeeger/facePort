.class public final Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIconInfo:Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;

.field public final synthetic this$0:Landroidx/apppickerview/widget/AppPickerIconLoader;


# direct methods
.method public constructor <init>(Landroidx/apppickerview/widget/AppPickerIconLoader;Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;->this$0:Landroidx/apppickerview/widget/AppPickerIconLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;->mIconInfo:Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;->this$0:Landroidx/apppickerview/widget/AppPickerIconLoader;

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;->mIconInfo:Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->activityName:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p0, v1}, Landroidx/reflect/app/SeslApplicationPackageManagerReflector;->semGetActivityIconForIconTray(Ljava/lang/Object;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_1

    :try_start_0
    iget-object p1, p1, Landroidx/apppickerview/widget/AppPickerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p0, v0}, Landroidx/reflect/app/SeslApplicationPackageManagerReflector;->semGetApplicationIconForIconTray(Ljava/lang/Object;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_1

    :try_start_1
    iget-object p1, p1, Landroidx/apppickerview/widget/AppPickerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;->mIconInfo:Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->imageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
