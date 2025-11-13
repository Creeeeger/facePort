.class public final Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;
.super Landroidx/picker/loader/CachedLoader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/picker/loader/DataLoaderImpl;


# direct methods
.method public constructor <init>(Landroidx/picker/loader/DataLoaderImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;->this$0:Landroidx/picker/loader/DataLoaderImpl;

    invoke-direct {p0}, Landroidx/picker/loader/CachedLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final createValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Landroidx/picker/model/AppInfo;

    iget-object p0, p0, Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;->this$0:Landroidx/picker/loader/DataLoaderImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, " IllegalAccessException"

    const-string v3, " IllegalArgumentException"

    const-string v4, " InvocationTargetException"

    const-string v5, "SeslBaseReflector"

    const-string v6, "android.app.ApplicationPackageManager"

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    iget-object p0, p0, Landroidx/picker/loader/DataLoaderImpl;->packageManagerHelper:Landroidx/picker/helper/PackageManagerHelper;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    iget v11, p1, Landroidx/picker/model/AppInfo;->user:I

    move-object v12, p0

    check-cast v12, Landroidx/picker/helper/PackageManagerHelperImpl;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v0, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v0}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    move-result-object v0

    new-array v8, v8, [Ljava/lang/Class;

    const-class v10, Landroid/content/ComponentName;

    aput-object v10, v8, v7

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v1

    const-string v7, "semGetActivityIconForIconTray"

    invoke-static {v6, v7, v8}, Landroidx/reflect/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v13, v7}, [Ljava/lang/Object;

    move-result-object v7

    :try_start_0
    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v2, v4, v5, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v2, v3, v5, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v3, v2, v5, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_0
    move-object v0, v9

    :goto_1
    instance-of v2, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_0
    move-object v0, v9

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    iget p1, p1, Landroidx/picker/model/AppInfo;->user:I

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, p1, v0}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_1
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    :catch_3
    :goto_3
    move-object v0, v9

    goto :goto_7

    :cond_1
    iget-object v0, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget v10, p1, Landroidx/picker/model/AppInfo;->user:I

    move-object v11, p0

    check-cast v11, Landroidx/picker/helper/PackageManagerHelperImpl;

    invoke-virtual {v11, v10, v0}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    move-result-object v10

    new-array v8, v8, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v8, v7

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v1

    const-string v7, "semGetApplicationIconForIconTray"

    invoke-static {v6, v7, v8}, Landroidx/reflect/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    :try_start_2
    invoke-virtual {v6, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v2, v4, v5, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_4

    :catch_5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v2, v3, v5, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_4

    :catch_6
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v3, v2, v5, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_4
    move-object v0, v9

    :goto_5
    instance-of v2, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_6

    :cond_2
    move-object v0, v9

    :goto_6
    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroidx/picker/model/AppInfo;->user:I

    invoke-virtual {v11, p1, v0}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_3
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :cond_3
    :goto_7
    if-nez v0, :cond_4

    move-object p1, p0

    check-cast p1, Landroidx/picker/helper/PackageManagerHelperImpl;

    iget-object p1, p1, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    const v0, 0x7f0811be

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_4
    check-cast p0, Landroidx/picker/helper/PackageManagerHelperImpl;

    iget-object p1, p0, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070c94

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :try_start_4
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p1, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_7

    move-object v0, v1

    goto :goto_8

    :catch_7
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_8
    return-object v0
.end method
